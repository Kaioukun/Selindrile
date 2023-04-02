local incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

local modes = {
    Idle = "Normal",
    Engaged = "Normal"
}

function get_sets()
    sets.Idle = {}
    sets.Idle.Normal = {
        main = "Daybreak",
        sub = "Ammurapi Shield",
        ammo = "Homiliary",
        head = "Bunzi's Hat",
        body = "Ayanmo Corazza +2",
        hands = "Kaykaus Cuffs +1",
        legs = "Kaykaus Tights +1",
        feet = "Kaykaus Boots +1",
        neck = "Voltsurge Torque",
        waist = "Witful Belt",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Warp Ring",
        right_ring = "Stikini Ring +1",
        back = "Swith Cape +1"
    }
end

function precast(spell, action)
    print("Pre " .. spell.action_type)
    if incapacitated() then
        return
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        print(spell.type, spell.english)
        equip(sets[spell.type][spell.english])

        return
    end

    if sets[spell.type] and sets[spell.type].equipable then
        equip(sets[spell.type])

        return
    end

    if spell.action_type == "Magic" then
        equip(sets.FastCast)
        return
    end
end

function midcast(spell, action)
    if incapacitated() then
        return
    end

    if spell.action_type ~= "Magic" then
        return
    end

    if sets["Midcast"][spell.skill] and sets["Midcast"][spell.skill][spell.english] then
        equip(sets["Midcast"][spell.skill][spell.english])

        return
    end

    if spell.skill == "Enhancing Magic" then
        if spell.target.id == player.id then
            equip(sets["Midcast"]["Enhancing Magic"]["Self"])
            return
        end

        equip(sets["Midcast"]["Enhancing Magic"]["Other"])
        return
    end

    if sets["Midcast"][spell.skill] and sets["Midcast"][spell.skill].equipable then
        equip(sets["Midcast"][spell.skill])

        return
    end

    equip(sets.SIRD)
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

function status_change_idle()
    equip(sets.Idle[modes.Idle])
end

function status_change_engaged()
    equip(sets.Engaged[modes.Engaged])
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
    if incapacitated_states:find(function(value)
        return buffactive[value] or false
    end) then
        equip(sets.Idle.Turtle)
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

    modes.Engaged = mode
    status_change(player.status)
    notice("Engaged Mode Set: " .. mode)
end
