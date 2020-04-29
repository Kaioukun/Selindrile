-------------------------------------------------------------------------------------------------------------------
-- Initialization function that defines sets and variables to be used.
-------------------------------------------------------------------------------------------------------------------

-- IMPORTANT: Make sure to also get the Mote-Include.lua file (and its supplementary files) to go with this.

--[[
	Custom commands:

	Shorthand versions for each strategem type that uses the version appropriate for
	the current Arts.

					Light Arts		Dark Arts

	gs c scholar cost		Penury			Parsimony
	gs c scholar speed		Celerity		Alacrity
	gs c scholar aoe		Accession		Manifestation
	gs c scholar power		Rapture			Ebullience
	gs c scholar duration		Perpetuance
	gs c scholar accuracy		Altruism		Focalization
	gs c scholar enmity		Tranquility		Equanimity
	gs c scholar skillchain					Immanence
	gs c scholar addendum		Addendum: White		Addendum: Black
--]]



-- Initialization function for this job file.
function get_sets()
	-- Load and initialize the include file.
	include('Mote-Include.lua')
end

-- Setup vars that are user-independent.
function job_setup()
	state.Buff.Sublimation = buffactive['Sublimation: Activated'] or false

	addendumNukes = S{"Stone IV", "Water IV", "Aero IV", "Fire IV", "Blizzard IV", "Thunder IV",
		"Stone V", "Water V", "Aero V", "Fire V", "Blizzard V", "Thunder V"}

	update_active_strategems()
end


-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
	-- Options: Override default values
	options.CastingModes = {'Normal', 'Resistant'}
	options.OffenseModes = {'None', 'Normal'}
	options.DefenseModes = {'Normal'}
	options.WeaponskillModes = {'Normal'}
	options.IdleModes = {'Normal', 'PDT', 'Stun'}
	options.RestingModes = {'Normal'}
	options.PhysicalDefenseModes = {'PDT'}
	options.MagicalDefenseModes = {'MDT'}

	state.OffenseMode = 'None'
	state.Defense.PhysicalMode = 'PDT'

end


-- Called when this job file is unloaded (eg: job change)
function file_unload()
	if binds_on_unload then
		binds_on_unload()
	end
end


-- Define sets and vars used by this job file.
function init_gear_sets()
	--------------------------------------
	-- Start defining the sets
	--------------------------------------
	
	-- Precast Sets

	-- Precast sets to enhance JAs

	sets.precast.JA['Tabula Rasa'] = {legs="Pedagogy Pants +1"}


	-- Fast cast sets for spells
	
	sets.precast.FC = 
		{ main="Sucellus",
		sub={ name="Genbu's Shield", augments={'"Cure" potency +4%','"Cure" spellcasting time -8%',}},
		ammo="Homiliary",
		head="Merlinic Hood",
		body="Merlinic Jubbah",
		hands="Gende. Gages +1",
		legs="Gyve Trousers",
		feet="Regal Pumps",
		neck="Orunmila's Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Enchntr. Earring +1",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back="Swith Cape +1",}

	sets.precast.FC.EnhancingMagic = set_combine(sets.precast.FC, {waist="Siegel Sash"})

	sets.precast.FC.ElementalMagic = set_combine(sets.precast.FC, {neck="Stoicheion Medal"})

	sets.precast.FC.Cure = set_combine(sets.precast.FC, {body="Heka's Kalasiris"}) -- back="Pahtli Cape"

	sets.precast.FC.Curaga = sets.precast.FC.Cure

	sets.precast.FC.Impact = set_combine(sets.precast.FC.ElementalMagic, {head=empty,body="Twilight Cloak"})

       
	-- Midcast Sets
	
	sets.midcast.FastRecast = 
	    {main="Sucellus",
		sub={ name="Genbu's Shield", augments={'"Cure" potency +4%','"Cure" spellcasting time -8%',}},
		ammo="Homiliary",
		head="Merlinic Hood",
		body="Merlinic Jubbah",
		hands="Gende. Gages +1",
		legs="Gyve Trousers",
		feet="Regal Pumps +1",
		neck="Orunmila's Torque",
		waist="Witful Belt",
		left_ear="Loquac. Earring",
		right_ear="Enchntr. Earring +1",
		left_ring="Kishar Ring",
		right_ring="Weather. Ring",
		back="Swith Cape +1",}

	sets.midcast.Cure = 
		{main="Serenity",
		sub={ name="Genbu's Shield", augments={'"Cure" potency +4%','"Cure" spellcasting time -8%',}},
		ammo="Incantor stone",
		head="Befouled Crown",
		body="Kaykaus Bliaut",
		hands={ name="Bokwus Gloves", augments={'Mag. Acc.+7','MND+3',}},
		legs="Gyve Trousers",
		feet={ name="Medium's Sabots", augments={'MP+40','MND+6','"Conserve MP"+5','"Cure" potency +3%',}},
		neck="Incantor's Torque",
		waist="Luminary Sash",
		left_ear="Etiolation Earring",
		right_ear="Mendi. Earring",
		left_ring="Lebeche Ring",
		right_ring="Karka Ring",
		back="Perimede Cape",
}

	sets.midcast.Curaga = sets.midcast.Cure

	sets.midcast.Regen = 
		{main="Gada",
		sub="Ammurapi shield",
		ammo="Incantor Stone",	
		head="Arbatel bonnet +1",
		neck="Incanter's torque",
		ear1="Nourishing earring",
		ear2="Glorious earring",
		body="Telchine chasuble",
		hands="Academic bracers +1",
		ring1="Weatherspoon ring",
		ring2="Kishar ring",
		back="Lugh's cape",
		waist="Channeler's stone",
		legs="Telchine braconi",
		feet="Telchine pigaches"}

	sets.midcast.Cursna = {
		main="Queller rod",
		sub="Sors shield",
		ammo="Incantor Stone",	
		head="Vanya hood",
		neck="Malison medallion",
		ear1="Nourishing earring",
		ear2="Glorious earring",
		body="",
		hands="",
		ring1="Ephedra ring",
		ring2="",
		back="",
		waist="Channeler's stone",
		legs="",
		feet="Gendewitha galoshes +1"}

	sets.midcast.EnhancingMagic = 
		{main={ name="Gada", augments={'Enh. Mag. eff. dur. +5','VIT+1','"Mag.Atk.Bns."+12','DMG:+1',}},
		sub="Ammurapi shield",
		ammo="Savant's Treatise",
		head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +10',}},
		body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +9',}},
		hands="Ayao's Gages",
		legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +8',}},
		feet="Telchine pigaches",
		neck="Incanter's Torque",
		waist="Witful Belt",
		left_ear="Andoaa Earring",
		right_ear="Enchntr. Earring +1",
		left_ring="Ephedra Ring",
		right_ring="Weather. Ring",
		back="Perimede Cape",
}
	
	sets.midcast.Stoneskin = set_combine(sets.midcast.EnhancingMagic, {waist="Siegel Sash"})

	sets.midcast.Storm = set_combine(sets.midcast.EnhancingMagic, {feet="Pedagogy Loafers +1"})

	sets.midcast.Protect = {ring1=""}
	sets.midcast.Protectra = sets.midcast.Protect

	sets.midcast.Shell = {ring1=""}
	sets.midcast.Shellra = sets.midcast.Shell


	-- Custom spell classes
	sets.midcast.MndEnfeebles = 
		{main="Atinian Staff",
		sub="Mephitis Grip",
		ammo="Sturm's Report",
		head="Nahtirah Hat",
		neck="Weike Torque",
		ear1="Psystorm Earring",
		ear2="Lifestorm Earring",
		body="Manasa Chasuble",
		hands="Yaoyotl Gloves",
		ring1="Aquasoul Ring",
		ring2="Sangoma Ring",
		back="Refraction Cape",
		waist="Demonry Sash",
		legs="Bokwus Slops",
		feet="Bokwus Boots"}

	sets.midcast.IntEnfeebles = 
		{main="Atinian Staff",
		sub="Mephitis Grip",
		ammo="Sturm's Report",
		head="Nahtirah Hat",
		neck="Weike Torque",
		ear1="Psystorm Earring",
		ear2="Lifestorm Earring",
		body="Manasa Chasuble",
		hands="Yaoyotl Gloves",
		ring1="Icesoul Ring",
		ring2="Sangoma Ring",
		back="Refraction Cape",
		waist="Demonry Sash",
		legs="Bokwus Slops",
		feet="Bokwus Boots"}
		
	sets.midcast.ElementalEnfeeble = sets.midcast.IntEnfeebles

	sets.midcast.DarkMagic = {main="Atinian Staff",sub="Mephitis Grip",ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Aesir Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
		body="Vanir Cotehardie",hands="Yaoyotl Gloves",ring1="Strendu Ring",ring2="Sangoma Ring",
		back="Refraction Cape",waist="Goading Belt",legs="Bokwus Slops",feet="Bokwus Boots"}

	sets.midcast.Kaustra = {main="Atinian Staff",sub="Wizzan Grip",ammo="Witchstone",
		head="Hagondes Hat",neck="Stoicheion Medal",ear1="Hecate's Earring",ear2="Friomisi Earring",
		body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Icesoul Ring",ring2="Strendu Ring",
		back="Toro Cape",waist="Cognition Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}

	sets.midcast.Drain = {main="Atinian Staff",sub="Mephitis Grip",ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Aesir Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
		body="Vanir Cotehardie",hands="Gendewitha Gages",ring1="Excelsis Ring",ring2="Sangoma Ring",
		back="Refraction Cape",waist="Goading Belt",legs="Pedagogy Pants",feet="Academic's Loafers"}
	
	sets.midcast.Aspir = sets.midcast.Drain

	sets.midcast.Stun = {main="Apamajas II",sub="Mephitis Grip",ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Aesir Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
		body="Vanir Cotehardie",hands="Gendewitha Gages",ring1="Prolix Ring",ring2="Sangoma Ring",
		back="Refraction Cape",waist="Witful Belt",legs="Pedagogy Pants",feet="Academic's Loafers"}

	sets.midcast.Stun.Resistant = set_combine(sets.midcast.Stun, {main="Atinian Staff"})


	-- Elemental Magic sets are default for handling low-tier nukes.
		sets.midcast.ElementalMagic = 
		{main="Akademos",
		sub="Enki Strap",
		ammo="Elis Tome",
		head="Merlinic Hood",
		body={ name="Chironic Doublet", augments={'Mag. Acc.+25','MND+9','"Mag.Atk.Bns."+13',}},
		hands={ name="Chironic Gloves", augments={'Mag. Acc.+20','"Cure" potency +6%','CHR+4','"Mag.Atk.Bns."+4',}},
		legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+24','Magic burst dmg.+10%','CHR+5','"Mag.Atk.Bns."+11',}},
		feet="Arbatel Loafers +1",
		neck="Incanter's Torque",
		waist="Luminary Sash",
		left_ear="Etiolation Earring",
		right_ear="Friomisi Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring",
		back="Lugh's Cape",
}

	sets.midcast.ElementalMagic.Resistant =
		{main="Atinian Staff",
		sub="Wizzan Grip",	
		ammo="Witchstone",
		head="Hagondes Hat",neck="Stoicheion Medal",ear1="Psystorm Earring",ear2="Lifestorm Earring",
		body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Icesoul Ring",ring2="Strendu Ring",
		back="Toro Cape",waist=gear.ElementalObi,legs="Hagondes Pants",feet="Bokwus Boots"}

	-- Custom classes for high-tier nukes.
	sets.midcast.HighTierNuke = {main="Atinian Staff",sub="Wizzan Grip",ammo="Witchstone",
		head="Hagondes Hat",neck="Stoicheion Medal",ear1="Hecate's Earring",ear2="Friomisi Earring",
		body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Icesoul Ring",ring2="Strendu Ring",
		back="Toro Cape",waist=gear.ElementalObi,legs="Hagondes Pants",feet="Hagondes Sabots"}

	sets.midcast.HighTierNuke.Resistant = {main="Atinian Staff",sub="Mephitis Grip",ammo="Witchstone",
		head="Hagondes Hat",neck="Stoicheion Medal",ear1="Psystorm Earring",ear2="Lifestorm Earring",
		body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Icesoul Ring",ring2="Strendu Ring",
		back="Toro Cape",waist=gear.ElementalObi,legs="Hagondes Pants",feet="Bokwus Boots"}
	
	-- Sets for helixes
	sets.midcast.Helix = {main="Atinian Staff",sub="Wizzan Grip",ammo="Witchstone",
		head="Hagondes Hat",neck="Stoicheion Medal",ear1="Hecate's Earring",ear2="Friomisi Earring",
		body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Icesoul Ring",ring2="Strendu Ring",
		back="Toro Cape",waist=gear.ElementalObi,legs="Hagondes Pants",feet="Hagondes Sabots"}

	sets.midcast.Helix.Resistant = {main="Atinian Staff",sub="Mephitis Grip",ammo="Witchstone",
		head="Hagondes Hat",neck="Stoicheion Medal",ear1="Psystorm Earring",ear2="Lifestorm Earring",
		body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Icesoul Ring",ring2="Strendu Ring",
		back="Toro Cape",waist=gear.ElementalObi,legs="Hagondes Pants",feet="Bokwus Boots"}

	sets.midcast.Impact = {main="Atinian Staff",sub="Mephitis Grip",ammo="Witchstone",
		head=empty,neck="Stoicheion Medal",ear1="Psystorm Earring",ear2="Lifestorm Earring",
		body="Twilight Cloak",hands="Yaoyotl Gloves",ring1="Icesoul Ring",ring2="Strendu Ring",
		back="Toro Cape",waist=gear.ElementalObi,legs="Hagondes Pants",feet="Bokwus Boots"}


	-- Sets to return to when not performing an action.
	
	-- Resting sets
	sets.resting = {main="Chatoyant Staff",sub="Mephitis Grip",
		head="Nefer Khat +1",neck="Wiglen Gorget",
		body="Kaykaus bliaut",hands="Serpentes Cuffs",ring1="Stikini Ring",ring2="Stikini Ring +1",
		waist="Austerity Belt",legs="Nares Tres",feet="Serpentes Sabots"}
	

	-- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)

	sets.idle.Town = 
		{main="Bolelabunga",
    sub={ name="Genbu's Shield", augments={'"Cure" potency +4%','"Cure" spellcasting time -8%',}},
    ammo="Homiliary",
    head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    body="Arbatel gown +1",
    hands="Acad. Bracers +1",
    legs="Acad. Pants +1",
    feet="Battlecast Gaiters",
    neck="Loricate torque",
    waist="Luminary Sash",
    left_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}},
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back="Moonbeam Cape",}
	
	sets.idle.Field = 
		{main="Bolelabunga",
    sub={ name="Genbu's Shield", augments={'"Cure" potency +4%','"Cure" spellcasting time -8%',}},
    ammo="Homiliary",
    head={ name="Vanya Hood", augments={'MP+50','"Cure" potency +7%','Enmity-6',}},
    body="Arbatel gown +1",
    hands="Acad. Bracers +1",
    legs="Assiduity pants +1",
    feet="Battlecast Gaiters",
    neck="Loricate torque",
    waist="Luminary Sash",
    left_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}},
    right_ear="Loquac. Earring",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring",
    back="Moonbeam Cape",}

	sets.idle.Field.PDT = {main=gear.Staff.PDT,sub="Achaq Grip",ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
		body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Sheltered Ring",ring2="Paguroidea Ring",
		back="Umbra Cape",waist="Hierarch Belt",legs="Nares Trews",feet="Herald's Gaiters"}

	sets.idle.Field.Stun = {main="Apamajas II",sub="Mephitis Grip",ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Aesir Torque",ear1="Psystorm Earring",ear2="Lifestorm Earring",
		body="Vanir Cotehardie",hands="Gendewitha Gages",ring1="Prolix Ring",ring2="Sangoma Ring",
		back="Swith Cape",waist="Goading Belt",legs="Bokwus Slops",feet="Academic's Loafers"}

	sets.idle.Weak = {main=gear.Staff.PDT,sub="Achaq Grip",ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Wiglen Gorget",ear1="Bloodgem Earring",ear2="Loquacious Earring",
		body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Sheltered Ring",ring2="Meridian Ring",
		back="Umbra Cape",waist="Hierarch Belt",legs="Nares Trews",feet="Herald's Gaiters"}
	
	-- Defense sets

	sets.defense.PDT = {main=gear.Staff.PDT,sub="Achaq Grip",ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Loricate Torque",ear1="Bloodgem Earring",ear2="Loquacious Earring",
		body="Hagondes Coat",hands="Yaoyotl Gloves",ring1="Dark Ring",ring2="Dark Ring",
		back="Umbra Cape",waist="Hierarch Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}

	sets.defense.MDT = {main=gear.Staff.PDT,sub="Achaq Grip",ammo="Incantor Stone",
		head="Nahtirah Hat",neck="Loricate Torque",ear1="Bloodgem Earring",ear2="Loquacious Earring",
		body="Vanir Cotehardie",hands="Yaoyotl Gloves",ring1="Dark Ring",ring2="Shadow Ring",
		back="Tuilha Cape",waist="Hierarch Belt",legs="Bokwus Slops",feet="Hagondes Sabots"}

	sets.Kiting = {feet="Herald's Gaiters"}

	-- Engaged sets

	-- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
	-- sets if more refined versions aren't defined.
	-- If you create a set with both offense and defense modes, the offense mode should be first.
	-- EG: sets.engaged.Dagger.Accuracy.Evasion
	
	-- Normal melee group
	sets.engaged = {
		head="Zelus Tiara",
		body="Vanir Cotehardie",hands="Bokwus Gloves",ring1="Rajas Ring",
		waist="Goading Belt",legs="Hagondes Pants",feet="Hagondes Sabots"}



	-- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
	sets.buff['Ebullience'] = {head="Arbatel bonnet +1"}
	sets.buff['Rapture'] = {head="Arbatel bonnet +1"}
	sets.buff['Perpetuance'] = {hands="Arbatel bracers +1"}
	sets.buff['Immanence'] = {hands="Arbatel bracers +1"}
	sets.buff['Penury'] = {legs="Arbatel pants +1"}
	sets.buff['Parsimony'] = {legs="Arbatel pants +1"}
	sets.buff['Celerity'] = {feet="Pedagogy Loafers +1"}
	sets.buff['Alacrity'] = {feet="Pedagogy Loafers +1"}

	sets.buff['Klimaform'] = {feet="Arbatel loafers +1"}

	sets.buff.FullSublimation = 
	{head="Academic's Mortarboard +1",
	ear1="",
	body="Pedagogy gown +1"}
	
	sets.buff.PDTSublimation = 
	{head="Academic's Mortarboard +1",
	ear1=""}

	--sets.buff['Sandstorm'] = {feet="Desert Boots"}
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks that are called to process player actions at specific points in time.
-------------------------------------------------------------------------------------------------------------------

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
-- Set eventArgs.useMidcastGear to true if we want midcast gear equipped on precast.
function job_precast(spell, action, spellMap, eventArgs)
	classes.CustomClass = get_spell_class(spell, action, spellMap)
end


-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_midcast(spell, action, spellMap, eventArgs)
	if spell.action_type == 'Magic' then
		equip(sets.midcast.FastRecast)
	end
end

-- Run after the general midcast() is done.
function job_post_midcast(spell, action, spellMap, eventArgs)
	if spell.action_type == 'Magic' then
		apply_grimoire_bonuses(spell, action, spellMap, eventArgs)
	end
end

-- Set eventArgs.handled to true if we don't want any automatic gear equipping to be done.
function job_aftercast(spell, action, spellMap, eventArgs)
	if not spell.interrupted then
		if state.Buff[spell.english] ~= nil then
			state.Buff[spell.english] = true
		end
	end
end


-------------------------------------------------------------------------------------------------------------------
-- Customization hooks for idle and melee sets, after they've been automatically constructed.
-------------------------------------------------------------------------------------------------------------------

function customize_idle_set(idleSet)
	if state.Buff.Sublimation then
		if state.IdleMode == 'Normal' then
			idleSet = set_combine(idleSet, sets.buff.FullSublimation)
		elseif state.IdleMode == 'PDT' then
			idleSet = set_combine(idleSet, sets.buff.PDTSublimation)
		end
	end
	
	return idleSet
end

-------------------------------------------------------------------------------------------------------------------
-- General hooks for other events.
-------------------------------------------------------------------------------------------------------------------

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
	if buff == "Sublimation: Activated" then
		state.Buff.Sublimation = gain
		handle_equipping_gear(player.status)
	elseif state.Buff[buff] ~= nil then
		state.Buff[buff] = gain
	end
end


-------------------------------------------------------------------------------------------------------------------
-- User code that supplements self-commands.
-------------------------------------------------------------------------------------------------------------------

-- Called for direct player commands.
function job_self_command(cmdParams, eventArgs)
	if cmdParams[1]:lower() == 'scholar' then
		handle_strategems(cmdParams)
		eventArgs.handled = true
	end
end


-- Called by the 'update' self-command.
function job_update(cmdParams, eventArgs)
	if cmdParams[1] == 'user' and not (buffactive['light arts']      or buffactive['dark arts'] or
					   buffactive['addendum: white'] or buffactive['addendum: black']) then
		if state.IdleMode == 'Stun' then
			send_command('@input /ja "Dark Arts" <me>')
		else
			send_command('@input /ja "Light Arts" <me>')
		end
	end
	
	update_active_strategems()
end


-- Function to display the current relevant user state when doing an update.
-- Return true if display was handled, and you don't want the default info shown.
function display_current_job_state(eventArgs)
	local defenseString = ''
	if state.Defense.Active then
		local defMode = state.Defense.PhysicalMode
		if state.Defense.Type == 'Magical' then
			defMode = state.Defense.MagicalMode
		end

		defenseString = 'Defense: '..state.Defense.Type..' '..defMode..', '
	end
	
	local meleeString = ''
	if state.OffenseMode == 'Normal' then
		meleeString = 'Melee: Weapons locked, '
	end

	add_to_chat(122,'Casting ['..state.CastingMode..'], '..meleeString..'Idle ['..state.IdleMode..'], '..defenseString..
		'Kiting: '..on_off_names[state.Kiting])

	eventArgs.handled = true
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Reset the state vars tracking strategems.
function update_active_strategems()
	state.Buff['Ebullience'] = buffactive['Ebullience'] or false
	state.Buff['Rapture'] = buffactive['Rapture'] or false
	state.Buff['Perpetuance'] = buffactive['Perpetuance'] or false
	state.Buff['Immanence'] = buffactive['Immanence'] or false
	state.Buff['Penury'] = buffactive['Penury'] or false
	state.Buff['Parsimony'] = buffactive['Parsimony'] or false
	state.Buff['Celerity'] = buffactive['Celerity'] or false
	state.Buff['Alacrity'] = buffactive['Alacrity'] or false

	state.Buff['Klimaform'] = buffactive['Klimaform'] or false
end


-- Equip sets appropriate to the active buffs, relative to the spell being cast.
function apply_grimoire_bonuses(spell, action, spellMap)
	if state.Buff.Perpetuance and spell.skill == 'EnhancingMagic' then
		equip(sets.buff['Perpetuance'])
	end
	if state.Buff.Rapture and spellMap == 'Cure' or spellMap == 'Curaga' then
		equip(sets.buff['Rapture'])
	end
	if spell.skill == 'ElementalMagic' and spellMap ~= 'ElementalEnfeeble' then
		if state.Buff.Ebullience and spell.english ~= 'Impact' then
			equip(sets.buff['Ebullience'])
		end
		if state.Buff.Immanence then
			equip(sets.buff['Immanence'])
		end
		if state.Buff.Klimaform and spell.element == world.weather_element then
			equip(sets.buff['Klimaform'])
		end
	end
	
	if state.Buff.Penury then equip(sets.buff['Penury']) end
	if state.Buff.Parsimony then equip(sets.buff['Parsimony']) end
	if state.Buff.Celerity then equip(sets.buff['Celerity']) end
	if state.Buff.Alacrity then equip(sets.buff['Alacrity']) end
end


-- General handling of strategems in an Arts-agnostic way.
-- Format: gs c scholar <strategem>
function handle_strategems(cmdParams)
	-- cmdParams[1] == 'scholar'
	-- cmdParams[2] == strategem to use
	
	if not cmdParams[2] then
		add_to_chat(123,'Error: No strategem command given.')
		return
	end
	local strategem = cmdParams[2]:lower()
	
	if buffactive['light arts'] or buffactive['addendum: white'] then
		if strategem == 'cost' then
			send_command('@input /ja Penury <me>')
		elseif strategem == 'speed' then
			send_command('@input /ja Celerity <me>')
		elseif strategem == 'aoe' then
			send_command('@input /ja Accession <me>')
		elseif strategem == 'power' then
			send_command('@input /ja Rapture <me>')
		elseif strategem == 'duration' then
			send_command('@input /ja Perpetuance <me>')
		elseif strategem == 'accuracy' then
			send_command('@input /ja Altruism <me>')
		elseif strategem == 'enmity' then
			send_command('@input /ja Tranquility <me>')
		elseif strategem == 'skillchain' then
			add_to_chat(122,'Error: Light Arts does not have a skillchain strategem.')
		elseif strategem == 'addendum' then
			send_command('@input /ja "Addendum: White" <me>')
		else
			add_to_chat(123,'Error: Unknown strategem ['..strategem..']')
		end
	elseif buffactive['dark arts']  or buffactive['addendum: black'] then
		if strategem == 'cost' then
			send_command('@input /ja Parsimony <me>')
		elseif strategem == 'speed' then
			send_command('@input /ja Alacrity <me>')
		elseif strategem == 'aoe' then
			send_command('@input /ja Manifestation <me>')
		elseif strategem == 'power' then
			send_command('@input /ja Ebullience <me>')
		elseif strategem == 'duration' then
			add_to_chat(122,'Error: Dark Arts does not have a duration strategem.')
		elseif strategem == 'accuracy' then
			send_command('@input /ja Focalization <me>')
		elseif strategem == 'enmity' then
			send_command('@input /ja Equanimity <me>')
		elseif strategem == 'skillchain' then
			send_command('@input /ja Immanence <me>')
		elseif strategem == 'addendum' then
			send_command('@input /ja "Addendum: Black" <me>')
		else
			add_to_chat(123,'Error: Unknown strategem ['..strategem..']')
		end
	else
		add_to_chat(123,'No arts has been activated yet.')
	end
end


-- Gets the current number of available strategems based on the recast remaining
-- and the level of the sch.
function get_current_strategem_count()
	-- returns recast in seconds.
	local allRecasts = windower.ffxi.get_ability_recasts()
	local stratsRecast = allRecasts[231]
	
	local maxStrategems
	
	if player.main_job_level >= 90 then
		maxStrategems = 5
	elseif player.main_job_level >= 70 then
		maxStrategems = 4
	elseif player.main_job_level >= 50 then
		maxStrategems = 3
	elseif player.main_job_level >= 30 then
		maxStrategems = 2
	elseif player.main_job_level >= 10 then
		maxStrategems = 1
	else
		maxStrategems = 0
	end
	
	local fullRechargeTime = 4*60
	
	local currentCharges = math.floor(maxStrategems - maxStrategems * stratsRecast / fullRechargeTime)
	
	return currentCharges
end

function get_spell_class(spell, action, spellMap)
	local spellclass
	
	if spell.action_type == 'Magic' then
		if spellMap == 'Cure' or spellMap == 'Curaga' then
			if world.weather_element == 'Light' then
				classes.CustomClass = 'CureWithLightWeather'
			end
		elseif spell.skill == "EnfeeblingMagic" then
			if spell.type == "WhiteMagic" then
				spellclass = "MndEnfeebles"
			else
				spellclass = "IntEnfeebles"
			end
		end
	end
	
	return spellclass
end

