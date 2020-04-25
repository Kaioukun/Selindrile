--[[
		=========================
		|   G E O M A N C E R   |
		=========================
]]

function get_sets()
	sets.precast = {}

	sets.precast.FastCast = {
		head="Nahtirah Hat", ear1="Loquac. Earring",
		body="Geomancy tunic", hands="Bagua Mitaines", ring1="Prolix Ring",
		back="Lifestream Cape", waist="Witful Belt", legs="Geomancy Pants +1", feet="Chelona Boots"
	}  --Fast Cast = 47%

	sets.precast.IdleRefresh = {
		main="Bolelabunga", sub="Sors shield", range="Dunna",
		head="Nahtirah Hat", neck="Twilight torque", ear1="Flashward earring", ear2="Spellbreaker earring",
		body="Respite cloak", hands="Bagua Mitaines", ring1="Dark ring", ring2="Meridian ring",
		back="Repulse Mantle", waist="Fucho-no-Obi", legs="Nares Trews", feet="Geomancy sandals"
	}
	--Repulse Mantle
	--Mecisto. Mantle
	sets.precast.IdleLuopan = {
		main="Bolelabunga", sub="Sors shield", range="Dunna",
		head="Azimuth hood +1", neck="Twilight Torque", ear1="Flashward earring", ear2="Spellbreaker Earring",
		body="Azimuth coat +1",
		hands="Geomancy Mitaines +1", ring1="Dark Ring", ring2="Dark Ring",
		back="Repulse Mantle", waist="Isa belt", legs="Geomancy Pants +1", feet="Hagondes Sabots +1"
	}
	--Lifestream Cape

	sets.precast.Idle = sets.precast.IdleRefresh

	--sets.precast.Rest = {main=""}

	--Job Ability--
	sets.JA = {}
	sets.JA['Collimated Fervor'] = {head="Bagua Galero"}
	sets.JA.Bolster = {body="Bagua Tunic"}
	sets.JA['Full Circle'] = {hands="Bagua Mitaines"}
	sets.JA['Life Cycle'] = {body="Geomancy Tunic"}

	--Midcast
	sets.midcast = {}

	sets.midcast.Cure = {
		main="Tamaxchi", sub="Genbu's Shield", -- ammo="Oreiad's Tathlum",
		-- head="Kaabnax Hat", neck="Imbodla Necklace",
		ear1="Loquac. Earring", ear2="Lifestorm Earring",
		body="Geomancy Tunic",-- hands="Bokwus Gloves", ring1="Sirona's Ring", ring2="Solemn Ring",
		back="Pahtli Cape", -- waist="Witch Sash",
		legs="Nares Trews",-- feet="Umbani Boots"
	} --MND=96+131, Cure Pot.=46%

	sets.midcast.Enfeeble = {
		-- main="", sub="", ammo="",
		head="Bagua Galero", -- neck="Imbodla Necklace",
		ear1="Psystorm Earring", ear2="Lifestorm Earring",
		-- body="Ischemia Chasuble",
		hands="Azimuth gloves", -- ring1="Strendu Ring", ring2="Sangoma Ring",
		back="Lifestream Cape", waist="Yamabuki-no-Obi", legs="Hagondes Pants +1" --, feet="Uk'uxkaj Boots"
	}

	sets.midcast.Geomancy = {
		range="Dunna",
		head="Azimuth hood +1", ear1="Gwati earring", ear2="Magnetic earring",
		body="Bagua Tunic", hands="Geomancy Mitaines +1",
		back="Lifestream Cape", waist="Austerity Belt", legs="Bagua Pants", feet="Azimuth gaiters +1"
	}

	--Enhancing needs work
	sets.midcast.Enhancing = {
		neck="Colossus's Torque",
		head="Umuthi Hat", ear1="Loquac. Earring",
		-- body="Anhur Robe", hands="Augur's Gloves",
		-- waist="Olympus Sash", legs="Shedir Seraweels",
		feet="Geomancy Sandals"
	}

	sets.midcast.ElementalMagic = {
		main="Eminent staff", sub="Zuuxowu grip",
		head="Helios band", neck="Eddy necklace", ear1="Crematio earring", ear2="Friomisi earring",
		body="Azimuth coat +1", hands="Helios gloves", ring1="Acumen ring", -- ring2="Strendu ring",
		back="Refraction cape", waist="Yamabuki-no-obi", legs="Hagondes pants +1", feet="Helios Boots"
	}

	sets.midcast.DarkMagic = {
		head="Bagua Galero", -- neck="Imbodla Necklace",
		ear1="Psystorm Earring", ear2="Lifestorm Earring",
		body="Hagondes Coat +1", hands="Hagondes Cuffs +1", -- ring1="Acumen Ring", ring2="Sangoma Ring",
		back="Refraction Cape", waist="Fucho-no-Obi", -- legs="Mes'yohi Slacks",
		feet="Hagondes Sabots +1"
	}

	sets.TP = {
		-- head="Espial Cap", neck="Asperity Necklace", ear1="Steelflash Earring", ear2="Bladeborn Earring",
		-- body="Ischemia Chasuble", hands="Geomancy Mitaines +1", ring1="Mars's Ring", ring2="Patricius Ring",
		-- back="Kayapa Cape", waist="Cetl Belt", legs="Hagondes Pants +1", feet="Battlecast Gaiters"
	}

    -- sets.WS = set_combine(sets.TP, {
    -- 	head="Sukeroku Hachimaki", neck="Flame Gorget", ear1="Brutal Earring", ear2="Zennaroi Earring",
	-- 	body="Ischemia Chasuble", hands="Otomi Gloves", ring1="Leviathan Ring", ring2="Leviathan Ring",
	-- 	back="Kayapa Cape", waist="Flame Belt", legs="Perdition Slops", feet="Battlecast Gaiters"
	-- })

    sets.DontForget = {
    	-- neck="Quanpur Necklace", ear1="Reraise Earring", ear2 = "Linkpearl",
		-- ring1="Excelsis Ring"
	}


	send_command('input /macro book 8;wait .1;input /macro set 1')
	include('organizer-lib.lua')
end

function precast(spell)
	--windower.add_to_chat(14, 'Precast: spell type= ' ..spell.type)
	if spell.prefix ~= '/jobability' and spell.type ~= 'WeaponSkill' then
		--windower.add_to_chat(14, 'not JobAbility or WeaponSkill so Fast Cast')
		equip(sets.precast.FastCast)

	elseif spell.type=="WeaponSkill" then
		if sets.WS[spell.english] then
			equip(sets.WS[spell.english])
		else
			equip(sets.WS)
		end
		if buffactive['Reive Mark'] then
			equip({neck="Arciela's Grace +1"})
		end

	elseif spell.prefix=="/jobability" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
	end

end

--[[Relic augments:
Head: Bagua Galero: Primeval Zeal
Body: Bagua Tunic: Bolster
Hands: Bagua Mitaines: Curative Recantation
]]

function midcast(spell)
	if spell.prefix == '/jobability' or spell.type == 'WeaponSkill' then
	--midcast doesn't exist for JA or WS so cancel the processing of this function
		--windower.add_to_chat(14, 'JobAbility or WeaponSkill; Midcast cancelled')
		return
	end

	if sets.midcast[spell.english] then
		equip(sets.midcast[spell.english])
	elseif spell.skill == 'Geomancy' then
		equip(sets.midcast.Geomancy)
	elseif spell.skill == 'Enhancing Magic' then
			equip(sets.midcast.Enhancing)
		if spell.english == 'Stoneskin' then
			equip({waist="Siegel Sash", neck="Stone Gorget"})
		end
	elseif spell.skill == 'Elemental Magic' then
		equip(sets.midcast.ElementalMagic)
		if spell.element == 'Earth' then
			equip({neck="Quanpur Necklace"})
		end
	elseif spell.skill == 'Dark Magic' then
		equip(sets.midcast.DarkMagic)
		if spell.english:startswith('Aspir') or spell.english == 'Drain' then
			equip({head="Bagua Galero", waist="Fucho-no-Obi"})
		end
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast.Enfeeble)
	elseif spell.skill == 'Healing Magic' then
		equip(sets.midcast.Cure)
	end
end

function aftercast(spell)
	if spell.english:startswith('Indi-') then
		local timer = tostring(245)
		if player.equipment.back == 'Mecisto. Mantle' then
			timer = tostring(215)
		end

		send_command('timers create "' .. spell.english .. '" ' .. timer .. ' down;wait ' .. timer .. ';input /echo ' .. spell.english .. ' has worn off.;')
	end

	if player.status == 'Idle' then
		equip(sets.precast.Idle)
	elseif player.status == 'Resting' then
		equip(sets.precast.Rest)
	elseif player.status == 'Engaged' then
		equip(sets.TP)
	end

	if buffactive['Reive Mark'] then
		equip({neck="Arciela's Grace +1"})
	end
end

function pet_change(pet,gain)
	--windower.add_to_chat(14, 'Pet_Change: ' ..pet.name.. ' gain? ' ..tostring(gain))
	--pet.name = 'Luopan'
	if gain then --pet casted
		sets.precast.Idle = sets.precast.IdleLuopan
	else
		sets.precast.Idle = sets.precast.IdleRefresh
	end
	equip(sets.precast.Idle)
	if buffactive['Reive Mark'] then
		equip({neck="Arciela's Grace +1"})
	end
end

function pet_status_change(new,old)
	--windower.add_to_chat(14, 'Pet_Status_Change: ' ..new.. ' / ' ..old)
	--luapan sits in 'Idle' status
	--on death status is 'Engaged dead'
end

function status_change(new,old)
	if new == 'Idle' then
		equip(sets.precast.Idle)
	elseif new == 'Resting' then
		equip(sets.precast.Rest)
	elseif new == 'Engaged' then
		equip(sets.TP)
	end
	if buffactive['Reive Mark'] then
		equip({neck="Arciela's Grace +1"})
	end
end

function self_command(command)
	--if command == 'Potency' then
		--SetMode_Index = 1
		--windower.add_to_chat(9, 'SetMode now set to:' ..SetMode_Names[SetMode_Index] )
	--elseif command == 'Accuracy' then
		--SetMode_Index = 2
		--windower.add_to_chat(9, 'SetMode now set to:' ..SetMode_Names[SetMode_Index] )
	if command == 'Melee' then
		disable("main", "sub", "range", "ammo")
		MeleeLock = 'True'
		windower.add_to_chat(9, 'MeleeLock = ' ..MeleeLock)
	elseif command == 'Magic' then
		enable("main", "sub", "range", "ammo")
		MeleeLock = 'False'
		windower.add_to_chat(9, 'MeleeLock = ' ..MeleeLock)
	end
end
