function get_sets()
    incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

    sets.Idle = {}
    -- sets.Idle.Kite = {}

    sets.Engaged = {mode = "Tank"}
    sets.Engaged.Melee = {}
    sets.Engaged.Parry = {}
    sets.Engaged.Tank = {}
    sets.Engaged.Hybrid = {}

    sets.Emnity = {
        equipable = true,
        head = "Loess Barbuta",
        body = "Souv. Cuirass +1",
        legs = "Odyssean Cuisses",
        waist = "Creed Baudrier",
        back = {
            name = "Rudianos's Mantle",
            augments = {'Enmity+10'}
        }
    }

    sets.Rune = {}
    sets.Ward = {}

    -- JA Sets --
    sets.JobAbility = {}

    -- WS Sets --
    sets.WeaponSkill = {}
    -- sets.WeaponSkill['Hard Slash'] = {}

    sets.FastCast = {
        ammo = "Incantor Stone",
        legs = "Enif Cosciales",
        feet = "Odyssean Greaves",
        neck = "Orunmila's Torque",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        right_ring = "Kishar Ring"
    }

    sets.Midcast = {}

    sets.Midcast["Enhancing Magic"] = {
        equipable = true
    }

    sets.Midcast["Enhancing Magic"].Phalanx =
        set_combine(sets.Midcast["Enhancing Magic"], {})

    sets.Midcast["Enhancing Magic"].Flash =
        set_combine(sets.Midcast["Enhancing Magic"], {})

    sets.Midcast["Divine Magic"] = set_combine(sets.Emnity, {})
    sets.Midcast["Dark Magic"] = set_combine(sets.Emnity, {})
    sets.Midcast["Blue Magic"] = set_combine(sets.Emnity, {})
end

--[[
    Healing Breeze
    Refueling
    Cacoon
    Sheep Song
    Blank Gaze
    Geist Wall
    Jettatura
]]
function precast(spell, action)
    if incapacitated() then
        return
    end

    if (spell.english == "Spectral Jig" or spell.english == "Sneak") and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        return
    end

    if sets[spell.type] and sets[spell.type].equipable then
        equip(sets[spell.type])

        return
    end

    if is_magic(spell) then
        equip(sets.FastCast)
        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
end

function midcast(spell, action)
    if incapacitated() then
        return
    end

    if not is_magic(spell) then
        return
    end

    if sets["Midcast"][spell.skill] and sets["Midcast"][spell.skill][spell.english] then
        equip(sets["Midcast"][spell.skill][spell.english])

        return
    end

    if sets["Midcast"][spell.skill] and sets["Midcast"][spell.skill].equipable then
        equip(sets["Midcast"][spell.skill])

        return
    end

    debug("No set for Midcast." .. spell.skill .. "." .. spell.english)
end

function status_change(new, old)
    if incapacitated() then
        return
    end

    if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])
    end
end

function status_change_engaged()
    if sets.Engaged.mode == "Tank" and buffactive["Battuta"] then
        equip(sets.Engaged.Parry)
        return
    end

    equip(sets.Engaged[sets.Engaged.mode])
end

function aftercast(spell, action)
    status_change(player.status)
end

function buff_change(name, gain, buff_details)
    if incapacitated_states:contains(name) then
        status_change(player.status)
    end

    if name == "Battuta" then
        status_change(player.status)
    end
end

function incapacitated()
    if
        incapacitated_states:find(
            function(value)
                return buffactive[value] or false
            end
        )
     then
        equip(sets.Idle)
        return true
    end
end

function self_command(argsString)
    print(T(player).status)

    args = argsString:lower():split(" ")

    if _G["self_command_" .. args[1]] then
        _G["self_command_" .. args[1]](args:slice(2))
    end

    status_change(player.status)
end

function self_command_e(args)
    return self_command_engaged(args)
end

function self_command_engaged(args)
    if not args[1] then
        error(4, "Error: No Engaged Mode Specified")
        return
    end

    local mode = args[1]:ucfirst()
    if not sets.Engaged[mode] then
        error(4, "Error: Invalid Engaged Mode: " .. mode)
        return
    end

    sets.Engaged.mode = mode
    status_change(player.status)
    notice("Engaged Mode Set: " .. mode)
end

function is_magic(spell)
    return spell.type:endswith("Magic") or spell.type == "BardSong" or spell.type == "Ninjutsu" or spell.type == "Trust"
end

function notice(s)
    add_to_chat(121, s)
end

function error(s)
    add_to_chat(4, s)
end

function debug(s)
    if debugMode then
        notice(s)
    end
end
