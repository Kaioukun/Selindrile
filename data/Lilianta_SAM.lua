-- //gs c mode engaged normal
-- //gs c mode engaged pdf
-- //gs c mode engaged meva
-- //gs c mode engaged def
-- //gs c mode weaponskill str
-- //gs c mode weaponskill acc


local incapacitated_states = T {"stun", "petrification", "terror", "sleep"}
local modes = {
    Engaged = "Normal",
    WeaponSkill = "Str"
}

function get_sets()
    -- DT/Regain/Regen
    sets.Idle = {}

    sets.Engaged = {}

    sets.Engaged.Normal = {
        -- head = ""...
    }
    sets.Engaged.Pdt = {
        -- head = ""...
    }
    sets.Engaged.Meva = {
        -- head = ""...
    }
    sets.Engaged.Def = {
        -- head = ""...
    }

    -- JA Sets --
    sets.JobAbility = {}
    sets.JobAbility.Meditate = {
        head = "Wakido Kabuto +1",
        hands = "Sakonji Kote +1",
        back = "Smertrios's Mantle"
    }

    -- WS Sets --
    sets.WeaponSkill = {}
    sets.WeaponSkill["Tachi: Fudo"] = {}
    sets.WeaponSkill["Tachi: Fudo"].Str = {
        -- head = ""...
    }
    sets.WeaponSkill["Tachi: Fudo"].Acc = {}
    
    sets.WeaponSkill["Impulse Drive"] = {
        -- head = ""...
    }
    sets.WeaponSkill["Impulse Drive"].Str = {
        -- head = ""...
    }
    sets.WeaponSkill["Impulse Drive"].Acc = {
        -- head = ""...
    }
end

function precast(spell, action)
    if incapacitated() then
        return
    end

    if (spell.english == "Spectral Jig" or spell.english == "Sneak") and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        if modes[spell.type] then
            equip(sets[spell.type][spell.english][modes[spell.type]])
        end

        equip(sets[spell.type][spell.english])

        return
    end

    if sets[spell.type] and sets[spell.type].equipable then
        equip(sets[spell.type])

        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
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
    args = argsString:lower():split(" ")

    if _G["self_command_" .. args[1]] then
        _G["self_command_" .. args[1]](args:slice(2))
    end

    status_change(player.status)
end

function self_command_mode(args)
    if not args[1] then
        error("Error: No Mode Group Specified")
    end

    local modeGroup = args[1]:ucfirst()
    if modeGroup == "Weaponskill" then
        modeGroup = "WeaponSkill"
    end

    if not modes[modeGroup] then
        error("Error: Invalid Mode Group: " .. modeGroup)
    end

    if not args[2] then
        error("Error: No Mode Specified")
    end

    local modeName = args[2]

    if not sets[modeGroup][modeName] then
        error("Error: Invalid Mode: " + modeName)
    end

    modes[modeGroup] = modeName
    status_change(player.status)
    notice("Engaged Mode Set " .. modeGroup .. " " ..  modeName)
end

function notice(s)
    add_to_chat(121, s)
end

function error(s)
    add_to_chat(4, s)
end
