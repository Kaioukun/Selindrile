function get_sets()
    incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

    sets.Idle = {
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Comm. Charm +2",
        waist = "Sailfi Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Dedition Earring",
        left_ring = "Defending Ring",
        right_ring = "Ilabrat Ring",
        back = "Aptitude Mantle"
    }

    sets.Engaged = {
        ammo = "Chrono Bullet",
        head = "Malignance Chapeau",
        body = "Mummu Jacket +1",
        hands = "Meg. Gloves +2",
        legs = "Mummu Kecks +1",
        feet = "Mummu Gamash. +1",
        neck = {
            name = "Comm. Charm +2",
            augments = {'Path: A'}
        },
        waist = {
            name = "Sailfi Belt +1",
            augments = {'Path: A'}
        },
        left_ear = "Telos Earring",
        right_ear = "Cessance Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Petrov Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', '"Dual Wield"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Misc = {}
    sets.Misc.Ranged = {}

    sets.JobAbility = {}

    sets.JobAbility["Wild Card"] = {
        feet = "Lanun Bottes +3"
    }
    sets.JobAbility["Random Deal"] = {
        body = "Lanun Frac +3"
    }

    sets.WeaponSkill = {}
    sets.WeaponSkill["Savage Blade"] = {
        head = "Meghanada Visor +2",
        body = "Meg. Cuirie +2",
        hands = "Meg. Gloves +2",
        legs = "Meg. Chausses +2",
        feet = "Lanun Bottes +3",
        neck = {
            name = "Comm. Charm +2",
            augments = {'Path: A'}
        },
        waist = {
            name = "Sailfi Belt +1",
            augments = {'Path: A'}
        },
        left_ear = "Telos Earring",
        right_ear = {
            name = "Moonshade Earring",
            augments = {'Accuracy+4', 'TP Bonus +250'}
        },
        left_ring = "Ifrit Ring +1",
        right_ring = "Karieyh Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'Weapon skill damage +10%'}
        }
    }

    sets.WeaponSkill["Last Stand"] = {}
    sets.WeaponSkill["Detonator"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Slug Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Sniper Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Split Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Numbing Shot"] = sets.WeaponSkill["Last Stand"]

    sets.WeaponSkill["Wildfire"] = {}
    sets.WeaponSkill["Leaden Salute"] = {
        head = "Pixie Hairpin +1",
        body = {
            name = "Lanun Frac +3",
            augments = {'Enhances "Loaded Deck" effect'}
        },
        hands = {
            name = "Carmine Fin. Ga. +1",
            augments = {'Rng.Atk.+20', '"Mag.Atk.Bns."+12', '"Store TP"+6'}
        },
        legs = {
            name = "Herculean Trousers",
            augments = {'Mag. Acc.+3', '"Mag.Atk.Bns."+23', 'Mag. Acc.+20 "Mag.Atk.Bns."+20'}
        },
        feet = {
            name = "Lanun Bottes +3",
            augments = {'Enhances "Wild Card" effect'}
        },
        neck = {
            name = "Comm. Charm +2",
            augments = {'Path: A'}
        },
        waist = "Eschan Stone",
        left_ear = "Friomisi Earring",
        right_ear = {
            name = "Moonshade Earring",
            augments = {'Accuracy+4', 'TP Bonus +250'}
        },
        left_ring = "Dingir Ring",
        right_ring = "Karieyh Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {'AGI+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'AGI+10', 'Weapon skill damage +10%'}
        }
    }

    sets.CorsairRoll = {
        equipable = true,
        head = "Lanun Tricorne +3",
        hands = "Chasseur's Gants +1",
        legs = "Chas. Culottes +1",
        feet = "Chass. Bottes +1",
        neck = "Regal Necklace",
        right_ring = "Luzaf's Ring"
    }

    sets.CorsairShot = sets.WeaponSkill["Wildfire"]

    sets.Precast = {}
    sets.Precast.FastCast = {}

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

    notice("Midcast - " .. spell.skill .. " - " .. spell.english)

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

function status_change_idle(new, old)
    equip(sets.Idle[sets.Idle.mode])

    if pet.isvalid then
        equip(sets.Idle.Pet)
    end
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
