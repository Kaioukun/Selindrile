function get_sets()
	-- Idle Sets --
	sets.Idle = {
		main = "Legato Dagger",
		range = "Gjallarhorn",
		head = "Fili Calot",
		body = "Bihu Justaucorps",
		hands = "Bihu Cuffs",
		legs = "Bihu Cannions",
		feet = "Bihu Slippers",
		neck = "Moonbow Whistle",
		waist = "Swift Belt",
		left_ear = "Loquac. Earring",
		right_ear = "Aoidos' Earring",
		left_ring = "Warp Ring",
		right_ring = "Balrahn's Ring",
		back = "Cheviot Cape"
	}

	sets.Resting =
		set_combine(
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

	sets.Haste = {
		head = "Fili Calot",
		body = "Fili Hongreline",
		hands = "Fili Manchettes",
		legs = "Brioso Cannions",
		feet = "Brioso Slippers",
		waist = "Swift Belt"
	}

	-- Song Precast Set --
	sets.Precast = {}

	-- Fastcast Set --
	sets.Precast.FastCast =
		set_combine(
		sets.Haste,
		{
			hands = "Gendewitha Gages",
			legs = "Orvail Pants +1",
			left_ear = "Loquac. Earring",
			back = "Veela Cape"
		}
	)

	-- Song
	sets.Precast.SongCast =
		set_combine(
		sets.Precast.FastCast,
		{
			main = "Felibre's Dague",
			head = "Fili Calot",
			legs = "Fili Rhingrave",
			neck = "Aoidos' Matinee",
			right_ear = "Aoidos' Earring"
		}
	)
	-- {
	-- 	main="Felibre's dague",
	-- 	head="Nahtirah Hat",
	-- 	neck="Orunmila's Torque",
	-- 	ear1="Enchanter Earring +1",
	-- 	body="Vanir Cotehardie",
	-- 	hands="Gendewitha Gages +1",
	-- 	ring1="Prolix Ring",
	-- 	ring2="Weatherspoon ring",
	-- 	back="Swith Cape +1",
	-- 	waist="Witful Belt",
	-- 	legs="Artsieq hose",
	-- 	feet="Chelona Boots"
	-- }

	sets.Midcast = {}

	-- Song Debuff Set --
	sets.Midcast.Wind = {
		main = "Legato dagger", -- Malevolence M.Acc
		range = "Gjallarhorn",
		head = "Brioso Roundlet",
		neck = "Moonbow whistle",
		ear1 = "Gwati earring", -- *
		ear2 = "Enchanter earring +1",
		body = "Brioso Just.",
		hands = "chironic gloves", -- Path D
		-- ring1 = "Kishar Ring",
		-- ring2 = "Carbuncle ring +1",
		-- back = "Rhapsode's Cape",
		waist = "Ovate rope",
		legs = "chironic hose", -- M.Acc
		feet = "Artsieq Boots"
	}

	-- Song Buff Set --
	sets.Midcast.WindBuff =
		set_combine(
		sets.Midcast.Wind,
		{
			main = "Legato Dagger",
			head = "Fili Calot",
			body = "Fili Hongreline",
			hands = "Fili Manchettes",
			legs = "Fili Rhingrave",
			feet = "Brioso Slippers",
			neck = "Moonbow Whistle",
			left_ear = "Musical Earring",
			right_ear = "Aoidos' Earring",
			left_ring = "Stikini Ring",
			right_ring = "Stikini Ring"
		}
	)
	-- {
	-- 	ring1="Dawnsoul ring",
	--  ring2="Stikini Ring",
	-- 	back="Kumbira cape",
	-- 	waist="Ovate rope",
	-- 	legs="Mdk. Shalwar +1",
	-- }

	sets.Midcast.March = {hands = "Fili manchettes"}
	sets.Midcast.Minuet = {body = "Fili hongreline"}
	sets.Midcast.Madrigal = {head = "Fili calot"}
	sets.Midcast.Ballad = {legs = "Fili rhingrave"}
	sets.Midcast.Scherzo = {feet = "Fili cothurnes"}
	sets.Midcast.Mazurka = {head = "Nahtirah hat"}
	sets.Midcast.Paeon = {
		ranged = "Terpander",
		head = "Brioso Roundlet"
	}
	sets.Midcast.Finale = {}
	sets.Midcast.Lullaby = {hands = "Brioso cuffs"}

	-- Cure Set --
	sets.Midcast.Cure = {
		main = "Chatoyant staff",
		sub = "Achaq grip",
		head = "Vanya hood",
		neck = "Colossus's torque",
		ear1 = "Loquac. Earring",
		ear2 = "Beatific earring",
		body = "Chironic doublet",
		hands = "Bokwus gloves",
		ring1 = "Ephedra ring",
		ring2 = "Sirona's ring",
		back = "Pahtli cape",
		waist = "Cascade belt",
		legs = "Gyve trousers",
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
			feet = "Brioso Slippers"
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
	sets.Midcast.Stoneskin = set_combine(sets.Midcast.Haste)
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
	if new == "Idle" then
		equip(sets.Idle)
		debug("Aftercast: Idle")
	elseif new == "Resting" then
		equip(sets.Resting)
		debug("Aftercast: Resting")
	elseif new == "Engaged" then
		equipSet = sets.TP
		equip(equipSet)
	else
		equipSet = sets.Idle
		if equipSet[IdleArray[IdleIndex]] then
			equipSet = equipSet[IdleArray[IdleIndex]]
		end
		if equipSet[WeaponArray[WeaponIndex]] then
			equipSet = equipSet[WeaponArray[WeaponIndex]]
		end
		equip(equipSet)
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
