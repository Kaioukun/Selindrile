function get_sets()
	sets.Idle = {
		main = "Gridarvor",
		sub = "Elan Strap +1",
		ammo = "Eminent Sachet",
		head = "Beckoner's Horn",
		body = "Shomonjijoe +1",
		hands = "Merlinic Dastanas",
		-- legs = "Assiduity Pants",
		feet = "Convo. Pigaches +2",
		neck = "Caller's Pendant",
		waist = "Caller's Sash",
		-- left_ear = "Handler's Earring +1",
		-- right_ear = "Handler's Earring",
		left_ring = "Varar Ring +1",
		right_ring = "Varar Ring +1",
		back = {
			name = "Campestres's Cape",
			augments = {
				'Pet: "Regen"+10'
			}
		}
	}
	
	sets.FastCast = {
		-- right_ear = "Loquac. Earring",
		-- right_ring = "Prolix Ring",
		back = {
			name = "Campestres's Cape",
			augments = {'"Fast Cast"+10'}
		}
	}

	sets.BloodPactRage = {
		-- head="Con. Horn +1",
		-- body="Con. Doublet +2",
		-- hands="Glyphic Bracers +2",
		-- feet="Glyph. Pigaches +2",
	}
	sets.BloodPactWard = sets.BloodPactRage

	sets.Pet = {}

	sets.Pet.Precast = {
		main = "Espiritus",
		ammo = "Eminent Sachet",
		head = "Beckoner's Horn",
		body = "Con. Doublet +2",
		-- neck = "Melic Torque",
		left_ear = "Caller's Earring",
		-- left_ring = "Stikini Ring",
		-- right_ring = "Stikini Ring"
	}

	sets.Pet.BloodPact = {}
	sets.Pet.BloodPact.Magic = {
		main = "Espiritus",
		sub = "Elan Strap +1",
		ammo = "Eminent Sachet",
		head = {
			name = "Apogee Crown +1",
			augments = {'MP+80', 'Pet: "Mag.Atk.Bns."+35', 'Blood Pact Dmg.+8'}
		},
		body = "Con. Doublet +2",
		hands = {
			name = "Merlinic Dastanas",
			augments = {
				'Pet: Attack+28 Pet: Rng.Atk.+28', 'Blood Pact Dmg.+10',
				'Pet: STR+7', 'Pet: Mag. Acc.+10'
			}
		},
		legs = {
			name = "Apogee Slacks +1",
			augments = {'Pet: STR+20', 'Blood Pact Dmg.+14', 'Pet: "Dbl. Atk."+4'}
		},
		feet = "Convo. Pigaches +2",
		neck = "Caller's Pendant",
		waist = "Caller's Sash",
		left_ear = "Esper Earring",
		right_ear = "Gelos Earring",
		left_ring = "Varar Ring +1",
		right_ring = "Varar Ring +1",
		back = {
			name = "Campestres's Cape",
			augments = {
				'Pet: M.Acc.+20 Pet: M.Dmg.+20', 'Pet: Mag. Acc.+5'
			}
		}
	}

	sets.Pet.BloodPact.Merit = set_combine(
		sets.Pet.BloodPact.Magic,
		{
			-- legs = "Enticer's Pants"
		}
	)

	sets.Pet.BloodPact.Physical = {
		main = "Gridarvor",
		sub = "Elan Strap +1",
		ammo = "Eminent Sachet",
		head = {
			name = "Apogee Crown +1",
			augments = {'MP+80', 'Pet: "Mag.Atk.Bns."+35', 'Blood Pact Dmg.+8'}
		},
		body = "Con. Doublet +2",
		hands = {
			name = "Merlinic Dastanas",
			augments = {
				'Pet: Attack+28 Pet: Rng.Atk.+28', 'Blood Pact Dmg.+10',
				'Pet: STR+7', 'Pet: Mag. Acc.+10'
			}
		},
		legs = {
			name = "Apogee Slacks +1",
			augments = {'Pet: STR+20', 'Blood Pact Dmg.+14', 'Pet: "Dbl. Atk."+4'}
		},
		feet = "Convo. Pigaches +2",
		neck = "Caller's Pendant",
		waist = "Caller's Sash",
		left_ear = "Esper Earring",
		right_ear = "Gelos Earring",
		left_ring = "Varar Ring +1",
		right_ring = "Varar Ring +1",
		back = {
			name = "Campestres's Cape",
			augments = {
				'Pet: Acc.+20 Pet: R.Acc.+20 Pet: Atk.+20 Pet: R.Atk.+20'
			}
		}
	}

	sets.Pet.BloodPact.Hybrid = sets.Pet.BloodPact.Merit

	sets.Pet.BloodPact.Skill = {
		-- sub="Vox Grip",
		-- ammo="Sancus Sachet +1",
		-- head="Con. Horn +1",
		-- body="Beckoner's Doublet",
		-- hands="Glyphic Bracers +2",
		-- legs="Beck. Spats +1",
		neck="Caller's Pendant",
		-- waist="Kobo Obi",
		-- left_ear="Andoaa Earring",
		-- left_ring="Globidonta Ring",
		-- back="Conveyance Cape",
	}

	sets.Pet.BloodPactRage = sets.Pet.BloodPact.Hybrid

	-- Garuda
	sets.Pet.BloodPactRage["Claw"] = sets.Pet.BloodPact.Physical
	sets.Pet.BloodPactRage["Aero II"] = sets.Pet.BloodPact.Magic
	sets.Pet.BloodPactRage["Aero IV"] = sets.Pet.BloodPact.Magic
	sets.Pet.BloodPactRage["Predator Claws"] = sets.Pet.BloodPact.Physical
	-- Ifrit
	sets.Pet.BloodPactRage["Punch"] = sets.Pet.BloodPact.Physical
	sets.Pet.BloodPactRage["Fire II"] = sets.Pet.BloodPact.Magic
	sets.Pet.BloodPactRage["Burning Strike"] = sets.Pet.BloodPact.Magic
	sets.Pet.BloodPactRage["Double Punch"] = sets.Pet.BloodPact.Physical
	sets.Pet.BloodPactRage["Fire IV"] = sets.Pet.BloodPact.Magic
	sets.Pet.BloodPactRage["Flaming Crush"] = sets.Pet.BloodPact.Hybrid
	sets.Pet.BloodPactRage["Conflag Strike"] = sets.Pet.BloodPact.Physical
	-- Ramuh
	sets.Pet.BloodPactRage["Shock Strike"] = sets.Pet.BloodPact.Magic
	sets.Pet.BloodPactRage["Thunder II"] = sets.Pet.BloodPact.Magic
	sets.Pet.BloodPactRage["Thunderspark"] = sets.Pet.BloodPact.Magic
	sets.Pet.BloodPactRage["Thunder IV"] = sets.Pet.BloodPact.Magic
	sets.Pet.BloodPactRage["Chaotic Strike"] = sets.Pet.BloodPact.Physical
	sets.Pet.BloodPactRage["Volt Strike"] = sets.Pet.BloodPact.Magic
	-- Shiva
	sets.Pet.BloodPactRage["Axe Kick"] = sets.Pet.BloodPact.Physical
	sets.Pet.BloodPactRage["Blizzard II"] = sets.Pet.BloodPact.Magic
	sets.Pet.BloodPactRage["Double Slap"] = sets.Pet.BloodPact.Physical
	sets.Pet.BloodPactRage["Blizzard IV"] = sets.Pet.BloodPact.Magic
	sets.Pet.BloodPactRage["Rush"] = sets.Pet.BloodPact.Physical

	-- Meritted
	sets.Pet.BloodPactRage["Meteor Strike"] = sets.Pet.BloodPact.Merit
	sets.Pet.BloodPactRage["Geocrush"] = sets.Pet.BloodPact.Merit
	sets.Pet.BloodPactRage["Grand Fall"] = sets.Pet.BloodPact.Merit
	sets.Pet.BloodPactRage["Wind Blade"] = sets.Pet.BloodPact.Merit
	sets.Pet.BloodPactRage["Heavenly Strike"] = sets.Pet.BloodPact.Merit
	sets.Pet.BloodPactRage["Thunderstorm"] = sets.Pet.BloodPact.Merit

	sets.Pet.BloodPactWard = sets.Pet.BloodPact.Skill

	sets.SummonerPact = {}

	-- JA Sets --
	sets.JobAbility = {}
	sets.JobAbility["Elemental Siphon"] = {
		-- sub="Vox Grip",
		-- head="Con. Horn +1",
		-- body="Beckoner's Doublet",
		-- hands="Summoner's Brcr.",
		-- legs="Beck. Spats +1",
		-- feet="Caller's Pgch. +1",
		neck="Caller's Pendant",
		-- waist="Kobo Obi",
		-- left_ring="Globidonta Ring",
	}
end

function precast(spell, action)
	if (buffactive["Apogee"] or buffactive["Astral Conduit"]) and spell.type:startswith("BloodPact")  then
		pet_midcast(spell)
		return
	end

	if spell.type == "BloodPactRage" or spell.type == "BloodPactWard" then
		equip(sets.Pet.Precast)
	end

	if "Trust" == spell.type then
		equip(sets.FastCast)
		return
	end

	if spell.english == "Spectral Jig" and buffactive.Sneak then
		cast_delay(0.2)
		send_command("cancel Sneak")
	end

	if sets[spell.type] and sets[spell.type][spell.english] then
		equip(sets[spell.type][spell.english])

		debug(spell.type .. " " .. spell.english)

		return
	end

	if ignore_spell_type(spell) and sets[spell.type] then
		equip(sets[spell.type])

		debug(spell.type)

		return
	end

	debug("No set for " .. spell.type .. "." .. spell.english)
end

function ignore_spell_type(spell)
	return spell.type ~= "JobAbility"
end

function aftercast(spell)
	if (buffactive["Apogee"] or buffactive["Astral Conduit"]) and spell.type:startswith("BloodPact")  then
		pet_midcast(spell)
		return
	end
	
	status_change(player.status)
end

function pet_midcast(spell)
	equip(sets.Pet[spell.type][spell.english])
end

function pet_aftercast(spell)
	aftercast(spell)
end

function status_change(new, old)
	if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
		return
	end

	if (sets[new]) then
		equip(sets[new])
	end
end

function debug(s)
	send_command("@input /echo " .. s)
end
