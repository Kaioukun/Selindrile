function get_sets()
    incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

    sets.Idle = {
        ammo = "Aurgelmir Orb",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Sam. Nodowa +2",
        waist = "Ioskeha Belt +1",
        left_ear = "Cessance Earring",
        right_ear = "Brutal Earring",
        left_ring = "Flamma Ring",
        right_ring = "Rajas Ring",
        back = {
            name = "Smertrios's Mantle",
            augments = {
                "DEX+20",
                "Accuracy+20 Attack+20",
                "DEX+10",
                '"Dbl.Atk."+10',
                "Phys. dmg. taken-10%"
            }
        }
    }

    sets.Engaged = {mode = "Melee"}
    sets.Engaged.Melee = {
        main = "Masamune",
        sub = "Utu Grip",
        ammo = "Aurgelmir Orb",
        head = "Flam. Zucchetto +2",
        body = "Ken. Samue +1",
        hands = "Wakido Kote +3",
        legs = "Ken. Hakama +1",
        feet = "Flam. Gambieras +2",
        neck = "Sam. Nodowa +2",
        waist = "Ioskeha Belt +1",
        left_ear = "Cessance Earring",
        right_ear = "Brutal Earring",
        left_ring = "Flamma Ring",
        right_ring = "Rajas Ring",
        back = {
            name = "Smertrios's Mantle",
            augments = {
                "DEX+20",
                "Accuracy+20 Attack+20",
                "DEX+10",
                '"Dbl.Atk."+10',
                "Phys. dmg. taken-10%"
            }
        }
    }
    sets.Engaged.Hybrid = {
        main = "Masamune",
        sub = "Utu Grip",
        ammo = "Aurgelmir Orb",
        head = "Mpaca's Cap",
        body = "Mpaca's Doublet",
        hands = "Mpaca's Gloves",
        legs = "Mpaca's Hose",
        feet = "Mpaca's Boots",
        neck = {
            name = "Sam. Nodowa +2",
            augments = {'Path: A'}
        },
        waist = "Ioskeha Belt +1",
        left_ear = "Cessance Earring",
        right_ear = "Brutal Earring",
        left_ring = "Flamma Ring",
        right_ring = "Rajas Ring",
        back = {
            name = "Smertrios's Mantle",
            augments = {
                "DEX+20",
                "Accuracy+20 Attack+20",
                "DEX+10",
                '"Dbl.Atk."+10',
                "Phys. dmg. taken-10%"
            }
        }
    }

    -- JA Sets --
    sets.JobAbility = {}
    sets.JobAbility.Meditate = {
        head = "Wakido Kabuto +1",
        hands = "Sakonji Kote +1",
        back = "Smertrios's Mantle"
    }

    -- WS Sets --
    sets.WeaponSkill = {
        equipable = true,
        main = "Masamune",
        sub = "Utu Grip",
        ammo = "Knobkierrie",
        head = {
            name = "Valorous Mask",
            augments = {
                "Attack+20",
                "Weapon skill damage +4%",
                "STR+7",
                "Accuracy+8"
            }
        },
        body = "Sakonji Domaru +3",
        hands = {
            name = "Valorous Mitts",
            augments = {
                "Attack+12",
                "Weapon skill damage +4%",
                "STR+10",
            }
        },
        legs = "Wakido Haidate +3",
        feet = {
            name = "Valorous Greaves",
            augments = {
                "Accuracy+8",
                "Weapon skill damage +4%",
                "STR+8",
                "Attack+10"
            }
        },
        neck = "Sam. Nodowa +2",
        waist = "Sailfi Belt +1",
        left_ear = "Thrud Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ifrit Ring +1",
        right_ring = "Karieyh Ring",
        back = {
            name = "Smertrios's Mantle",
            augments = {
                "STR+20",
                "Accuracy+20 Attack+20",
                "STR+10",
                "Weapon skill damage +10%",
                "Phys. dmg. taken-10%"
            }
        }
    }

    -- Magic Sets --
    sets.FastCast = {}
    sets.Midcast = {}
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
