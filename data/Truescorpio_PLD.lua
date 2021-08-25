local incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

function get_sets()
    sets.Idle = {
        ammo = "Staunch Tathlum",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Orunmila's Torque",
        waist = "Dynamic Belt +1",
        left_ear = "Etiolation Earring",
        right_ear = "Ethereal Earring",
        left_ring = "Shadow Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Rudianos's Mantle",
            augments = {'Enmity+10'}
        }
    }

    sets.Engaged = {mode = "Tank"}
    sets.Engaged.Tank = {
        ammo = "Staunch Tathlum",
        head = "Sakpata's Helm",
        body = "Sakpata's Plate",
        hands = "Sakpata's Gauntlets",
        legs = "Sakpata's Cuisses",
        feet = "Sakpata's Leggings",
        neck = "Loricate Torque +1",
        waist = "Dynamic Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Brutal Earring",
        left_ring = "Petrov Ring",
        right_ring = "Regal Ring",
        back = {
            name = "Rudianos's Mantle"
        }
    }

    -- Ammo: Sapience Orb
    -- Cryptic Earring
    -- Tuisto Earring
    -- Eihwaz Ring
    sets.Emnity = {
        equipable = true,
        head = "Loess Barbuta +1",
        body = "Souv. Cuirass +1",
        hands = {
            name = "Yorium Gauntlets",
            augments = {'Enmity+9'}
        },
        legs = "Souv. Diechlings +1",
        feet = {
            name = "Eschite Greaves",
            augments = {'HP+80', 'Enmity+7', 'Phys. dmg. taken -4'}
        },
        neck = "Moonlight Necklace",
        waist = "Creed Baudrier",
        left_ring = "Apeile Ring +1",
        back = {
            name = "Rudianos's Mantle",
            augments = {'Enmity+10'}
        }
    }

    -- JA Sets --
    sets.JobAbility = {}

    -- WS Sets --
    sets.WeaponSkill = {}
    sets.WeaponSkill["Atonement"] = sets.Emnity

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
        -- equipable = true
    }

    sets.Midcast["Enhancing Magic"].Phalanx =
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

    notice("No set for " .. spell.type .. "." .. spell.english)
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

    notice("No set for Midcast." .. spell.skill .. "." .. spell.english .. " using Emnity")
    equip(sets.Emnity)
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
    equip(sets.Engaged[sets.Engaged.mode])
end

function aftercast(spell, action)
    status_change(player.status)
end

function buff_change(name, gain, buff_details)
    if incapacitated_states:contains(name) then
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
        error("Error: No Engaged Mode Specified")
        return
    end

    local mode = args[1]:ucfirst()
    if not sets.Engaged[mode] then
        error("Error: Invalid Engaged Mode: " .. mode)
        return
    end

    sets.Engaged.mode = mode
    status_change(player.status)
    notice("Engaged Mode Set: " .. mode)
end

function is_magic(spell)
    return spell.type:endswith("Magic")
        or spell.type == "BardSong"
        or spell.type == "Ninjutsu"
        or spell.type == "Trust"
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
