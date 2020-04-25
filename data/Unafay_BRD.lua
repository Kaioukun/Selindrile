function get_sets()
	debug("Rommi>> <3")
	-- Idle Sets --
	sets.Idle = {
		main = "Sangoma",
		sub = "Genmei Shield",
		head = "Bihu roundlet +1",
		neck = "Loricate torque",
		ear1 = "Mendicant's Earring",
		ear2 = "Enchanter Earring +1",
		body = "Ayanmo corazza +2",
		hands = "Ayanmo manopolas +2",
		ring1 = "Patricius Ring",
		ring2 = "Defending ring",
		back = "Moonbeam cape",
		waist = "Porous rope",
		legs = "Ayanmo cosciales +1",
		feet = "Ayanmo gambieras +1"
	}

	sets.Resting = set_combine(
		sets.Idle,
		{
			ear1 = "Moonshade earring",
			body = "Respite cloak",
			waist = "Fucho-no-obi",
			legs = "Assiduity pants",
			hands = "Serpentes cuffs",
			feet = "Sepentes sabots"
		}
	)

	-- JA Sets --
	sets.JA = {}
	sets.JA.Nightingale = {feet = "Bihu Slippers +1"}
	sets.JA.Troubadour = {body = "Bihu Justaucorps +1"}
	sets.JA["Soul Voice"] = {legs = "Bihu cannions +1"}

	-- Song Precast Set --
	sets.Precast = {}
	sets.Precast.SongCast = {
		main = "Felibre's dague",
		head = "Fili Calot +1",
		neck = "Moonbow whistle +1",
		ear1 = "Loquac. Earring",
		ear2 = "Enchanter Earring +1",
		body = "Inyanga jubbah +2",
		hands = "Marduk's dastanas +1",
		ring1 = "Prolix Ring",
		ring2 = "Weatherspoon ring",
		back = "Swith Cape +1",
		waist = "Witful Belt",
		legs = "Gendewitha Spats +1",
		feet = "Coalrake sabots"
	}

	-- Fastcast Set --
	sets.Precast.FastCast = {
		main = "Felibre's dague",
		head = "Nahtirah Hat",
		neck = "Orunmila's Torque",
		ear1 = "Enchanter Earring +1",
		body = "Vanir Cotehardie",
		hands = "Gendewitha Gages +1",
		ring1 = "Prolix Ring",
		ring2 = "Weatherspoon ring",
		back = "Swith Cape +1",
		waist = "Witful Belt",
		legs = "Ayanmo Cosciales +1",
		feet = "Chelona Boots"
	}

	-- Cure Precast Set --
	sets.Precast.Cure = {
		main = "Carnwenhan",
		sub = {
			name = "Genbu's Shield", 
			augments = {'"Cure" potency +4%', '"Cure" spellcasting time -8%'}
		},
		head = {
			name = "Vanya Hood", 
			augments = {"MP+50", '"Cure" potency +7%', "Enmity-6"}
		},
		body = "Kaykaus Bliaut",
		hands = "Revealer's Mitts",
		legs = {
			name = "Chironic Hose",
			augments = {'Mag. Acc.+18 "Mag.Atk.Bns."+18', '"Drain" and "Aspir" potency +10', "Mag. Acc.+14"}
		},
		feet = "Kaykaus Boots",
		neck = "Colossus's Torque",
		waist = "Luminary Sash",
		left_ear = "Mendi. Earring",
		right_ear = "Beatific Earring",
		left_ring = "Karka Ring",
		right_ring = "Ephedra Ring",
		back = "Pahtli Cape"
	}

	sets.Midcast = {}

	-- Song Debuff Set --
	sets.Midcast.Wind = {
		main = "Malevolence",
		head = "Brioso Roundlet +2",
		neck = "Moonbow whistle +1",
		ear1 = "Gwati earring",
		ear2 = "Dignitary's earring",
		body = "Brioso Justau. +2",
		hands = "Vanya Cuffs",
		ring1 = "Stikini ring +1",
		ring2 = "Stikini ring",
		back = "Rhapsode's cape",
		waist = "Ovate rope",
		legs = "Chironic hose",
		feet = "Brioso slippers +2"
	}

	-- Song Buff Set --
	sets.Midcast.WindBuff = {
		main = "Carnwenhan",
		range = "",
		head = "Fili calot +1",
		neck = "Moonbow Whistle +1",
		ear1 = "Musical Earring",
		ear2 = "Aoidos' Earring",
		body = "Fili hongreline +1",
		hands = "Fili manchettes +1",
		ring1 = "Dawnsoul ring",
		back = "Kumbira cape",
		waist = "Ovate rope",
		legs = "Inyanga Shalwar +2",
		feet = "Brioso Slippers +2"
	}

	sets.Midcast.March = {hands = "Fili manchettes +1"}
	sets.Midcast.Minuet = {body = "Fili hongreline +1"}
	sets.Midcast.Madrigal = {head = "Fili calot +1"}
	sets.Midcast.Ballad = {legs = "Fili rhingrave +1"}
	sets.Midcast.Scherzo = {feet = "Fili cothurnes +1"}
	sets.Midcast.Mazurka = {head = "Nahtirah hat"}
	sets.Midcast.Paeon = {head = "Brioso Roundlet +2"}
	sets.Midcast.Finale = {}
	sets.Midcast.Lullaby = {hands = "Brioso cuffs +2"}

	-- Cure Set --
	sets.Midcast.Cure = {
		main = "Arka IV",
		sub = "Achaq grip",
		head = {
			name = "Vanya Hood", 
			augments = {"MP+50", '"Cure" potency +7%', "Enmity-6"}
		},
		neck = "Incanter's torque",
		ear1 = "Loquac. Earring",
		ear2 = "Beatific earring",
		body = "Kaykaus bliaut",
		hands = "Bokwus gloves",
		ring1 = "Ephedra ring",
		ring2 = "Sirona's ring",
		back = "Pahtli cape",
		waist = "Cascade belt",
		legs = "Kaykaus tights",
		feet = "Medium's sabots"
	}

	-- Curaga Set --
	sets.Midcast.Curaga = {
		main = "",
		sub = "Genbu's Shield",
		ammo = "Oreiad's Tathlum",
		head = "Gendewitha Caubeen +1",
		-- neck="Nuna Gorget +1",
		ear1 = "Lifestorm Earring",
		ear2 = "Loquac. Earring",
		body = "Heka's Kalasiris",
		hands = "Gendewitha Gages +1",
		-- ring1="Aquasoul Ring",
		-- ring2="Karka Ring",
		back = "Pahtli Cape",
		-- waist="Pythia Sash +1",
		-- legs="Gendewitha Spats",
		feet = "Gendewitha Galoshes +1"
	}

	-- Haste Set --
	sets.Midcast.Haste =
		set_combine(
		sets.Precast.FastCast,
		{
			head = "Nahtirah Hat",
			neck = "Orunmila's Torque",
			ear1 = "Loquac. Earring",
			-- body="Hedera Cotehardie",
			hands = "Gendewitha Gages +1",
			ring1 = "Prolix Ring",
			ring2 = "Weatherspoon ring",
			back = "Swith Cape +1",
			-- waist="Pya'ekue Belt",
			legs = "Bihu Cannions +1",
			feet = "Brioso Slippers +2"
		}
	)

	-- Cursna Set --
	sets.Midcast.Cursna =
		set_combine(
		sets.Midcast.Haste,
		{
			ring1 = "Ephedra ring",
			neck = "Malison medallion",
			feet = "Gendewitha Galoshes +1"
		}
	)

	-- Stoneskin Set --
	sets.Midcast.Stoneskin = sets.Midcast.Haste

	-- Melee --
	sets.Engaged = {}
end

function precast(spell, action)
	if spell.type:endswith("Magic") or spell.type == "BardSong" or spell.type == "Ninjutsu" then
		if buffactive.silence then -- Cancel Magic or Ninjutsu or BardSong If You Are Silenced or Out of Range --
			cancel_spell()
			debug(spell.name .. " Canceled: [Silence has fallen]")
			return
		else
			if spell.type == "BardSong" then
				if buffactive.nightingale then
					song_equip(spell)
					return
				else
					equip(sets.Precast.SongCast)
					debug("Precast: Song")
				end
			elseif string.find(spell.english, "Cur") and spell.english ~= "Cursna" then
				equip(sets.Precast.Cure)
				debug("Precast: Cure")
			else
				equip(sets.Precast.FastCast)
				debug("Precast: Fast Cast")
			end
		end
	elseif spell.english == "Spectral Jig" and buffactive.Sneak then
		cast_delay(0.2)
		send_command("cancel Sneak")
	elseif spell.type == "JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
			debug("Precast: " .. spell.english)
		end
	end
end

function midcast(spell, action)
	if sets.Midcast[spell.english] then
		equip(sets.Midcast[spell.english])
		debug("Midcast: " .. spell.english)
		return
	elseif spell.type:endswith("Magic") or spell.type == "Ninjutsu" or spell.type == "BardSong" then
		if spell.type == "BardSong" then
			song_equip(spell)
		elseif string.find(spell.english, "Cure") then
			equip(sets.Midcast.Cure)
			debug("Midcast: Cure")
		elseif string.find(spell.english, "Cura") then
			equip(sets.Midcast.Curaga)
			debug("Midcast: Curaga")
		end
	end
end

function aftercast(spell, action)
	status_change(player.status)
end

function status_change(new, old)
	if sets[new] then
		equip(sets[new])
		debug("Aftercast: " .. new)
	end
end

song_set_names = {"Finale", "Lullaby", "March", "Minuet", "Madrigal", "Ballad", "Scherzo", "Mazurka", "Paeon"}
function song_equip(spell)
	if spell.target.type == "MONSTER" then
		equip(sets.Midcast.Wind)
		debug("Midcast: Wind")
	else
		if "Daurdabla" == player.equipment.range then
			debug("Midcast: Dummy Song")
			return
		end

		equip(sets.Midcast.WindBuff)
		debug("Midcast: WindBuff")
	end

	for _, song in ipairs(song_set_names) do
		if string.find(spell.english, song) then
			if sets.Midcast[song] then
				equip(sets.Midcast[song])
				debug("Midcast: " .. song)
				break
			end
		end
	end
end

function debug(s)
	send_command("@input /echo " .. s)
end
