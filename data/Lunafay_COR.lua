function get_sets()
    incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

    sets.Idle = {
        head = "Malignance Chapeau",
        body = "Meg. Cuirie +1",
        hands = "Meg. Gloves +1",
        legs = "Meg. Chausses +1",
        feet = "Meg. Jam. +1",
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
        hands = "Meg. Gloves +1",
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
        back = "Aptitude Mantle"
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
    sets.WeaponSkill["Savage Blade"] = {}

    sets.WeaponSkill["Last Stand"] = {}
    sets.WeaponSkill["Detonator"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Slug Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Sniper Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Split Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Numbing Shot"] = sets.WeaponSkill["Last Stand"]

    sets.WeaponSkill["Wildfire"] = {}
    sets.WeaponSkill["Leaden Salute"] = {
        head = "Pixie Hairpin +1",
        body = "Lanun Frac +3",
        hands = {
            name = "Carmine Fin. Ga. +1",
            augments = {'Rng.Atk.+20', '"Mag.Atk.Bns."+12', '"Store TP"+6'}
        },
        legs = "Herculean Trousers",
        feet = "Lanun Bottes +3",
        neck = "Comm. Charm +2",
        waist = "Eschan Stone",
        left_ear = "Friomisi Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Dingir Ring",
        right_ring = "Karieyh Ring"
    }

    sets.CorsairRoll = {
        equipable = true,
        head = "Lanun Tricorne +1",
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
