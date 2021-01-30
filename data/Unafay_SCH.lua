-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

--[[
        Custom commands:

        Shorthand versions for each strategem type that uses the version appropriate for
        the current Arts.

                                        Light Arts              Dark Arts

        gs c scholar light              Light Arts/Addendum
        gs c scholar dark                                       Dark Arts/Addendum
        gs c scholar cost               Penury                  Parsimony
        gs c scholar speed              Celerity                Alacrity
        gs c scholar aoe                Accession               Manifestation
        gs c scholar power              Rapture                 Ebullience
        gs c scholar duration           Perpetuance
        gs c scholar accuracy           Altruism                Focalization
        gs c scholar enmity             Tranquility             Equanimity
        gs c scholar skillchain                                 Immanence
        gs c scholar addendum           Addendum: White         Addendum: Black
--]]



-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

    -- Load and initialize the include file.
    include('Mote-Include.lua')
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    info.addendumNukes = S{"Stone IV", "Water IV", "Aero IV", "Fire IV", "Blizzard IV", "Thunder IV",
        "Stone V", "Water V", "Aero V", "Fire V", "Blizzard V", "Thunder V"}

    state.Buff['Sublimation: Activated'] = buffactive['Sublimation: Activated'] or false
    update_active_strategems()
end

-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.OffenseMode:options('None', 'Normal')
    state.CastingMode:options('Normal', 'Resistant')
    state.IdleMode:options('Normal', 'PDT')


    info.low_nukes = S{"Stone", "Water", "Aero", "Fire", "Blizzard", "Thunder", "Stone II", "Water II", "Aero II", "Fire II", "Blizzard II", "Thunder II",
                       "Stone III", "Water III", "Aero III", "Fire III", "Blizzard III", "Thunder III",
                       "Stone IV", "Water IV", "Aero IV", "Fire IV", "Blizzard IV", "Thunder IV","Stone V", "Water V", "Aero V", "Fire V", "Blizzard V", "Thunder V"
}
    info.mid_nukes = S{"Stone", "Water", "Aero", "Fire", "Blizzard", "Thunder", "Stone II", "Water II", "Aero II", "Fire II", "Blizzard II", "Thunder II",
                       "Stone III", "Water III", "Aero III", "Fire III", "Blizzard III", "Thunder III",
 }                      
	
    info.high_nukes = S{"Geohelix II", "Pyrohelix II", "Hydrohelix II", "Anemohelix II", "Cryohelix II", "Ionohelix II", "Noctohelix II", "Luminohelix II","Stone IV", "Water IV", "Aero IV", "Fire IV", "Blizzard IV", "Thunder IV","Stone V", "Water V", "Aero V", "Fire V", "Blizzard V", "Thunder V"
}

    send_command('bind ^` input /ma Stun <t>')

    select_default_macro_book()
end

function user_unload()
    send_command('unbind ^`')
end


-- Define sets and vars used by this job file.
function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------

    -- Precast Sets

    -- Precast sets to enhance JAs
    sets.precast.JA['Sublimation'] ={
    main="Musa",
    sub="Clerisy strap +1",
    ammo="Incanter stone",
    head="Acad. Mortar. +3",
    body={ name="Peda. Gown +3", augments={'Enhances "Enlightenment" effect',}},
    hands="",
    legs="Amalric Slops +1",
    feet="Amalric Nails +1",
    neck= "Sanctity Necklace",
    waist="Embla Sash",
    left_ear="Savant's Earring",
    right_ear="Etiolation Earring",
    left_ring="",
    right_ring="",
    back="Fi Follet Cape +1",
}
    sets.precast.JA['Tabula Rasa'] = {legs="Pedagogy Pants +3"}
	sets.precast.JA['Dark Arts'] = {body="Acad. Gown +3"}
	sets.precast.JA['Light Arts'] = {legs="Acad. Pants +2"}
    
    -- Fast cast sets for Elemental spells

    sets.precast.FC = { 
    main="Musa",
    sub="Clerisy Strap",
    ammo="Sapience Orb",
    head={ name="Peda. M.Board +2", augments={'Enh. "Altruism" and "Focalization"',}},
    body="Merlinic Jubbah",
    hands="Acad. Bracers +2",
    legs="Volte brais",
    feet="Volte gaiters",
    neck="Orunmila's Torque",
    waist="Embla Sash",
    left_ear="Malignance Earring",
    right_ear="Enchanter Earring +1",
    left_ring="Kishar Ring",
    right_ring="Lebeche Ring",
    back="Fi Follet Cape +1",
}

    sets.precast.Impact = set_combine(sets.midcast['Elemental Magic'], {body="Twilight Cloak"})


    -- Midcast Sets

    sets.midcast.FastRecast = { 
    main="Musa",
    sub="Clerisy Strap +1",
    ammo="Sapience Orb",
    head="Cath Palug crown",
    body="Merlinic Jubbah",
    hands="Acad. Bracers +2",
    legs="Volte brais",
    feet="Volte gaiters",
    neck="Orunmila's Torque",
    waist="Embla Sash",
    left_ear="Malignance Earring",
    right_ear="Enchanter Earring +1",
    left_ring="Kishar Ring",
    right_ring="Weatherspoon ring",
    back="Fi Follet Cape +1",
}

   sets.midcast.Cure = {
    main="Musa",
    sub="Genbu's shield",
    head="Vanya Hood",
    body="Kaykaus bliaut",
    hands="Ayao's gages",
    legs="Doyen pants",
    feet="Vanya Clogs",
    neck="Incanter's Torque",
    waist="",
    left_ear="Meili Earring",
    right_ear="Beatific Earring",
    left_ring="Haoma's ring",
    right_ring="Sirona's ring",
    back="Altruistic cape",
}
    sets.midcast.Curaga = sets.midcast.Cure

    sets.midcast.Regen = {
		main="Musa",
		sub="Oneiros grip",
		head="Arbatel Bonnet +1",
		neck="Incanter's Torque",
		ear1="Andoaa Earring",
		ear2="Mimir earring",
        body="Pedagogy gown +3",
		hands="Arbatel bracers +1",
		Ring1="Stikini Ring +1",
		Ring2="Stikini Ring +1",
        back="Lugh's Cape",
		waist="Embla Sash",
		legs="Telchine Braconi",
		feet="Telchine Pigaches"
}
	sets.midcast.Haste = {main="Musa",sub="Ammurapi Shield",ammo="Savant's Treatise",
        head="Telchine Cap",neck="Incanter's Torque",ear1="Andoaa Earring",
        body="Peda. Gown +3",hands="Telchine Gloves",Ring1="Stikini Ring +1",Ring2="Stikini Ring",
        back="Fi Follet +1",waist="Embla Sash",legs="Telchine Braconi",feet="Telchine Pigaches"}
	
    sets.midcast.Cursna = {
		main="Musa",
		sub="Sors shield",
		ammo="Incantor Stone",	
		head="Vanya hood",
		neck="Malison medallion",	
		ear1="Nourishing earring",
		ear2="Glorious earring",
		body="Ebers bliaud +1",
		hands="Hieros mittens",
		ring1="Haoma's ring",
		ring2="Haoma's ring",
		back="Alaunus's cape",
		waist="Channeler's stone",
		legs="Volte brais",
		feet="Vanya clogs",
}

    sets.midcast['Enhancing Magic'] = {main="Musa",sub="Ammurapi Shield",ammo="Savant's Treatise",
        head="Telchine Cap",neck="Incanter's Torque",ear1="Andoaa Earring", ear2="Mimir Earring",
        body="Peda. Gown +3",hands="Telchine Gloves",Ring1="Stikini Ring +1",Ring2="Stikini Ring",
        back="Fi Follet Cape +1",waist="Embla Sash",legs="Telchine Braconi",feet="Telchine Pigaches"}

    sets.midcast.Stoneskin = set_combine(sets.midcast['Enhancing Magic'], {
    neck="Nodens Gorget",
    waist="Siegel Sash",
})
    sets.midcast.Refresh = set_combine(sets.midcast['Enhancing Magic'], {waist="Gishdubar Sash",})

    sets.midcast.Storm = set_combine(sets.midcast['Enhancing Magic'])
    
	sets.midcast.Protect = set_combine(sets.midcast['Enhancing Magic'], {ring2="Sheltered Ring"})
    sets.midcast.Protectra = sets.midcast.Protect

    sets.midcast.Shell = set_combine(sets.midcast['Enhancing Magic'], {ring2="Sheltered Ring"})
    sets.midcast.Shellra = sets.midcast.Shell


    -- Custom spell classes
    sets.midcast.MndEnfeebles = { 
	main="Musa",
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Acad. Mortar. +3",
    body="Acad. Gown +3",
    hands="Acad. Bracers +2",
    legs="Acad. Pants +3",
    feet="Acad. Loafers +3",
    neck=="Argute Stole +1",
    waist="",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Stikini Ring +1",
    right_ring={ name="Metamor. Ring +1", augments={'Path: A',}},
    back={ name="Aurist's Cape +1", augments={'Path: A',}},
}
    sets.midcast.IntEnfeebles = {
    main="Maxentius",
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Acad. Mortar. +3",
    body="Acad. Gown +3",
    hands="Acad. Bracers +2",
    legs="Acad. Pants +3",
    feet="Acad. Loafers +3",
    neck="Argute Stole +1",
    waist="Sacro Cord",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Stikini Ring +1",
    right_ring="",
    back="",
}
    sets.midcast.ElementalEnfeeble = sets.midcast.IntEnfeebles

    sets.midcast['Dark Magic'] = {
    main="Maxentius",
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body="Acad. Gown +3",
    hands="Acad. Bracers +2",
    legs={ name="Peda. Pants +3", augments={'Enhances "Tabula Rasa" effect',}},
    feet="Merlinic Crackows",
    neck="Erra Pendant",
    waist="Fucho-no-Obi",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back="Bookworm's Cape",
}
    sets.midcast.Kaustra = {
    main={ name="Akademos", augments={'MP+80','INT+20','"Mag.Atk.Bns."+20',}},
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body={ name="Merlinic Jubbah", augments={'Mag. Acc.+19 "Mag.Atk.Bns."+19','Magic burst dmg.+10%','Mag. Acc.+15','"Mag.Atk.Bns."+12',}},
    hands={ name="Amalric Gages +1", augments={'INT+12','Mag. Acc.+20','"Mag.Atk.Bns."+20',}},
    legs={ name="Amalric Slops +1", augments={'MP+80','"Mag.Atk.Bns."+25','Enmity-6',}},
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+26','Magic burst dmg.+10%','Mag. Acc.+13',}},
    neck={ name="Argute Stole +2", augments={'Path: A',}},
    waist="Hachirin-no-Obi",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Freke Ring",
    right_ring="Archon Ring",
    back={ name="Bookworm's Cape", augments={'INT+2','MND+1','Helix eff. dur. +20','"Regen" potency+6',}},
}

    sets.midcast.Drain = {
    main="Maxentius",
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Pixie Hairpin +1",
    body="Acad. Gown +3",
    hands="Acad. Bracers +2",
    legs={ name="Peda. Pants +3", augments={'Enhances "Tabula Rasa" effect',}},
    feet={ name="Merlinic Crackows", augments={'"Mag.Atk.Bns."+26','Magic burst dmg.+10%','Mag. Acc.+13',}},
    neck="Erra Pendant",
    waist="Fucho-no-Obi",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back={ name="Bookworm's Cape", augments={'INT+2','MND+1','Helix eff. dur. +20','"Regen" potency+6',}},
}
    

    sets.midcast.Stun = {
    main="Maxentius",
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Acad. Mortar. +2",
    body="Acad. Gown +3",
    hands="Acad. Bracers +2",
    legs="Acad. Pants +3",
    feet="Acad. Loafers +3",
    neck="Argute Stole +1",
    waist="Sacro Cord",
    left_ear="Regal Earring",
    right_ear="Malignance Earring",
    left_ring="Stikini Ring +1",
    right_ring="",
    back="",
}

    sets.midcast.Stun.Resistant = set_combine(sets.midcast.Stun, {main="Akademos"})


    -- Elemental Magic sets are default for handling low-tier nukes.
    sets.midcast['Elemental Magic'] = {
		main="Akademos",
		sub="Khonsu",
		ammo="Pemphredo tathlum",
		head="Peda. M.Board +2",
		body="Merlinic Jubbah",
		hands="Amalric Gages +1",
		legs="Amalric Slops +1",
		feet="Academic's loafers +3",
		neck="Argute Stole +1",
		waist="Hachirin-no-Obi",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Shiva ring +1",
		right_ring="Mujin band",
		back="Lugh's cape",
}
    

    sets.midcast['Elemental Magic'].MidTierNuke = {
		main="Akademos",
		sub="Khonsu",
		ammo="Pemphredo tathlum",
		head="Peda. M.Board +2",
		body="Merlinic Jubbah",
		hands="Amalric Gages +1",
		legs="Amalric Slops +1",
		feet="Academic's loafers +3",
		neck="Argute Stole +1",
		waist="Hachirin-no-Obi",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Shiva ring +1",
		right_ring="Mujin band",
		back="Lugh's cape",
}
	
    -- Custom refinements for certain nuke tiers
    sets.midcast['Elemental Magic'].HighTierNuke = { 
		main="Akademos",
		sub="Khonsu",
		ammo="Pemphredo tathlum",
		head="Peda. M.Board +2",
		body="Merlinic Jubbah",
		hands="Amalric Gages +1",
		legs="Amalric Slops +1",
		feet="Academic's loafers +3",
		neck="Argute Stole +1",
		waist="Hachirin-no-Obi",
		left_ear="Malignance Earring",
		right_ear="Regal Earring",
		left_ring="Shiva ring +1",
		right_ring="Mujin band",
		back="Lugh's cape",
}

    -- Sets to return to when not performing an action.

    -- Resting sets
    sets.resting = {
    main="Boonwell Staff",
    sub="Oneiros Grip",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Academic's gown +3",
    hands="Volte gloves",
    legs="Volte Brais",
    feet="Battlecast gaiters",
    neck="Bathy Choker",
    waist="Fucho-no-Obi",
    left_ear="Infused Earring",
    right_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}},
    left_ring="Stikini Ring +1",
    right_ring="Defending ring",
    back="Moonbeam Cape",
}


    -- Idle sets (default idle set not needed since the other three are defined, but leaving for testing purposes)

    sets.idle.Town = {
    main="Musa",
    sub="Khonsu",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Academic's gown +3", 
    hands="Volte gloves",
    legs="Volte brais",
    feet="Volte gaiters",
    neck="Loricate Torque +1",
    waist="Fucho-no-Obi",
    left_ear="",
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
}
    sets.idle.Field = {
    main="Musa",
    sub="Khonsu",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Academic's gown +3",
    hands="Volte gloves",
    legs="Volte brais",
    feet="Volte gaiters",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Fucho-no-Obi",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
}
    sets.idle.Field.PDT = {
    main="Musa",
    sub="Khonsu",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Academic's gown +3",
    hands="Volte gloves",
    legs="Volte brais",
    feet="Volte gaiters",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Fucho-no-Obi",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
}

    sets.idle.Weak = {
    main="Musa",
    sub="Khonsu",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Academic's gown +3",
    hands="Volte gloves",
    legs="Volte brais",
    feet="Volte gaiters",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Fucho-no-Obi",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
}

    -- Defense sets

    sets.defense.PDT = {
    main="Musa",
    sub="Khonsu",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Academic's gown +3",
    hands={ name="Kaykaus Cuffs", augments={'MP+60','MND+10','Mag. Acc.+15',}},
    legs="Volte brais",
    feet="Volte gaiters",
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Fucho-no-Obi",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
}
    sets.defense.MDT = {main=gear.Staff.PDT,sub="Achaq Grip",ammo="Incantor Stone",
        head="Nahtirah Hat",neck="Twilight Torque",ear1="Bloodgem Earring",ear2="Loquacious Earring",
        body="Vanir Cotehardie",hands="Yaoyotl Gloves",ring1="Defending Ring",ring2="Shadow Ring",
        back="Tuilha Cape",waist="Hierarch Belt",legs="Bokwus Slops",feet="Hagondes Sabots"}

    sets.Kiting = {feet="Herald's Gaiters"}

    sets.latent_refresh = {waist="Fucho-no-obi"}

    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion

    -- Normal melee group
    sets.engaged = {
    main="Malignance Pole",
    sub="Oneiros grip",
    ammo="Homiliary",
    head="Befouled Crown",
    body="Academic's gown +3",
    hands={ name="Kaykaus Cuffs", augments={'MP+60','MND+10','Mag. Acc.+15',}},
    legs="Volte brais",
    feet={ name="Merlinic Crackows", augments={'INT+6','Weapon Skill Acc.+3','"Refresh"+2','Mag. Acc.+12 "Mag.Atk.Bns."+12',}},
    neck={ name="Loricate Torque +1", augments={'Path: A',}},
    waist="Fucho-no-Obi",
    left_ear={ name="Odnowa Earring +1", augments={'Path: A',}},
    right_ear="Etiolation Earring",
    left_ring="Defending Ring",
    right_ring="Stikini Ring +1",
    back="Moonbeam Cape",
}


    -- Buff sets: Gear that needs to be worn to actively enhance a current player buff.
    sets.buff['Rapture'] = {head="Arbatel Bonnet +1"}
    sets.buff['Perpetuance'] = {hands="Arbatel Bracers +1"}
    sets.buff['Immanence'] = {hands="Arbatel Bracers +1"}
    sets.buff['Penury'] = {legs="Arbatel Pants +1"}
    sets.buff['Parsimony'] = {legs="Arbatel Pants +1"}
    sets.buff['Celerity'] = {feet="Pedagogy Loafers +3"}
    sets.buff['Alacrity'] = {feet="Pedagogy Loafers +3"}
    sets.buff.FullSublimation = {head="Academic's Mortarboard +3",ear1="Savant's Earring",body="Pedagogy Gown +3",waist="Embla Sash"}
    
    --sets.buff['Sandstorm'] = {feet="Desert Boots"}
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------

-- Run after the general midcast() is done.
function job_post_midcast(spell, action, spellMap, eventArgs)
    if spell.action_type == 'Magic' then
        apply_grimoire_bonuses(spell, action, spellMap, eventArgs)
    end
end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    if buff == "Sublimation: Activated" then
        handle_equipping_gear(player.status)
    end
end

-- Handle notifications of general user state change.
function job_state_change(stateField, newValue, oldValue)
    if stateField == 'Offense Mode' then
        if newValue == 'Normal' then
            disable('main','sub','range')
        else
            enable('main','sub','range')
        end
    end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

-- Custom spell mapping.
function job_get_spell_map(spell, default_spell_map)
    if spell.action_type == 'Magic' then
        if default_spell_map == 'Cure' or default_spell_map == 'Curaga' then
            if world.weather_element == 'Light' then
                return 'CureWithLightWeather'
            end
        elseif spell.skill == 'Enfeebling Magic' then
            if spell.type == 'WhiteMagic' then
                return 'MndEnfeebles'
            else
                return 'IntEnfeebles'
            end
        elseif spell.skill == 'Elemental Magic' then
            if info.low_nukes:contains(spell.english) then
                return 'LowTierNuke'
            elseif info.mid_nukes:contains(spell.english) then
                return 'MidTierNuke'
            elseif info.high_nukes:contains(spell.english) then
                return 'HighTierNuke'
            end
        end
    end
end

function customize_idle_set(idleSet)
    if state.Buff['Sublimation: Activated'] then
        if state.IdleMode.value == 'Normal' then
            idleSet = set_combine(idleSet, sets.buff.FullSublimation)
        elseif state.IdleMode.value == 'PDT' then
            idleSet = set_combine(idleSet, sets.buff.PDTSublimation)
        end
    end

    if player.mpp < 51 then
        idleSet = set_combine(idleSet, sets.latent_refresh)
    end

    return idleSet
end

-- Called by the 'update' self-command.
function job_update(cmdParams, eventArgs)
    if cmdParams[1] == 'user' and not (buffactive['light arts']      or buffactive['dark arts'] or
                       buffactive['addendum: white'] or buffactive['addendum: black']) then
        if state.IdleMode.value == 'Stun' then
            send_command('@input /ja "Dark Arts" <me>')
        else
            send_command('@input /ja "Light Arts" <me>')
        end
    end

    update_active_strategems()
    update_sublimation()
end

-- Function to display the current relevant user state when doing an update.
-- Return true if display was handled, and you don't want the default info shown.
function display_current_job_state(eventArgs)
    display_current_caster_state()
    eventArgs.handled = true
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

function update_sublimation()
    state.Buff['Sublimation: Activated'] = buffactive['Sublimation: Activated'] or false
end

-- Equip sets appropriate to the active buffs, relative to the spell being cast.
function apply_grimoire_bonuses(spell, action, spellMap)
    if state.Buff.Perpetuance and spell.type =='WhiteMagic' and spell.skill == 'Enhancing Magic' then
        equip(sets.buff['Perpetuance'])
    end
    if state.Buff.Rapture and (spellMap == 'Cure' or spellMap == 'Curaga') then
        equip(sets.buff['Rapture'])
    end
    if spell.skill == 'Elemental Magic' and spellMap ~= 'ElementalEnfeeble' then
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

    if strategem == 'light' then
        if buffactive['light arts'] then
            send_command('input /ja "Addendum: White" <me>')
        elseif buffactive['addendum: white'] then
            add_to_chat(122,'Error: Addendum: White is already active.')
        else
            send_command('input /ja "Light Arts" <me>')
        end
    elseif strategem == 'dark' then
        if buffactive['dark arts'] then
            send_command('input /ja "Addendum: Black" <me>')
        elseif buffactive['addendum: black'] then
            add_to_chat(122,'Error: Addendum: Black is already active.')
        else
            send_command('input /ja "Dark Arts" <me>')
        end
    elseif buffactive['light arts'] or buffactive['addendum: white'] then
        if strategem == 'cost' then
            send_command('input /ja Penury <me>')
        elseif strategem == 'speed' then
            send_command('input /ja Celerity <me>')
        elseif strategem == 'aoe' then
            send_command('input /ja Accession <me>')
        elseif strategem == 'power' then
            send_command('input /ja Rapture <me>')
        elseif strategem == 'duration' then
            send_command('input /ja Perpetuance <me>')
        elseif strategem == 'accuracy' then
            send_command('input /ja Altruism <me>')
        elseif strategem == 'enmity' then
            send_command('input /ja Tranquility <me>')
        elseif strategem == 'skillchain' then
            add_to_chat(122,'Error: Light Arts does not have a skillchain strategem.')
        elseif strategem == 'addendum' then
            send_command('input /ja "Addendum: White" <me>')
        else
            add_to_chat(123,'Error: Unknown strategem ['..strategem..']')
        end
    elseif buffactive['dark arts']  or buffactive['addendum: black'] then
        if strategem == 'cost' then
            send_command('input /ja Parsimony <me>')
        elseif strategem == 'speed' then
            send_command('input /ja Alacrity <me>')
        elseif strategem == 'aoe' then
            send_command('input /ja Manifestation <me>')
        elseif strategem == 'power' then
            send_command('input /ja Ebullience <me>')
        elseif strategem == 'duration' then
            add_to_chat(122,'Error: Dark Arts does not have a duration strategem.')
        elseif strategem == 'accuracy' then
            send_command('input /ja Focalization <me>')
        elseif strategem == 'enmity' then
            send_command('input /ja Equanimity <me>')
        elseif strategem == 'skillchain' then
            send_command('input /ja Immanence <me>')
        elseif strategem == 'addendum' then
            send_command('input /ja "Addendum: Black" <me>')
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

    local maxStrategems = (player.main_job_level + 10) / 20

    local fullRechargeTime = 4*60

    local currentCharges = math.floor(maxStrategems - maxStrategems * stratsRecast / fullRechargeTime)

    return currentCharges
end


-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    set_macro_page(1, 13)
end

