function get_sets()
	sets.Idle = {
		main = {
			name = "Queller Rod",
			augments = {
				"Healing magic skill +15",
				'"Cure" potency +10%',
				'"Cure" spellcasting time -7%'
			}
		},
		sub = "Genmei Shield",
		ammo = "Staunch Tathlum",
		head = "Aya. Zucchetto +2",
		body = "Theo. Bliaut +3",
		hands = "Aya. Manopolas +2",
		legs = "Assiduity Pants +1",
		feet = "Aya. Gambieras +2",
		neck = "Cleric's Torque",
		waist = "Cascade Belt",
		left_ear = "Roundel Earring",
		right_ear = "Loquac. Earring",
		left_ring = "Defending Ring",
		right_ring = "Ayanmo Ring",
		back = {
			name = "Alaunus's Cape",
			augments = {
				"MND+20",
				"Mag. Acc+20 /Mag. Dmg.+20",
				
				"MND+5",
				'"Fast Cast"+10',
				"Damage taken-5%"
			}
		}
	}

	sets.JobAbility = {}
	sets.Precast = {}
	sets.Midcast = {}

	sets.JobAbility.Benediction = {
		body = "Piety Bliaut +3"
	}

	sets.Precast.Haste = {
		main="Bolelabunga",
		sub="Genbu shield",
		ammo="Incantor Stone",		
		head="Cath palug crown",
		neck="Cleric's torque",
		ear1="Loquacious earring",
		ear2="Malignance Earring",
		body="Inyanga jubbah +1",
		hands="Gendewitha gages +1",
		ring1="Kishar Ring",
		ring2="Prolix Ring",
		back="Perimede cape",
		waist="Witful belt",
		-- legs="Volte brais",
		-- feet="Volte boots"
	}

	sets.Precast.FastCast = {
		main="Sucellus",
		sub="Genbu shield",
		ammo="Incantor Stone",
		head="Cath palug crown",
		neck="Cleric's torque",
		ear1="Malignance earring",
		ear2="Enchanter Earring +1",
		body="Inyanga jubbah +1",
		hands="Gendewitha gages +1",
		ring1="Kishar Ring",
		-- ring2="Weatherspoon Ring",
		back="Alaunus's cape",
		-- waist="Embla sash",
		-- legs="Volte brais",
		-- feet="Navon crackows"
	}

	sets.Precast.Cure =
		set_combine(
		sets.Precast.FastCast,
		{
			main = "Queller Rod",
			sub = "Sors Shield",
			head = "Theophany Cap +3",
			neck = "Cleric's Torque",
			body = "Heka's Kalasiris",
			ear1 = "Nourish. Earring +1",
			legs = "Ebers Pantaloons +1",
			feet = "Hygieia clogs +1",
			back = {
				name = "Alaunus's Cape",
				augments = {
					"MND+20",
					"Mag. Acc+20 /Mag. Dmg.+20",
					"MND+5",
					'"Fast Cast"+10',
					"Damage taken-5%"
				}
			}
		}
	)

	sets.Midcast.Cure = {
		main = {
			name = "Queller Rod",
			augments = {
				"Healing magic skill +15",
				'"Cure" potency +10%',
				'"Cure" spellcasting time -7%'
			}
		}, -- 10/2
		sub = "Sors Shield", -- 3/0
		head = "Theophany Cap +3", -- 11/0
		neck = "Cleric's Torque", -- 5/0
		body = "Heka's Kalasiris", -- 15/0
		hands = "Theophany Mitts +2", -- 0/2
		legs = "Ebers Pantaloons +1",
		feet = "Ebers Duckbills +1",
		waist = "Cascade Belt",
		left_ear = "Nourish. Earring +1", -- 3/0
		back = {
			name = "Alaunus's Cape",
			augments = {
				"MND+20",
				"Eva.+20 /Mag. Eva.+20",
				"MND+10",
				'"Cure" potency +10%',
				"Damage taken-5%"
			}
		} -- 10/0
	}

	sets.Midcast["Divine Veil"] = {
		main = "Yagrush"
	}

	sets.Midcast.Erase =
		set_combine(
		sets.Midcast["Divine Veil"],
		{
			neck = "Cleric's Torque"
		}
	)

	sets.Midcast.Cursna =
		set_combine(
		sets.Midcast["Divine Veil"],
		{
			legs = "Th. Pantaloons +2",
			waist = "Alaunus's Cape"
		}
	)

	sets.Midcast["Enhancing Magic"] = {
		head = {name = "Telchine Cap", augments = {"Enh. Mag. eff. dur. +7"}},
		body = {name = "Telchine Chas.", augments = {"Enh. Mag. eff. dur. +8"}},
		hands = {name = "Telchine Gloves", augments = {"Enh. Mag. eff. dur. +7"}},
		legs = {name = "Telchine Braconi", augments = {"Enh. Mag. eff. dur. +9"}},
		feet = "Theo. Duckbills +2"
	}

	sets.Midcast["Shellra V"] =
		set_combine(
		sets.Midcast["Enhancing Magic"],
		{
			legs = "Piety pantaloons +2"
		}
	)

	sets.Midcast.Regen =
		set_combine(
		sets.Midcast["Enhancing Magic"],
		{
			body = "Piety Bliaut +3",
			hands = "Ebers Mitts +1",
			legs = "Th. Pantaloons +2"
		}
	)

	sets.Midcast.Bar =
		set_combine(
		sets.Midcast["Enhancing Magic"],
		{
			legs = "Piety pantaloons +2"
		}
	)

	sets.Midcast.Auspice =
		set_combine(
		sets.Midcast["Enhancing Magic"],
		{
			feet = "Ebers Duckbills +1"
		}
	)
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
