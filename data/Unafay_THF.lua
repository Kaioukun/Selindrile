-- *** Credit goes to Flippant for helping me with Gearswap *** --
-- ** I use Motenten's refine_waltz function for Waltz. ** --
-- Last Updated: 03/11/14 12:15 PM *Added MidHaste & HighHaste Sets* --

function get_sets()
	AccIndex = 1
	AccArray = {"LowACC","MidACC","HighACC"} -- 3 Levels Of Accuracy Sets For TP/WS/Hybrid. Default ACC Set Is LowACC. The First TP Set Of Your Main Weapon Is LowACC. Add More ACC Sets If Needed Then Create Your New ACC Below --
	IdleIndex = 1
	IdleArray = {"Movement","Regen"} -- Default Idle Set Is Movement --
	SA = false
	TA = false
	TH = 'ON' -- Set Default Full TH ON or OFF Here --
	target_distance = 6 -- Set Default Distance Here --
	
	sc_map = {SC1="Exenterator", SC2="SneakAttack", SC3="Ranged"} -- 3 Additional Binds. Can Change Whatever JA/WS/Spells You Like Here. Remember Not To Use Spaces. --

	-- Idle/Town Sets --
	sets.Idle = {
			main="Aeneas",
			sub="Tauret",
			range="",
			ammo="",
			head="Meghanada Visor +2",
			body="Malignance tabard",
			hands="Meg. Gloves +2",
			legs="Meg. Chausses +2",
			feet="Herculean Boots",
			neck="Bathy Choker",
			waist="Sarissapho. Belt",
			left_ear="Genmei Earring",
			right_ear="",
			left_ring="Defending Ring",
			right_ring="Patricius Ring",
			back="Moonbeam Cape",}
	
	-- Normal TP Sets --
	sets.TP = {
		main="Aeneas",
		sub="Tauret",
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+8','Accuracy+14','Mag. Acc.+13','Quadruple Attack +1',}},
		body="Malignance tabard",
		hands="Adhemar wristbands +1",
		legs={ name="Samnuha Tights", augments={'STR+10','DEX+10','"Dbl.Atk."+3','"Triple Atk."+3',}},
		feet={ name="Plun. Poulaines +1", augments={'Enhances "Assassin\'s Charge" effect',}},
		neck="Asn. Gorget +1",
		waist="Reiki Yotai",
		left_ear="Sherida Earring",
		right_ear="Telos Earring",
		left_ring="Hetairoi Ring",
		right_ring="Epona's Ring",
		back="Canny cape",
}

	-- Full TH Set --
	sets.TH = {
			hands="Plun. Armlets +2",
			waist="",
			feet="Skulker's poulaines +1",
			head="",
			}

	-- PDT/MDT Sets --
	sets.PDT = {
			head="",
			neck="",
			ear1="",
			ear2="",
			body="",
			hands="",
			ring1="",
			ring2="",
			back="",
			waist="",
			legs="",
			feet=""}

	sets.MDT = set_combine(sets.PDT,{
			ammo="",
			ear2="",
			Ring2="",
			back=""})

	-- Hybrid/Evasion Sets --
	sets.TP.Hybrid = set_combine(sets.PDT,{})
	sets.TP.Hybrid.MidACC = set_combine(sets.TP.Hybrid,{})
	sets.TP.Hybrid.HighACC = set_combine(sets.TP.Hybrid.MidACC,{})

	sets.Evasion = set_combine(sets.PDT,{})

	-- WS Base Set --
	sets.WS = {}

	-- WS Sets --
	sets.WS.Exenterator = {
		main="Aeneas",
		sub="",
		ammo="Ginsen",
		head={ name="Dampening Tam", augments={'DEX+8','Accuracy+14','Mag. Acc.+13','Quadruple Attack +1',}},
		body={ name="Plunderer's Vest +1", augments={'Enhances "Ambush" effect',}},
		hands="Meg. Gloves +1",
		legs="Meg. Chausses +2",
		feet={ name="Plun. Poulaines +1", augments={'Enhances "Assassin\'s Charge" effect',}},
		neck="Asn. Gorget +1",
		waist="Reiki Yotai",
		left_ear="Sherida Earring",
		right_ear="Brutal Earring",
		left_ring="Ilabrat Ring",
		right_ring="Regal Ring",
		back="Sacro Mantle",
}

	sets.WS.Evisceration = {
			head="",
			neck="",
			ear1="",
			ear2="",
			body="",
			hands="",
			ring1="",
			ring2="",
			back="",
			waist="",
			legs="",
			feet=""}
	
	sets.WS["Rudra's Storm"] = {
			ammo="Yetshila",
			head="Pillager's bonnet +1",
			body="Meghanada Cuirie +2",
			hands="Meg. Gloves +2",
			legs="Lustratio subligar",
			feet={ name="Herculean Boots", augments={'Attack+27','"Triple Atk."+2','DEX+4','Accuracy+5',}},
			neck="Asn. Gorget +1",
			waist="Grunfeld Rope",
			left_ear="Sherida Earring",
			right_ear="Brutal Earring",
			left_ring="Ilabrat Ring",
			right_ring="Regal Ring",
			back="Laic Mantle",
}

	sets.WS["Aeolian Edge"] = {
			head="",
			neck="",
			ear1="",
			ear2="",
			body="",
			hands="",
			ring1="",
			ring2="",
			back="",
			waist="",
			legs="",
			feet=""}
			
	-- JA Sets --
	sets.JA = {}
	TH_Gear = {hands="Plun. Armlets +2",waist="Chaac Belt"}
	sets.JA.Conspirator = {body="Raider's Vest +2"}
	sets.JA.Accomplice = {head="Raid. Bonnet +2"}
	sets.JA.Collaborator = {head="Raid. Bonnet +2"}
	sets.JA["Perfect Dodge"] = {hands="Plun. Armlets +1"}
	sets.JA.Steal = {hands="Pill. Armlets +1",legs="Pill. Culottes +1",feet="Pill. Poulaines"}
	sets.JA.Flee = {feet="Pillager's Poulaines"}
	sets.JA.Despoil = {legs="Raid. Culottes +2",feet="Raid. Poulaines +2"}
	sets.JA.Mug = {head="Plun. Bonnet"}
	sets.JA.Hide = {body="Pillager's Vest +1"}
	sets.JA.Provoke = TH_Gear
	sets.JA["Sneak Attack"] = {
			head="Pill. Bonnet",
			body="Pillager's Vest +1",
			hands="Raider's Armlets +2",
			legs="Pill. Culottes +1",
			feet="Plun. Poulaines +1"}
	sets.JA["Trick Attack"] = set_combine(sets.JA["Sneak Attack"],{hands="Pill. Armlets +1"})

	-- Waltz Set --
	sets.Waltz = {
			head="Uk'uxkaj Cap",
			body="Iuitl Vest +1",
			hands="Plun. Armlets +1",
			legs="Pill. Culottes +1",
			feet="Plun. Poulaines +1",
			neck="Twilight Torque",
			waist="Chaac Belt",
			ear2="Darkness Earring",
			ring1="Defending Ring",
			ring2="Dark Ring",
			back="Repulse Mantle"}

	sets.Precast = {}
	-- Fastcast Set --
	sets.Precast.FastCast = {
			head="Haruspex Hat",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ear2="Darkness Earring",
			body="Iuitl Vest +1",
			hands="Thaumas Gloves",
			ring1="Veneficium Ring",
			ring2="Prolix Ring",
			back="Repulse Mantle",
			waist="Cetl Belt",
			legs="Enif Cosciales",
			feet="Iuitl Gaiters"}
	-- Utsusemi Precast Set --
	sets.Precast.Utsusemi = set_combine(sets.Precast.FastCast,{})

	-- Midcast Base Set --
	sets.Midcast = {
			head="Haruspex Hat",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ear2="Darkness Earring",
			body="Iuitl Vest +1",
			hands="Thaumas Gloves",
			ring1="Defending Ring",
			ring2="Prolix Ring",
			back="Repulse Mantle",
			waist="Cetl Belt",
			legs="Enif Cosciales",
			feet="Iuitl Gaiters"}
	
	-- Magic Haste Set --
	sets.Midcast.Haste = set_combine(sets.PDT,{
			head="Haruspex Hat",
			neck="Orunmila's Torque",
			ear1="Loquac. Earring",
			ear2="Darkness Earring",
			body="Iuitl Vest +1",
			hands="Thaumas Gloves",
			ring1="Defending Ring",
			ring2="Prolix Ring",
			back="Repulse Mantle",
			waist="Cetl Belt",
			legs="Enif Cosciales",
			feet="Iuitl Gaiters"})
end

function pretarget(spell,action)
	if (spell.type:endswith('Magic') or spell.type == "Ninjutsu") and buffactive.silence then -- Auto Use Echo Drops If You Are Silenced --
		cancel_spell()
		send_command('input /item "Echo Drops" <me>')
	elseif spell.english == "Berserk" and buffactive.Berserk then -- Change Berserk To Aggressor If Berserk Is On --
		cancel_spell()
		send_command('Aggressor')
	elseif (spell.english == 'Ranged' and spell.target.distance > 24.9) or (spell.type == "WeaponSkill" and spell.target.distance > target_distance and player.status == 'Engaged') then -- Cancel Ranged Attack or WS If You Are Out Of Range --
		cancel_spell()
		add_to_chat(123, spell.name..' Canceled: [Out of Range]')
		return
	end
end

function precast(spell,action)
	if spell.type == "WeaponSkill" then
		if player.status ~= 'Engaged' then -- Cancel WS If You Are Not Engaged. Can Delete It If You Don't Need It --
			cancel_spell()
			add_to_chat(123,'Unable To Use WeaponSkill: [Disengaged]')
			return
		else
			equipSet = sets.WS
			if equipSet[spell.english] then
				equipSet = equipSet[spell.english]
			end
			if SA and equipSet["SA"] then
				equipSet = equipSet["SA"]
			end
			if TA and equipSet["TA"] then
				equipSet = equipSet["TA"]
			end
			if spell.english == "Evisceration" and player.tp > 2999 then -- Equip Jupiter's Pearl When You Have 300 TP --
				equipSet = set_combine(equipSet,{ear1="Steelflash Earring",ear2="Bladeborn Earring"})
			end
			equip(equipSet)
		end
	elseif spell.type=="JobAbility" then
		if sets.JA[spell.english] then
			equip(sets.JA[spell.english])
		end
		if spell.english=="Sneak Attack" then
			SA = true
		end
		if spell.english=="Trick Attack" then
			TA = true
		end
	elseif spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
		if string.find(spell.english,'Utsusemi') then
			if buffactive['Copy Image (3)'] or buffactive['Copy Image (4)'] then
				cancel_spell()
				add_to_chat(123, spell.name .. ' Canceled: [3+ Images]')
				return
			else
				equip(sets.Precast.Utsusemi)
			end
		else
			equip(sets.Precast.FastCast)
		end
	elseif spell.type == 'Step' then
		equip(sets.Step)
	elseif string.find(spell.type,'Flourish') then
		equip(sets.Flourish)
	elseif spell.type == "Waltz" then
		refine_waltz(spell,action)
		equip(sets.Waltz)
	elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
		cast_delay(0.2)
		send_command('cancel Sneak')
	end
end

function midcast(spell,action)
	if spell.english == 'Ranged' then
		equip(TH_Gear)
	elseif spell.type:endswith('Magic') or spell.type == "Ninjutsu" then
		if string.find(spell.english,'Utsusemi') then
			if spell.english == 'Utsusemi: Ichi' and (buffactive['Copy Image'] or buffactive['Copy Image (2)']) then
				send_command('@wait 1.7;cancel Copy Image*')
			end
			equip(sets.Midcast.Haste)
		elseif spell.english == 'Monomi: Ichi' then
			if buffactive['Sneak'] then
				send_command('@wait 1.7;cancel sneak')
			end
			equip(sets.Midcast.Haste)
		else
			equip(sets.Midcast.Haste)
		end
	end
end

function aftercast(spell,action)
	if spell.type == "WeaponSkill" and not spell.interrupted then
		send_command('wait 0.2;gs c TP')
	end
	status_change(player.status)
end

function status_change(new,old)
	if player.equipment.range ~= 'empty' then
		disable('range','ammo')
	else
		enable('range','ammo')
	end
	if Armor == 'PDT' then
		equip(sets.PDT)
	elseif Armor == 'MDT' then
		equip(sets.MDT)
	elseif Armor == 'EVA' then
		equip(sets.Evasion)
	elseif new == 'Engaged' then
		equipSet = sets.TP
		if Armor == 'Hybrid' and equipSet["Hybrid"] then
			equipSet = equipSet["Hybrid"]
		end
		if equipSet[AccArray[AccIndex]] then
			equipSet = equipSet[AccArray[AccIndex]]
		end
		if (buffactive.Embrava and (buffactive.Haste or buffactive.March) and buffactive['Haste Samba']) or (buffactive.March == 2 and buffactive.Haste and buffactive['Haste Samba']) and equipSet["HighHaste"] then
			equipSet = equipSet["HighHaste"]
		end
		if (buffactive.Embrava and (buffactive.Haste or buffactive.March or buffactive['Haste Samba'])) or (buffactive.March == 1 and buffactive.Haste and buffactive['Haste Samba'] and equipSet["MidHaste"]) or (buffactive.March == 2 and (buffactive.Haste or buffactive['Haste Samba'])) and equipSet["MidHaste"] then
			equipSet = equipSet["MidHaste"]
		end
		if SA then
			equipSet = set_combine(equipSet,sets.JA["Sneak Attack"])
		end
		if TA then
			equipSet = set_combine(equipSet,sets.JA["Trick Attack"])
		end
		if Rancor == 'ON' then -- Use Rancor Toggle For Rancor Collar --
			equipSet = set_combine(equipSet,sets.TP.Rancor)
		end
		if TH == 'ON' then -- Use TH Toggle To Lock Full TH Set --
			equipSet = set_combine(equipSet,sets.TP.TH)
		end
		equip(equipSet)
	else
		equip(sets.Idle[IdleArray[IdleIndex]])
	end
end

function buff_change(buff,gain)
	buff = string.lower(buff)
	if buff == "sneak attack" then
		SA = gain
	elseif buff == "trick attack" then
		TA = gain
	elseif buff == 'weakness' then -- Weakness Timer --
		if gain then
			send_command('timers create "Weakness" 300 up')
		else
			send_command('timers delete "Weakness"')
		end
	end
	if not midaction() then
		status_change(player.status)
	end
end

-- In Game: //gs c (command), Macro: /console gs c (command), Bind: gs c (command) --
function self_command(command)
	if command == 'C1' then -- Accuracy Level Toggle --
		AccIndex = (AccIndex % #AccArray) + 1
		status_change(player.status)
		add_to_chat(158,'Accuracy Level: ' .. AccArray[AccIndex])
	elseif command == 'C5' then -- Auto Update Gear Toggle --
		status_change(player.status)
		add_to_chat(158,'Auto Update Gear')
	elseif command == 'C2' then -- Hybrid Toggle --
		if Armor == 'Hybrid' then
			Armor = 'None'
			add_to_chat(123,'Hybrid Set: [Unlocked]')
		else
			Armor = 'Hybrid'
			add_to_chat(158,'Hybrid Set: '..AccArray[AccIndex])
		end
		status_change(player.status)
	elseif command == 'C9' then -- Full TH Set Toggle --
		if TH == 'ON' then
			TH = 'OFF'
			add_to_chat(123,'Full TH Set: [Unlocked]')
		else
			TH = 'ON'
			add_to_chat(158,'Full TH Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C7' then -- PDT Toggle --
		if Armor == 'PDT' then
			Armor = 'None'
			add_to_chat(123,'PDT Set: [Unlocked]')
		else
			Armor = 'PDT'
			add_to_chat(158,'PDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C15' then -- MDT Toggle --
		if Armor == 'MDT' then
			Armor = 'None'
			add_to_chat(123,'MDT Set: [Unlocked]')
		else
			Armor = 'MDT'
			add_to_chat(158,'MDT Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C3' then -- Evasion Toggle --
		if Armor == 'EVA' then
			Armor = 'None'
			add_to_chat(123,'Evasion Set: [Unlocked]')
		else
			Armor = 'EVA'
			add_to_chat(158,'Evasion Set: [Locked]')
		end
		status_change(player.status)
	elseif command == 'C16' then -- Rancor Toggle --
		if Rancor == 'ON' then
			Rancor = 'OFF'
			add_to_chat(123,'Rancor: [OFF]')
		else
			Rancor = 'ON'
			add_to_chat(158,'Rancor: [ON]')
		end
		status_change(player.status)
	elseif command == 'C8' then -- Distance Toggle --
		if player.target.distance then
			target_distance = math.floor(player.target.distance*10)/10
			add_to_chat(158,'Distance: '..target_distance)
		else
			add_to_chat(123,'No Target Selected')
		end
	elseif command == 'C6' then -- Idle Toggle --
		IdleIndex = (IdleIndex % #IdleArray) + 1
		status_change(player.status)
		add_to_chat(158,'Idle Set: ' .. IdleArray[IdleIndex])
	elseif command == 'TP' then
		add_to_chat(158,'TP Return: ['..tostring(player.tp)..']')
	elseif command:match('^SC%d$') then
		send_command('//' .. sc_map[command])
	end
end

function refine_waltz(spell,action)
	if spell.type ~= 'Waltz' then
		return
	end

	if spell.name == "Healing Waltz" or spell.name == "Divine Waltz" or spell.name == "Divine Waltz II" then
		return
	end

	local newWaltz = spell.english
	local waltzID

	local missingHP

	if spell.target.type == "SELF" then
		missingHP = player.max_hp - player.hp
	elseif spell.target.isallymember then
		local target = find_player_in_alliance(spell.target.name)
		local est_max_hp = target.hp / (target.hpp/100)
		missingHP = math.floor(est_max_hp - target.hp)
	end

	if missingHP ~= nil then
		if player.sub_job == 'DNC' then
			if missingHP < 40 and spell.target.name == player.name then
				add_to_chat(123,'Full HP!')
				cancel_spell()
				return
			elseif missingHP < 150 then
				newWaltz = 'Curing Waltz'
				waltzID = 190
			elseif missingHP < 300 then
				newWaltz = 'Curing Waltz II'
				waltzID = 191
			else
				newWaltz = 'Curing Waltz III'
				waltzID = 192
			end
		else
			return
		end
	end

	local waltzTPCost = {['Curing Waltz'] = 20, ['Curing Waltz II'] = 35, ['Curing Waltz III'] = 50, ['Curing Waltz IV'] = 65, ['Curing Waltz V'] = 80}
	local tpCost = waltzTPCost[newWaltz]

	local downgrade

	if player.tp < tpCost and not buffactive.trance then

		if player.tp < 20 then
			add_to_chat(123, 'Insufficient TP ['..tostring(player.tp)..']. Cancelling.')
			cancel_spell()
			return
		elseif player.tp < 35 then
			newWaltz = 'Curing Waltz'
		elseif player.tp < 50 then
			newWaltz = 'Curing Waltz II'
		elseif player.tp < 65 then
			newWaltz = 'Curing Waltz III'
		elseif player.tp < 80 then
			newWaltz = 'Curing Waltz IV'
		end

		downgrade = 'Insufficient TP ['..tostring(player.tp)..']. Downgrading to '..newWaltz..'.'
	end

	if newWaltz ~= spell.english then
		send_command('@input /ja "'..newWaltz..'" '..tostring(spell.target.raw))
		if downgrade then
			add_to_chat(158, downgrade)
		end
		cancel_spell()
		return
	end

	if missingHP > 0 then
		add_to_chat(158,'Trying to cure '..tostring(missingHP)..' HP using '..newWaltz..'.')
	end
end

function find_player_in_alliance(name)
	for i,v in ipairs(alliance) do
		for k,p in ipairs(v) do
			if p.name == name then
				return p
			end
		end
	end
end