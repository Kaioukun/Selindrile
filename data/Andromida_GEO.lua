function get_sets()
    incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

    sets.Idle = {
        mode = "Refresh"
    }
    sets.Idle.Refresh = {
        main = "Idris",
        sub = "Genmei Shield",
        range = "Dunna",
        head = "Azimuth Hood +2",
        body = "Jhakri Robe +2",
        hands = "Geo. Mitaines +2",
        legs = "Nyame Flanchard",
        feet = "Geo. Sandals +2",
        neck = "Bagua Charm +2",
        waist = "Luminary Sash",
        left_ear = "Moonshade Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Defending Ring",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Nantosuelta's Cape",
            augments = {'Eva.+20 /Mag. Eva.+20', 'Pet: "Regen"+10', 'Pet: "Regen"+5'}
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
        sub = "Genmei Shield",
        range = "Dunna",
        head = "Azimuth Hood +2",
        body = "Jhakri Robe +2",
        hands = "Geo. Mitaines +2",
        legs = "Nyame Flanchard",
        feet = "Bagua Sandals +1",
        neck = "Bagua Charm +2",
        waist = "Luminary Sash",
        left_ear = "Moonshade Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Defending Ring",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Nantosuelta's Cape",
            augments = {'Eva.+20 /Mag. Eva.+20', 'Pet: "Regen"+10', 'Pet: "Regen"+5'}
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
        range = "Dunna",
        body = "Shango Robe",
        legs = "Geomancy Pants +2",
        feet = "Merlinic Crackows",
        neck = "Voltsurge Torque",
        waist = "Witful Belt",
        left_ear = "Malignance Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Lebeche Ring",
        right_ring = "Kishar Ring"
    }

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
        body = "Geomancy Tunic +2",
        hands = {
            name = "Telchine Gloves",
            augments = {'Enh. Mag. eff. dur. +7'}
        },
        legs = "Bagua Pants",
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
        head = {
            name = "Telchine Cap",
            augments = {'Enh. Mag. eff. dur. +7'}
        },
        body = {
            name = "Telchine Chas.",
            augments = {'Enh. Mag. eff. dur. +8'}
        },
        hands = {
            name = "Telchine Gloves",
            augments = {'Enh. Mag. eff. dur. +7'}
        },
        legs = {
            name = "Telchine Braconi",
            augments = {'Enh. Mag. eff. dur. +9'}
        },
        feet = "Geo. Sandals +2",
        waist = "Gishdubar Sash"
    }

    sets.Midcast["Divine Magic"] = {}

    sets.Midcast["Dark Magic"] = {
        equipable = true,
        main = "Idris",
        sub = "Ammurapi Shield",
        range = "Dunna",
        head = "Geo. Galero +2",
        body = "Geomancy Tunic +2",
        hands = "Geo. Mitaines +2",
        legs = "Geomancy Pants +2",
        feet = "Geo. Sandals +2",
        neck = "Bagua Charm +2",
        waist = "Luminary Sash",
        left_ear = "Etiolation Earring",
        right_ear = "Malignance Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring",
        back = {
            name = "Nantosuelta's Cape",
            augments = {'Eva.+20 /Mag. Eva.+20', 'Pet: "Regen"+10', 'Pet: "Regen"+5'}
        }
    }

    sets.Midcast["Elemental Magic"] = {
        equipable = true,
        main = "Daybreak",
        sub = "Ammurapi Shield",
        range = "Dunna",
        head = "Jhakri Coronal +2",
        body = "Jhakri Robe +2",
        hands = "Jhakri Cuffs +2",
        legs = "Jhakri Slops +2",
        feet = "Jhakri Pigaches +2",
        neck = "Sanctity Necklace",
        waist = "Eschan Stone",
        left_ear = "Malignance Earring",
        right_ear = "Friomisi Earring",
        left_ring = "Stikini Ring", -- "Strendu Ring",
        right_ring = "Stikini Ring", -- "Acuman Ring",
        back = "Nantosuelta's Cape"
    }

    sets.Geomancy = {
        equipable = true,
        main = "Idris",
        range = "Dunna",
        head = "Azimuth Hood +2",
        body = "Bagua tunic",
        hands = "Shrieker's Cuffs",
        legs = "Bagua Pants",
        feet = "Azimuth Gaiters +2",
        neck = "Bagua Charm +2",
        left_ear = "Magnetic Earring",
        right_ear = "Calamitous Earring",
        left_ring = "Stikini Ring",
        right_ring = "Stikini Ring",
        back = "Nantosuelta's Cape"
    }

    sets.JobAbility = {}
    sets.JobAbility.Bolster = {body = "Bagua tunic"}
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
