function get_sets()
    sets.Idle = {
        main = "Mpaca's Staff",
        sub = "Mensch Strap +1",
        ammo = "Homiliary",
        head = "Nyame Helm",
        body = "Ebers Bliaut +3",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Loricate Torque +1",
        waist = "Fucho-no-Obi",
        left_ear = "Genmei Earring",
        right_ear = "Ebers Earring +2",
        left_ring = "Stikini Ring +1",
        right_ring = "Defending Ring",
        back = {
            name = "Alaunus's Cape",
            augments = {'Phys. dmg. taken-10%'}
        }
    }

    sets.JobAbility = {}
    sets.Precast = {}
    sets.Midcast = {}

    -- sets.JobAbility.Benediction = {
    --     body = "Piety Bliaut +3"
    -- }

    sets.Precast.FastCast = {
        main = "Mpaca's Staff",
        ammo = "Impatiens",
        head = "Bunzi's Hat",
        body = "Inyanga Jubbah +2",
        legs = "Aya. Cosciales +2",
        neck = "Clr. Torque +2",
        waist = "Witful Belt",
        left_ear = "Loquac. Earring",
        right_ear = "Malignance Earring",
        left_ring = "Kishar Ring",
        right_ring = "Prolix Ring",
        back = "Fi Follet Cape +1"
    }

    sets.Precast.Cure = {
        main = "Mpaca's Staff",
        ammo = "Impatiens",
        head = "Bunzi's Hat",
        body = "Inyanga Jubbah +2",
        legs = "Aya. Cosciales +2",
        neck = "Clr. Torque +2",
        waist = "Witful Belt",
        left_ear = "Loquac. Earring",
        right_ear = "Malignance Earring",
        left_ring = "Kishar Ring",
        right_ring = "Prolix Ring",
        back = "Fi Follet Cape +1"
    }

    sets.Midcast.Cure = {
        main = "Chatoyant Staff",
        head = "Kaykaus Mitra +1",
        body = "Ebers Bliaut +3",
        hands = "Kaykaus Cuffs +1",
        legs = "Ebers Pant. +3",
        feet = "Kaykaus Boots +1",
        neck = "Clr. Torque +2",
        left_ear = "Glorious Earring",
        left_ring = "Warp Ring",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Alaunus's Cape",
            augments = {'MND+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'MND+10', 'Enmity-10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Midcast.Curaga = set_combine(
        sets.Midcast.Cure,
        {
            -- body = "Theo. Bliaut +3",
        }
    )

    sets.Midcast["Divine Veil"] = {
        main = "Yagrush",
        head = "Ebers Cap +3",
        neck = "Clr. Torque +2",
        back = "Alaunus's Cape"
    }

    sets.Midcast.Cursna = {
        main = "Yagrush",
        ammo = "Hasty Pinion +1",
        head = "Vanya Hood",
        body = "Ebers Bliaut +3",
        hands = "Fanatic Gloves",
        legs = "Th. Pantaloons +2",
        feet = "Vanya Clogs",
        neck = "Malison Medallion",
        waist = "Bishop's Sash",
        right_ear = "Meili Earring",
        left_ring = "Haoma's Ring",
        right_ring = "Menelaus's Ring",
        back = {
            name = "Alaunus's Cape",
            augments = {'MND+20', 'Eva.+20 /Mag. Eva.+20', 'MND+10', '"Cure" potency +10%', 'Damage taken-5%'}
        }
    }

    sets.Midcast["Enhancing Magic"] = {
        sub = "Ammurapi Shield",
        head = "Telchine Cap",
        body = "Telchine Chas.",
        hands = "Telchine Gloves",
        legs = "Telchine Braconi",
        feet = "Telchine Pigaches",
        waist = "Embla Sash"
    }

    sets.Midcast["Shellra V"] = set_combine(sets.Midcast["Enhancing Magic"], {
        legs = "Piety pantaloons +1"
    })

    -- sets.Midcast.Regen = set_combine(sets.Midcast["Enhancing Magic"], {
	-- 	main = "Bolelabunga",
	-- 	sub = "Ammurapi Shield",
	-- 	head = "Inyanga Tiara +2",
	-- 	body = "Piety Bliaut +3",
	-- 	hands = "Ebers Mitts +2",
	-- 	legs = "Th. Pantaloons +2",
	-- 	feet = "Theo. Duckbills +2",
	-- 	waist = "Embla Sash"
	-- })

    sets.Midcast.Aquaveil = set_combine(sets.Midcast["Enhancing Magic"], {
        head = "Chironic Hat",
        legs = "Shedir Seraweels",
        waist = "Emphatikos Rope"
    })

    sets.Midcast.Bar = {
        head = "Ebers Cap +3",
        body = "Ebers Bliaut +3",
        hands = "Ebers Mitts +3",
        legs = "Piety Pantaln. +1",
        feet = "Ebers Duckbills +3",
        left_ear = "Andoaa Earring",
        right_ear = "Mimir Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        back = "Alaunus's Cape"
    }

    sets.Midcast.Auspice = set_combine(sets.Midcast["Enhancing Magic"], {
        feet = "Ebers Duckbills +2"
    })
end

function is_magic(spell)
    return spell.action_type == "Magic"
end

function precast(spell, action)
    if is_magic(spell) then
        if buffactive.silence then
            cancel_spell()
            send_command('@input /item "Echo Drops" <me>')
            debug(spell.name .. " Canceled: [Silence has fallen]")
            return
        end

        equip(sets.Precast.FastCast)

        if spell.english:startswith("Cur") and spell.english ~= "Cursna" then
            equip(sets.Precast.Cure)
            debug("Precast: Cure")
            return
        end
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        debug("Precast: " .. spell.type .. " " .. spell.english)

        return
    end
end

function midcast(spell, action)
    if "Trust" == spell.type then
        return
    end

    if is_magic(spell) then
        if sets.Midcast[spell.english] then
            equip(sets.Midcast[spell.english])
            debug("Midcast: " .. spell.english)

            return
        end

        if spell.english:endswith("na") then
            equip(sets.Midcast["Divine Veil"])
            debug("Midcast: Devine Veil")

            return
        end

        if spell.english:startswith("Cura") then
            equip(sets.Midcast.Curaga)
            debug("Midcast: Curaga")

            return
        end

        if spell.english:startswith("Cure") then
            equip(sets.Midcast.Cure)
            debug("Midcast: Cure")

            return
        end

        if spell.english:startswith("Bar") then
            equip(sets.Midcast.Bar)
            debug("Midcast: Bar")

            return
        end

        if sets.Midcast[spell.skill] then
            equip(sets.Midcast[spell.skill])
            debug("Midcast Skill: " .. spell.skill)
        end
    end
end

function status_change(new, old)
    if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])
    end
end

function aftercast(spell, action)
    -- print("Idle")
    equip(sets.Idle)
end

function debug(s)
    -- windower.add_to_chat(123, s)
end
