function get_sets()
    incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

    sets.Idle = {
        mode = "Refresh"
    }
    sets.Idle.Refresh = {
        main = "Idris",
        sub = "Ammurapi Shield",
        range = "Dunna",
        head = "Azimuth Hood +3",
        body = "Azimuth Coat +3",
        hands = "Azimuth Gloves +2",
        legs = "Nyame Flanchard",
        feet = "Geo. Sandals +1",
        neck = "Loricate Torque +1",
        waist = "Carrier's Sash",
        left_ear = "Odnowa Earring +1",
        right_ear = "Etiolation Earring",
        left_ring = "Defending Ring",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Nantosuelta's Cape",
            augments = {'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'INT+10', '"Mag.Atk.Bns."+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.Idle.Dt = set_combine(sets.Idle.Refresh, {
        main = "Malignance Pole",
        range = "Dunna",
        neck = "Twilight Torque",
        left_ear = "Genmei Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Defending Ring",
        right_ring = "Sheltered Ring"
    })
    sets.Idle.Pet = {
        main = "Idris",
        sub = "Ammurapi Shield",
        range = "Dunna",
        head = "Azimuth Hood +3",
        body = "Azimuth Coat +3",
        hands = "Geo. Mitaines +3",
        legs = "Nyame Flanchard",
        feet = "Bagua Sandals +1",
        neck = "Loricate Torque +1",
        waist = "Carrier's Sash",
        left_ear = "Odnowa Earring +1",
        right_ear = "Etiolation Earring",
        left_ring = "Defending Ring",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Nantosuelta's Cape",
            augments = {'HP+60', 'Eva.+20 /Mag. Eva.+20', 'Mag. Evasion+10', 'Pet: "Regen"+10', 'Pet: "Regen"+5'}
        }
    }

    sets.Engaged = {
        mode = "Hybrid"
    }

    -- JA Sets --
    sets.JobAbility = {}

    -- WS Sets --
    sets.WeaponSkill = {}

    sets.FastCast = {
        main = {
            name = "Malevolence",
            augments = {'"Fast Cast"+5'}
        },
        ammo = "Sapience Orb",
        head = "Agwu's Cap",
        body = "Agwu's Robe",
        hands = "Agwu's Gages",
        legs = "Geo. Pants +1",
        feet = "Amalric Nails +1",
        neck = "Voltsurge Torque",
        waist = "Witful Belt",
        left_ear = "Malignance Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Prolix Ring",
        right_ring = "Kishar Ring",
        back = "Fi Follet Cape +1",
    }

    sets["Enfeebling Magic"] = {}
    sets["Enfeebling Magic"]["Dispelga"] = set_combine(
        sets.FastCast,
        {main="Daybreak"}
    )

    sets.Midcast = {}

    sets.Midcast["Healing Magic"] = {}
    sets.Midcast["Healing Magic"].Cure = {
        main = "Daybreak",
        sub = "Genmei Shield",
        range = "Dunna",
        head = {
            name = "Vanya Hood",
            augments = {
                'Healing magic skill +20',
                '"Cure" spellcasting time -7%',
                'Magic dmg. taken -3'
            }
        },
        body = "Geomancy Tunic +1",
        hands = "Telchine Gloves",
        legs = "Bagua Pants +1",
        feet = {
            name = "Vanya Clogs",
            augments = {
                'Healing magic skill +20',
                '"Cure" spellcasting time -7%',
                'Magic dmg. taken -3'
            }
        },
        neck = "Henic Torque",
        waist = "Gishdubar Sash",
        left_ear = "Malignance Earring",
        right_ear = "Regal Earring",
        left_ring = "Janniston Ring",
        right_ring = "Sirona's Ring"
    }
    sets.Midcast["Healing Magic"]["Cure II"] = sets.Midcast["Healing Magic"].Cure
    sets.Midcast["Healing Magic"]["Cure III"] = sets.Midcast["Healing Magic"].Cure
    sets.Midcast["Healing Magic"]["Cure IV"] = sets.Midcast["Healing Magic"].Cure

    sets.Midcast["Enhancing Magic"] = {
        equipable = true,
        head = "Telchine Cap",
        body = "Telchine Chas.",
        hands = "Telchine Gloves",
        legs = "Telchine Braconi",
        feet = "Geo. Sandals +1",
        waist = "Gishdubar Sash"
    }

    sets.Midcast["Enfeebling Magic"] = {
        equipable = true,
        sub = "Ammurapi Shield",
        range = "Dunna",
        head = "Geo. Galero +1",
        body = "Geo. Tunic +1",
        hands = "Geo. Mitaines +3",
        legs = "Geo. Pants +1",
        feet = "Geo. Sandals +1",
        neck = "Bagua Charm +2",
        waist = "Luminary Sash",
        left_ear = "Malignance Earring",
        right_ear = "Regal Earring",
        left_ring = "Kishar Ring",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Nantosuelta's Cape",
            augments = {'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'INT+10', '"Mag.Atk.Bns."+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Midcast["Enfeebling Magic"]["Dispelga"] = set_combine(
        sets.Midcast["Enfeebling Magic"],
        {main="Daybreak"}
    )

    sets.Midcast["Divine Magic"] = {}

    sets.Midcast["Dark Magic"] = {
        equipable = true,
        main = "Idris",
        sub = "Ammurapi Shield",
        range = "Dunna",
        head = "Geo. Galero +1",
        body = "Geomancy Tunic +1",
        hands = "Geo. Mitaines +3",
        legs = "Geomancy Pants +1",
        feet = "Geo. Sandals +1",
        neck = "Bagua Charm +1",
        waist = "Luminary Sash",
        left_ear = "Etiolation Earring",
        right_ear = "Malignance Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Nantosuelta's Cape",
            augments = {'Eva.+20 /Mag. Eva.+20', 'Pet: "Regen"+10', 'Pet: "Regen"+5'}
        }
    }

    sets.Midcast["Elemental Magic"] = {
        main = "Bunzi's Rod",
        sub = "Ammurapi Shield",
        head = "Agwu's Cap",
        body = "Amalric Doublet +1",
        hands = "Agwu's Gages",
        legs = "Agwu's Slops",
        feet = "Azimuth Gaiters +3",
        neck = "Sibyl Scarf",
        waist = "Skrymir Cord +1",
        left_ear = "Malignance Earring",
        right_ear = "Azimuth Earring +1",
        left_ring = "Acumen Ring",
        right_ring = "Shiva Ring +1",
        back = {
            name = "Nantosuelta's Cape",
            augments = {'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'INT+10', '"Mag.Atk.Bns."+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Geomancy = {
        equipable = true,
        main = "Idris",
        range = "Dunna",
        head = "Azimuth Hood +3",
        body = "Bagua tunic +1",
        hands = "Shrieker's Cuffs",
        legs = "Bagua Pants +1",
        feet = "Azimuth Gaiters +3",
        neck = "Bagua Charm +1",
        left_ear = "Magnetic Earring",
        right_ear = "Calamitous Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        back = "Nantosuelta's Cape"
    }

    sets.JobAbility = {}
    sets.JobAbility.Bolster = {body = "Bagua tunic +1"}
end

function precast(spell, action)
    if incapacitated() then
        return
    end

    if (spell.english == "Spectral Jig" or spell.english == "Sneak") and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    notice(spell.skill .. spell.english)

    if sets[spell.skill] and sets[spell.skill][spell.english] then
        equip(sets[spell.skill][spell.english])

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

    notice("Mid - " .. spell.english .. " > " .. spell.target.name)

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
    return spell.action_type == "Magic"
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
