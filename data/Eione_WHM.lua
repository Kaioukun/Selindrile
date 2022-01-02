function get_sets()
    sets.Idle = {
        main = "Daybreak",
        sub = "Genmei Shield",
        ammo = "Staunch Tathlum",
        head = "Nyame Helm",
        body = "Theo. Bliaut +3",
        hands = "Nyame Gauntlets",
        legs = "Assid. Pants +1",
        feet = "Nyame Sollerets",
        neck = "Twilight Torque",
        waist = "Carrier's Sash",
        left_ear = "Moonshade Earring",
        right_ear = "Hearty Earring",
        left_ring = "Defending Ring",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Alaunus's Cape",
            augments = {'Mag. Acc+20 /Mag. Dmg.+20', 'Damage taken-5%'}
        }
    }

    sets.JobAbility = {}
    sets.Precast = {}
    sets.Midcast = {}

    sets.JobAbility.Benediction = {
        body = "Piety Bliaut +3"
    }

    sets.Precast.FastCast = {
		ammo = "Incantor Stone",
		head = "Bunzi's Hat",
		body = "Ayanmo Corazza +2",
		legs = "Aya. Cosciales +2",
		feet = "Regal Pumps +1",
		neck = "Cleric's Torque",
		waist = "Witful Belt",
		left_ear = "Malignance Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Lebeche Ring",
		right_ring = "Kishar Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {'"Fast Cast"+10'}
		}
	}

    sets.Precast.Cure = {
		main = "Queller Rod",
		sub = "Sors Shield",
		ammo = "Incantor Stone",
		head = {
			name = "Vanya Hood",
			augments = {'"Cure" spellcasting time -7%'}
		},
		body = "Inyanga Jubbah +2",
		legs = "Ebers Pant. +1",
		feet = {
			name = "Vanya Clogs",
			augments = {'"Cure" spellcasting time -7%'}
		},
		neck = "Cleric's Torque",
		waist = "Witful Belt",
		left_ear = "Malignance Earring",
		right_ear = "Mendi. Earring",
		left_ring = "Kishar Ring",
		right_ring = "Lebeche Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {'"Fast Cast"+10'}
		}
	}

    sets.Midcast.Cure = {
		main = "Queller Rod",
		sub = "Sors Shield",
		head = "Ebers Cap +1",
		body = "Ebers Bliaut +1",
		hands = "Theophany Mitts +2",
		legs = "Ebers Pant. +1",
		feet = {
			name = "Vanya Clogs",
			augments = {'Healing magic skill +20'}
		},
		neck = "Cleric's Torque",
		left_ear = "Mendi. Earring",
		right_ear = "Regal Earring",
		left_ring = "Lebeche Ring",
		right_ring = "Janniston Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {'MND+20', 'MND+10'}
		}
	}

    sets.Midcast["Divine Veil"] = {
        main = "Yagrush"
    }

    sets.Midcast.Erase = set_combine(sets.Midcast["Divine Veil"], {
        neck = "Cleric's Torque"
    })

    sets.Midcast.Cursna = set_combine(sets.Midcast["Divine Veil"], {
        legs = "Th. Pantaloons +2",
        waist = "Alaunus's Cape"
    })

    sets.Midcast["Enhancing Magic"] = {
		main = {
			name = "Gada",
			augments = {'Enh. Mag. eff. dur. +5'}
		},
		sub = "Ammurapi Shield",
		head = "Ebers Cap +1",
		body = "Ebers Bliaut +1",
		hands = "Ebers Mitts +1",
		legs = "Piety Pantaln. +2",
		feet = "Theo. Duckbills +2",
		neck = "Melic Torque",
		waist = "Embla Sash",
		left_ear = "Andoaa Earring",
		right_ear = "Vor Earring",
		left_ring = "Stikini Ring",
		right_ring = "Stikini Ring +1",
		back = "Merciful Cape"
	}

    sets.Midcast["Shellra V"] = set_combine(sets.Midcast["Enhancing Magic"], {
        legs = "Piety pantaloons +2"
    })

    sets.Midcast.Regen = set_combine(sets.Midcast["Enhancing Magic"], {
		main = "Bolelabunga",
		sub = "Ammurapi Shield",
		head = "Inyanga Tiara +2",
		body = "Piety Bliaut +3",
		hands = "Ebers Mitts +1",
		legs = "Th. Pantaloons +2",
		feet = "Theo. Duckbills +2",
		waist = "Embla Sash"
	})

    sets.Midcast.Bar = {
		main = {
			name = "Gada",
			augments = {'Enh. Mag. eff. dur. +5'}
		},
		sub = "Ammurapi Shield",
		head = "Ebers Cap +1",
		body = "Ebers Bliaut +1",
		hands = "Ebers Mitts +1",
		legs = "Piety Pantaln. +2",
		feet = "Theo. Duckbills +2",
		neck = "Melic Torque",
		waist = "Embla Sash",
		left_ear = "Andoaa Earring",
		right_ear = "Vor Earring",
		left_ring = "Stikini Ring",
		right_ring = "Stikini Ring +1",
		back = "Merciful Cape"
	}

    sets.Midcast.Auspice = set_combine(sets.Midcast["Enhancing Magic"], {
        feet = "Ebers Duckbills +1"
    })
end

function is_magic(spell)
    return spell.type:endswith("Magic") or spell.type == "BardSong" or spell.type == "Ninjutsu" or spell.type == "Trust"
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

        if spell.english:startswith("Regen") then
            equip(sets.Midcast.Regen)
            debug("Midcast: Regen")

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
    debug("Idle")
    equip(sets.Idle)
end

function debug(s)
    windower.add_to_chat(123, s)
end
