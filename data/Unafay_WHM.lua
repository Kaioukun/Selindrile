function get_sets()
	sets.Idle = {
	    main="Malignance Pole", --20
		sub="Oneiros Grip",
		ammo="Homiliary",
		head="Befouled Crown",
		body="Shamash Robe",
		hands="Bunzi's Gloves", --8
		legs="Volte Brais",
		feet="Bunzi's Sabots", --6
		neck={ name="Loricate Torque +1", augments={'Path: A',}}, --6
		waist="Fucho-no-Obi",
		left_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}},
		right_ear="Etiolation Earring",
		left_ring="Stikini Ring +1",
		right_ring="Defending Ring", --10
		back="Moonbeam Cape", --5
}
	sets.Resting = {
		main="Boonwell staff",
		sub="Oneiros grip",
		ammo="Homiliary",
		head="Befouled crown",
		neck="Bathy choker",
		ear1="Infused earring",
		ear2="Moonshade Earring",
		body="Piety bliaut +3",
		hands="Bunzi's gloves",
		ring1="Stikini ring +1",
		ring2="Stikini ring +1",
		back="Moonbeam cape",
		waist="Austerity belt +1",
		legs="Volte brais",
		feet="Nyame sollerets",
	}

	sets.JobAbility = {}

	sets.JobAbility.Benediction = {body = "Piety Bliaut +3"}
	sets.JobAbility.AfflatusSolace = {body = "Ebers Bliaut +2"}


	sets.Precast = {}

	sets.Precast.Haste = {
		main="Bolelabunga",
		sub="Genbu's shield",
		ammo="Incantor Stone",
		head="Cath palug crown",
		neck="Cleric's torque +1",
		ear1="Loquacious earring",
		ear2="Malignance Earring",
		body="Inyanga jubbah +2",
		hands="Gendewitha gages +1",
		ring1="Kishar Ring",
		ring2="Prolix Ring",
		back="Perimede cape",
		waist="Witful belt",
		legs="Volte brais",
		feet="Volte boots"}

	sets.Precast.FastCast =
		{main="C. Palug Hammer", --7
		sub="Genbu's shield",
		ammo="Sapience orb", --2
		head="Bunzi's hat", --10
		neck="Cleric's torque +1", --8
		ear1="Malignance earring", --4
		ear2="Mendi. Earring", --
		body="Inyanga jubbah +2", --10
		hands="Gendewitha gages +1", --7
		ring1="Kishar Ring", --4
		ring2="Weatherspoon Ring", --5
		back="Alaunus's cape", --10
		waist="Embla sash", --5
		legs="Volte brais", --8
		feet="Volte gaiters"} --6

	sets.Precast.Cure =
		{main="Sucellus", --5
		sub="Genbu's shield",
		ammo="Sapience orb", --2
		head="Bunzi's hat", --10
		neck="Cleric's torque +1", --8
		ear1="Malignance earring", --4
		ear2="Mendi. Earring", --
		body="Inyanga jubbah +2", --10
		hands="Gendewitha gages +1", --7
		ring1="Kishar Ring", --4
		ring2="Weatherspoon Ring", --5
		back="Alaunus's cape", --10
		waist="Embla sash", --5
		legs="Volte brais", --8
		feet="Volte gaiters"} --6

	sets.Midcast = {}

	sets.Midcast.Cure = {
		main="Daybreak",
		sub="Genbu's shield",
		ammo="Sapience orb",
		head="Vanya Hood",
		neck="Incanter's torque",
		ear1="Nourishing earring",
		ear2="Glorious earring",
		body="Ebers Bliaut +2",
		hands="Theophany mitts +3",
		ring1="Stikini ring +1",
		ring2="Sirona's Ring",
		back="Solemnity cape",
		waist="Embla sash",
		legs="Ebers pantaloons +2",
		feet="Theophany duckbills +3"}

	sets.Midcast.Cursna = {
}

	sets.Midcast.Curaga = {
		main = "Queller rod",
		sub = "Sors shield",
		ammo = "Incantor Stone",
		head = "Vanya hood",
		neck = "Cleric's torque +1",
		ear1 = "Nourishing earring",
		ear2 = "Glorious earring",
		body = "Theo. Bliaut +3",
		hands = "Piety mitts +3",
		ring1 = "Lebeche ring",
		ring2 = "Persis ring",
		back = "Mending Cape",
		waist = "Channeler's stone",
		legs = "Ebers pantaloons +2",
		feet = "Piety duckbills +3"
	}

	sets.Midcast["Divine Veil"] = {
		main="Yagrush",
		sub="Genbu's shield",
		ammo="Incantor Stone",
		head="Ebers cap +2",
		neck="Cleric's torque +1",
		ear1="",
		ear2="Etiolation Earring",
		body="",
		hands="Ebers mitts +2",
		ring1="Ephedra ring",
		ring2="Prolix Ring",
		back="Mending cape",
		waist="Embla sash",
		legs="Ebers pantaloons +2",
		feet=""
		}

	sets.Midcast.Erase = sets.Midcast["Divine Veil"]

	sets.Midcast.Cursna = {
		main="Yagrush",
		sub="Sors shield",
		ammo="Incantor Stone",
		head="Vanya hood",
		neck="Malison medallion",
		ear1="Meili earring",
		ear2="Beatific earring",
		body="Ebers Bliaut +2",
		hands="Fanatic gloves",
		ring1="Haoma's ring",
		ring2="Menelaus's ring",
		back="Alaunus's cape",
		waist="Channeler's stone",
		legs="Theophany pantaloons +3",
		feet="Gende. Galosh. +1"
	}

	sets.Midcast["Enhancing Magic"] = {
		main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','VIT+1','"Mag.Atk.Bns."+12','DMG:+1',}},
		sub="Ammurapi Shield",
		ammo="Incantor Stone",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +10',}},
		hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +10',}},
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +10',}},
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +9',}},
		neck="Incanter's Torque",
		waist="Embla Sash",
		left_ear="Andoaa Earring",
		right_ear="Etiolation Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Mending Cape",
		}

sets.Midcast["Enfeebling Magic"] = {
		main="Gada", -- 18
		sub="Ammurapi shield", --
		ammo="Homiliary",
		head="Befouled crown", -- 16
		body="Theo. Bliaut +3", -- 21
		hands="Piety mitts +3", -- 26
		legs="Nabu's shalwar", -- 15
		feet="Theophany duckbills +3", -- 21
		neck="Incanter's torque",
		waist="Rumination Sash", -- 7
		left_ear="Digni. Earring",
		right_ear="Enchntr. Earring +1",
		left_ring="Stikini Ring +1",
		right_ring="Globidonta Ring", -- 5
		back="Altruistic Cape", -- 5
}
	sets.Midcast.Regen =
		{main="Gada",
		sub="Ammurapi shield",
		ammo="Incantor Stone",
		head="Inyanga Tiara +2",
		body={ name="Piety Bliaut +3", augments={'Enhances "Benediction" effect',}},
		hands="Ebers Mitts +2",
		legs="Th. Pant. +3",
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +9',}},
		neck="Incanter's Torque",
		waist="Embla sash",
		left_ear="Enchntr. Earring +1",
		right_ear="Etiolation Earring",
		left_ring="Stikini Ring +1",
		right_ring="Prolix Ring",
		back="Mending cape",
}
	sets.Midcast.Bar =
		{main="Beneficus",
		sub="Ammurapi shield",
		ammo="Incantor Stone",
		head="Befouled crown",
		body="Ebers Bliaut +2",
		hands="Ebers Mitts +2",
		legs="Piety Pantaln. +3",
		feet="Piety Duckbills +3",
		neck="Incanter's Torque",
		waist="Embla sash",
		left_ear="Andoaa Earring",
		right_ear="Etiolation Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Mending cape",}

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

function aftercast(spell, action)
	debug("Idle")
	equip(sets.Idle)
end

function debug(s)
	-- windower.add_to_chat(123, s)
end

function status_change(new, old)
    if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])
    end
end