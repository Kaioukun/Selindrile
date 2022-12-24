-------------------------------------------------------------------------------------------------------------------
-- Setup functions for this job.  Generally should not be modified.
-------------------------------------------------------------------------------------------------------------------

-- Initialization function for this job file.
function get_sets()
    mote_include_version = 2

    -- Load and initialize the include file.
    include('Mote-Include.lua')
    include('organizer-lib')
end

-- Setup vars that are user-independent.  state.Buff vars initialized here will automatically be tracked.
function job_setup()
    indi_timer = ''
    indi_duration = 180
    absorbs = S{'Absorb-STR', 'Absorb-DEX', 'Absorb-VIT', 'Absorb-AGI', 'Absorb-INT', 'Absorb-MND', 'Absorb-CHR', 'Absorb-Attri', 'Absorb-ACC', 'Absorb-TP'}
    state.CapacityMode = M(false, 'Capacity Point Mantle')
end


-------------------------------------------------------------------------------------------------------------------
-- User setup functions for this job.  Recommend that these be overridden in a sidecar file.
-------------------------------------------------------------------------------------------------------------------

-- Setup vars that are user-dependent.  Can override this function in a sidecar file.
function user_setup()
    state.Buff.Poison = buffactive['Poison'] or false

    state.OffenseMode:options('None', 'Normal', 'Melee')
    state.CastingMode:options('Normal', 'Resistant')
    state.IdleMode:options('Normal', 'PDT', 'Melee')

    gear.default.weaponskill_waist = ""

    geo_sub_weapons = S{"", "Bolelabunga"}

end

function file_unload()
    send_command('unbind !=')
end

-- Define sets and vars used by this job file.
function init_gear_sets()

    lowTierNukes = S{'Stone', 'Water', 'Aero', 'Fire', 'Blizzard', 'Thunder',
        'Stone II', 'Water II', 'Aero II', 'Fire II', 'Blizzard II', 'Thunder II',
        'Stone III', 'Water III', 'Aero III', 'Fire III', 'Blizzard III', 'Thunder III',
        'Stonega', 'Waterga', 'Aeroga', 'Firaga', 'Blizzaga', 'Thundaga', 
        'Stonera', 'Watera', 'Aerora', 'Fira', 'Blizzara', 'Thundara',
        'Stonega II', 'Waterga II', 'Aeroga II', 'Firaga II', 'Blizzaga II', 'Thundaga II'}
    --------------------------------------
    -- Precast sets
    --------------------------------------

    -- Precast sets to enhance JAs
    sets.precast.JA.Bolster = {body="Bagua Tunic +3"}
    sets.precast.JA['Life Cycle'] = {head="Azimuth Hood +1", body="Geomancy Tunic +2", back="Nantosuelta's Cape"}
    sets.precast.JA['Full Circle'] = {hands="Azimuth Hood +1"}
    sets.precast.JA['Radial Arcana'] = {feet="Bagua Sandals +1"}

    sets.CapacityMantle  = { back="Mecistopins Mantle" }

    sets.Organizer = {
    
    }

    -- Fast cast sets for spells

    sets.precast.FC = {
        main="Grioavolr", ---4
		sub="Clerisy strap +1", ---3
		range="Dunna",---3
        head="Amalric coif +1",---11 
        ear2="Loquacious Earring",
		ear1="Etiolation Earring",---1
		body="Agwu's robe",---8
        hands="Agwu's gages",---6
        neck="Orunmila's torque",---
        ring1="Weatherspoon ring",---5
		ring2="Kishar Ring",---4
        back="Lifestream Cape",---
        waist="Witful Belt",
        legs="Volte brais",---8
        feet="Volte gaiters",---6
    }

    sets.precast.FC.Cure = set_combine(sets.precast.FC, {
		main="Oranyan",
		sub="Clerisy strap +1",
		range="",
		head="Vanya Hood",
		body="Kaykaus Bliaut",
		hands="Revealer's Mitts",
		legs="Doyen pants",
		feet="Kaykaus Boots",
		neck="Orunmila torque",
		waist="Luminary Sash",
		left_ear="Mendi. Earring",
		right_ear="Beatific Earring",
		left_ring="Karka Ring",
		right_ring="Ephedra Ring",
		back="Pahtli Cape",
    })

    sets.precast.FC['Elemental Magic'] = set_combine(sets.precast.FC, {
        hands="Bagua Mitaines +1",
    })

    
    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {
        --head="Nahtirah Hat",
        neck=gear.ElementalGorget,
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        --body="Vanir Cotehardie",
        --hands="Yaoyotl Gloves",
        ring1="Ifrit Ring",
        ring2="Ifrit Ring",
        back="Buquwik Cape",
        waist=gear.ElementalBelt,
    }

    sets.precast.WS['Flash Nova'] = {
        --ammo="Dosis Tathlum",
        head="Welkin Crown",
        neck="Eddy Necklace",
        ear1="Friomisi Earring",
        ear2="Crematio Earring",
        --hands="Yaoyotl Gloves",
        ring1="Acumen Ring",
        --ring2="Strendu Ring",
        back="Toro Cape",
        --waist="Snow Belt",
    }

    sets.precast.WS['Starlight'] = {ear2="Moonshade Earring"}

    sets.precast.WS['Moonlight'] = {ear2="Moonshade Earring"}


    --------------------------------------
    -- Midcast sets
    --------------------------------------

    -- Base fast recast for spells
    sets.midcast.FastRecast = { 
    }
    sets.midcast.Trust =  {
    }
     sets.midcast["Apururu (UC)"] = set_combine(sets.midcast.Trust, {
         body="Apururu Unity shirt",
     })

    sets.midcast['Geo-Regen'] = {
		main="Sucellus",
		sub="Ammurapi Shield",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Azimuth Hood +1",
		body={ name="Bagua Tunic +1", augments={'Enhances "Bolster" effect',}},
		hands="Geo. Mitaines +2",
		legs="Azimuth Tights +1",
		feet="Geo. Sandals +1",
		neck="Bagua Charm +2",
		waist="Luminary Sash",
		left_ear="Etiolation Earring",
		right_ear="Loquac. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Kishar Ring",
		back="Lifestream Cape",
}
	
	sets.midcast['Geo-Poison'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Refresh'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Haste'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-STR'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-DEX'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-VIT'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-AGI'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-INT'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-MND'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-CHR'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Fury'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Barrier'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Acumen'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Fend'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Precision'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Voidance'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Focus'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Attunement'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Wilt'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Frailty'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Malaise'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Fade'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Slip'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Torpor'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Vex'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Languor'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Slow'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Paralysis'] = sets.midcast['Geo-Regen']
	sets.midcast['Geo-Gravity'] = sets.midcast['Geo-Regen']

    sets.midcast['Indi-Regen'] = {
        main="Solstice",
        sub="Genmei shield",
        range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
        head="Azimuth hood +1",
        neck="Bagua charm +2",
        hands="Geomancy Mitaines +2",
        body="Bagua Tunic +1",
		ring1="Stikini ring +1",
		ring2="Stikini ring +1",
        back="Lifestream Cape",
        feet="Azimuth gaiters +1",
		legs="Bagua Pants +1",
    }

	sets.midcast['Indi-Poison'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Refresh'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Haste'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-STR'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-DEX'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-VIT'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-AGI'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-INT'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-MND'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-CHR'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Fury'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Barrier'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Acumen'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Fend'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Precision'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Voidance'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Focus'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Attunement'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Wilt'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Frailty'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Malaise'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Fade'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Slip'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Torpor'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Vex'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Languor'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Slow'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Paralysis'] = sets.midcast['Indi-Regen']
	sets.midcast['Indi-Gravity'] = sets.midcast['Indi-Regen']
	
    sets.midcast.Cure =  {
        main="Daybreak", --30
		sub="Genbu's shield", --4
		head="Vanya Hood", --17
		neck="Incanter's torque",
		ear1="Etiolation earring",
		ear2="Beatific earring",
		body="Shamash",
		hands="Revealer's mitts",
		ring1="Ephedra ring",
		ring2="Sirona's ring",
		back="Pahtli cape",
		waist="Cascade belt",
		legs="Volte brais",
		feet="Regal pumps +1",
    }
    
    sets.midcast.Curaga = sets.midcast.Cure

    --sets.midcast.Protectra = {ring1="Sheltered Ring"}

    --sets.midcast.Shellra = {ring1="Sheltered Ring"}

    sets.midcast.HighTierNuke = {
		main="Marin Staff",
		sub="Niobid Strap",
		ammo="Pemphredo Tathlum",
		head="Jhakri Coronal +2",
		body="Jhakri Robe +2",
		hands="Jhakri Cuffs +2",
		legs="Jhakri Slops +2",
		feet="Jhakri Pigaches +1",
		neck="Mizu. Kubikazari",
		waist="Refoccilation Stone",
		left_ear="Barkaro. Earring",
		right_ear="Friomisi Earring",
		left_ring="Shiva Ring +1",
		right_ring="Kishar Ring",
		back="Seshaw Cape",
}
    
    sets.midcast.HighTierNuke.Resistant = set_combine(sets.midcast.HighTierNuke, {
    main={ name="Grioavolr", augments={'Enfb.mag. skill +16','Mag. Acc.+18','"Mag.Atk.Bns."+25',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head="Ea hat",
    body="Ea houppelande",
    hands="Ea cuffs",
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+9%','"Mag.Atk.Bns."+11',}},
    feet="Ea pigaches",
    neck="Mizu. Kubikazari",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Barkarole earring",
    left_ring="Mujin Band",
    right_ring="Locus Ring",
    back="Seshaw Cape",
    })
    --sets.midcast['Elemental Magic'].Mindmelter = set_combine(sets.midcast.HighTierNuke, {
    --    main="Mindmelter"
    --})

    sets.precast.JA['Concentric Pulse'] = sets.midcast.HightTierNuke

    sets.midcast.LowTierNuke = set_combine(sets.midcast.HighTierNuke, {
    main={ name="Grioavolr", augments={'Enfb.mag. skill +16','Mag. Acc.+18','"Mag.Atk.Bns."+25',}},
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head="Ea hat",
    body="Ea houppelande",
    hands="Ea cuffs",
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+9%','"Mag.Atk.Bns."+11',}},
    feet="Ea pigaches",
    neck="Mizu. Kubikazari",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Barkarole earring",
    left_ring="Mujin Band",
    right_ring="Locus Ring",
    back="Seshaw Cape",
    })
    
    sets.midcast.LowTierNuke.Resistant = set_combine(sets.midcast.LowTierNuke, {
    main="Marin staff",
    sub="Niobid Strap",
    ammo="Pemphredo Tathlum",
    head="Ea hat",
    body="Ea houppelande",
    hands="Ea cuffs",
    legs={ name="Merlinic Shalwar", augments={'Mag. Acc.+20 "Mag.Atk.Bns."+20','Magic burst dmg.+9%','"Mag.Atk.Bns."+11',}},
    feet="Ea pigaches",
    neck="Mizu. Kubikazari",
    waist="Refoccilation Stone",
    left_ear="Regal Earring",
    right_ear="Barkarole earring",
    left_ring="Mujin Band",
    right_ring="Locus Ring",
    back="Seshaw Cape",
    })

    sets.midcast.Macc = { 
    main={ name="Grioavolr", augments={'Enfb.mag. skill +16','Mag. Acc.+18','"Mag.Atk.Bns."+25',}},
    sub="Enki Strap",
    ammo="Pemphredo Tathlum",
    head="Bagua galero +2",
    body="Jhakri Robe +2",
    hands="Geo. Mitaines +2",
    legs="Jhakri Slops +2",
    feet="Jhakri Pigaches +2",
    neck="Erra Pendant",
    waist="Rumination Sash",
    left_ear="Barkaro. Earring",
    right_ear="",
    left_ring="Stikini Ring +1",
    right_ring="Stikini Ring +1",
    back="Lifestream Cape",
    }
    sets.midcast.Absorb = {
    main={ name="Rubicundity", augments={'Mag. Acc.+10','"Mag.Atk.Bns."+10','Dark magic skill +10','"Conserve MP"+7',}},
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Bagua galero +2",
    body="Geo. Tunic +2",
    hands="Geo. Mitaines +2",
    legs="Azimuth Tights +1",
    feet={ name="Merlinic Crackows", augments={'Weapon skill damage +1%','"Store TP"+5','"Refresh"+1','Accuracy+3 Attack+3','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
    neck="Erra Pendant",
    waist="Fucho-no-Obi",
    left_ear="Dark Earring",
    right_ear="Regal Earring",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back="Perimede Cape",
    }
    
    sets.midcast.Aspir = { 
    main={ name="Rubicundity", augments={'Mag. Acc.+10','"Mag.Atk.Bns."+10','Dark magic skill +10','"Conserve MP"+7',}},
    sub="Ammurapi Shield",
    ammo="Pemphredo Tathlum",
    head="Bagua galero +2",
    body="Geo. Tunic +2",
    hands="Geo. Mitaines +2",
    legs="Azimuth Tights +1",
    feet={ name="Merlinic Crackows", augments={'Weapon skill damage +1%','"Store TP"+5','"Refresh"+1','Accuracy+3 Attack+3','Mag. Acc.+6 "Mag.Atk.Bns."+6',}},
    neck="Erra Pendant",
    waist="Fucho-no-Obi",
    left_ear="Dark Earring",
    right_ear="Regal Earring",
    left_ring="Evanescence Ring",
    right_ring="Archon Ring",
    back="Perimede Cape",
    }
    sets.midcast.Drain = sets.midcast.Aspir
    sets.midcast.Stun = sets.midcast.Macc
    
    sets.midcast['Enfeebling Magic'] = set_combine(sets.midcast.Macc, {
    
    })
    sets.midcast.ElementalEnfeeble = set_combine(sets.midcast.Macc, {
   
    })

	sets.midcast['Haste'] = {
	
	main="Gada",
	sub="Ammurapi shield",
	head="Bagua galero +2",
	body="Telchine chasuble",
	hands="Telchine gloves",
	legs="Telchine braconi",
	feet="Telchine pigaches"
	}
	
	sets.midcast['Refresh'] = {
	
	main="Gada",
	sub="Ammurapi shield",
	head="Bagua galero +2",
	body="Telchine chasuble",
	hands="Telchine gloves",
	legs="Telchine braconi",
	feet="Inspirited boots"
	}
	
	sets.midcast['Blink'] = sets.midcast['Haste']
	sets.midcast['Stoneskin'] = sets.midcast['Haste']
	sets.midcast['Aquaveil'] = sets.midcast['Haste']
	sets.midcast['Phalanx'] = sets.midcast['Haste']
	sets.midcast['Flurry'] = sets.midcast['Haste']
	sets.midcast['Regen'] = sets.midcast['Haste']
	sets.midcast['Invisible'] = sets.midcast['Haste']
	sets.midcast['Sneak'] = sets.midcast['Haste']
	sets.midcast['Deodorize'] = sets.midcast['Haste']
	
    --------------------------------------
    -- Idle/resting/defense/etc sets
    --------------------------------------

    -- Resting sets
    sets.resting = {
		main="Boonwell Staff",
		sub="Oneiros Grip",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head={ name="Nyame Helm", augments={'Path: B',}},
		body="Shamash Robe",
		hands={ name="Nyame Gauntlets", augments={'Path: B',}},
		legs="Volte Brais",
		feet={ name="Nyame Sollerets", augments={'Path: B',}},
		neck="Bathy Choker",
		waist="Austerity Belt +1",
		left_ear={ name="Moonshade Earring", augments={'MP+25','Latent effect: "Refresh"+1',}},
		right_ear="Infused Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Moonbeam Cape",
}

    -- Idle sets
    sets.idle = {
		main="Malignance pole", --20
		sub="Khonsu", --6
		head="Nyame helm", --7
		body="Shamash",
		hands="Nyame gauntlets",
		legs="Volte brais",
		feet="Nyame sollerets",
		neck="Loricate torque +1",
		waist="Fucho-no-Obi",
		left_ear="Etiolation earring",
		right_ear="Infused earring",
		left_ring="Stikini ring +1",
		right_ring="Defending ring", --10
		back="Moonbeam Cape", --5
	}
 

    -- .Pet sets are for when Luopan is present.
    sets.idle.Pet = {
		main="Malignance pole",
		sub="Khonsu",
		range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
		head="Nyame helm",
		body="Shamash",
		hands="Geo. Mitaines +2",
		legs="Volte brais",
		feet="Bagua Sandals +3",
		neck="Bagua charm +2",
		waist="Isa belt",
		left_ear="Ethereal earring",
		right_ear="Etiolation earring",
		left_ring="Stikini ring +1",
		right_ring="Defending ring",
		back="Lifestream cape",
	
	}


    sets.idle.Melee = {

    }

    -- .Indi sets are for when an Indi-spell is active.
    --sets.idle.Indi = set_combine(sets.idle, {
    --    legs="Bagua Pants +1", 
    --    feet="Geomancy Sandals +2",
    --    back="Lifestream Cape",
    --    --feet="Azimuth Gaiters"
    --})
    --sets.idle.Pet.Indi = set_combine(sets.idle.Pet, {
    --    legs="Bagua Pants +1", 
    --})
    --sets.idle.PDT.Indi = set_combine(sets.idle.PDT, {
    --    legs="Bagua Pants +1", 
    --    feet="Azimuth Gaiters"
    --})
    --sets.idle.PDT.Pet.Indi = set_combine(sets.idle.PDT.Pet, {
    --    legs="Bagua Pants +1", 
    --})

    sets.idle.Town = {
        
	main="Daybreak",
    sub="Genmei Shield",
    ammo="Staunch Tathlum",
    head="Befouled Crown",
    body="Shamash robe",
    hands={ name="Bagua Mitaines +1", augments={'Enhances "Curative Recantation" effect',}},
    legs="Volte brais",
    feet="Geo. Sandals +2",
    neck="Loricate Torque +1",
    waist="Fucho-no-Obi",
    left_ear="Ethereal Earring",
    right_ear="Genmei Earring",
    left_ring={ name="Dark Ring", augments={'Breath dmg. taken -3%','Magic dmg. taken -4%','Phys. dmg. taken -6%',}},
    right_ring="Defending Ring",
    back="Solemnity Cape",
    }

    sets.idle.Weak = sets.idle

    -- Defense sets

    sets.defense.PDT = {
    
    main="Sucellus",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Bagua galero +1",
    body="",
    hands="Geo. Mitaines +2",
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Bagua Sandals +1", augments={'Enhances "Radial Arcana" effect',}},
    neck="Loricate Torque +1",
    waist="Isa Belt",
    left_ear="Ethereal Earring",
    right_ear="Lugalbanda Earring",
    left_ring={ name="Dark Ring", augments={'Breath dmg. taken -3%','Magic dmg. taken -4%','Phys. dmg. taken -6%',}},
    right_ring="Defending Ring",
    --back={ name="Nantosuelta's Cape", augments={'Pet: "Regen"+10','Pet: Damage taken -3%',}},
    back="mecistopins mantle",
	}

    sets.defense.MDT = {
    
    main="Sucellus",
    sub="Genmei Shield",
    range={ name="Dunna", augments={'MP+20','Mag. Acc.+10','"Fast Cast"+3',}},
    head="Bagua galero +2",
    body="Jhakri Robe +2",
    hands="Geo. Mitaines +2",
    legs={ name="Psycloth Lappas", augments={'MP+80','Mag. Acc.+15','"Fast Cast"+7',}},
    feet={ name="Bagua Sandals +1", augments={'Enhances "Radial Arcana" effect',}},
    neck="Loricate Torque +1",
    waist="Isa Belt",
    left_ear="Ethereal Earring",
    right_ear="Lugalbanda Earring",
    left_ring={ name="Dark Ring", augments={'Breath dmg. taken -3%','Magic dmg. taken -4%','Phys. dmg. taken -6%',}},
    right_ring="Defending Ring",
    --back={ name="Nantosuelta's Cape", augments={'Pet: "Regen"+10','Pet: Damage taken -3%',}},
    back="mecistopins mantle", 
	}

    sets.Kiting = {}

    sets.latent_refresh = {waist="Fucho-no-obi"}


    --------------------------------------
    -- Engaged sets
    --------------------------------------

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.engaged.Dagger.Accuracy.Evasion

    -- Normal melee group
    sets.engaged = {
        range="Dunna",
        neck="Asperity Necklace",
        ear1="Bladeborn Earring",
        ear2="Steelflash Earring",
        body="Azimuth Coat +1",
        head="Bagua galero +2",
        hands="Geomancy Mitaines +2",
        ring1="Rajas Ring",
        ring2="K'ayres Ring",
        back="Kayapa Cape",
        waist="Windbuffet Belt +1",
        legs="Geomancy Pants +2",
        feet="Umbani Boots"
    }
    sets.engaged.Melee = set_combine(sets.engaged, {
        main="Malevolence",
    })
    --------------------------------------
    -- Custom buff sets
    --------------------------------------

end

-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for standard casting events.
-------------------------------------------------------------------------------------------------------------------
function job_precast(spell, action, spellMap, eventArgs)
	refine_various_spells(spell, action, spellMap, eventArgs)
    --if state.Buff.Poison then
    --    classes.CustomClass = 'Mindmelter'
    --end
end

function job_post_precast(spell, action, spellMap, eventArgs)
    -- Make sure abilities using head gear don't swap 
	if spell.type:lower() == 'weaponskill' then
        -- CP mantle must be worn when a mob dies, so make sure it's equipped for WS.
        if state.CapacityMode.value then
            equip(sets.CapacityMantle)
        end
    end
end

function job_aftercast(spell, action, spellMap, eventArgs)
    if not spell.interrupted then
        if spell.english:startswith('Indi') then
            if not classes.CustomIdleGroups:contains('Indi') then
                classes.CustomIdleGroups:append('Indi')
            end
            send_command('@timers d "'..indi_timer..'"')
            indi_timer = spell.english
            send_command('@timers c "'..indi_timer..'" '..indi_duration..' down spells/00136.png')
        elseif spell.english == 'Sleep' or spell.english == 'Sleepga' then
            send_command('@timers c "'..spell.english..' ['..spell.target.name..']" 60 down spells/00220.png')
        elseif spell.english == 'Sleep II' or spell.english == 'Sleepga II' then
            send_command('@timers c "'..spell.english..' ['..spell.target.name..']" 90 down spells/00220.png')
        end
    elseif not player.indi then
        classes.CustomIdleGroups:clear()
    end
end


-------------------------------------------------------------------------------------------------------------------
-- Job-specific hooks for non-casting events.
-------------------------------------------------------------------------------------------------------------------
--function job_status_change(newStatus, oldStatus, eventArgs)
--    if newStatus == 'Engaged' then
--        -- nothing yet
--        elseif newStatus == 'Idle' then
--            determine_idle_group()
--    end
--end

-- Called when a player gains or loses a buff.
-- buff == buff gained or lost
-- gain == true if the buff was gained, false if it was lost.
function job_buff_change(buff, gain)
    if player.indi and not classes.CustomIdleGroups:contains('Indi')then
        classes.CustomIdleGroups:append('Indi')
        handle_equipping_gear(player.status)
    elseif classes.CustomIdleGroups:contains('Indi') and not player.indi then
        classes.CustomIdleGroups:clear()
        handle_equipping_gear(player.status)
    end
end

function job_state_change(stateField, newValue, oldValue)
    if stateField == 'Offense Mode' then
        if newValue == 'Melee' then
            disable('main','sub')
        else
            enable('main','sub')
        end
    end
end

-------------------------------------------------------------------------------------------------------------------
-- User code that supplements standard library decisions.
-------------------------------------------------------------------------------------------------------------------

function job_get_spell_map(spell, default_spell_map)
    if spell.action_type == 'Magic' then
        if spell.skill == 'Enfeebling Magic' then
            if spell.type == 'WhiteMagic' then
                return 'MndEnfeebles'
            else
                return 'IntEnfeebles'
            end
        elseif spell.skill == 'Dark Magic' and absorbs:contains(spell.english) then
            return 'Absorb'
        elseif spell.skill == 'Geomancy' then
            if spell.english:startswith('Indi') then
                return 'Indi'
            end
        elseif spell.skill == 'Elemental Magic' and default_spell_map ~= 'ElementalEnfeeble' then
            if lowTierNukes:contains(spell.english) then
                return 'LowTierNuke'
            else
                return 'HighTierNuke'
            end
        elseif spell.type == 'Trust' then
            return 'Trust'

        end
    end
end

function customize_idle_set(idleSet)
    if player.mpp < 51 then
        idleSet = set_combine(idleSet, sets.latent_refresh)
    end
    if state.CapacityMode.value then
        idleSet = set_combine(idleSet, sets.CapacityMantle)
    end
    if state.OffenseMode.value == 'Melee' then
        idleSet = set_combine(sets.idle, sets.idle.Melee)
    end
    return idleSet
end

-- Modify the default melee set after it was constructed.
function customize_melee_set(meleeSet)
    if state.CapacityMode.value then
        meleeSet = set_combine(meleeSet, sets.CapacityMantle)
    end
    return meleeSet
end
-- Called by the 'update' self-command.
function job_update(cmdParams, eventArgs)
    classes.CustomIdleGroups:clear()
    if player.indi then
        classes.CustomIdleGroups:append('Indi')
    end
end

-- Function to display the current relevant user state when doing an update.
function display_current_job_state(eventArgs)
    display_current_caster_state()
    eventArgs.handled = true
end

-------------------------------------------------------------------------------------------------------------------
-- Utility functions specific to this job.
-------------------------------------------------------------------------------------------------------------------

-- Select default macro book on initial load or subjob change.
function select_default_macro_book()
    set_macro_page()
end
--Refine Nuke Spells
function refine_various_spells(spell, action, spellMap, eventArgs)
	aspirs = S{'Aspir','Aspir II','Aspir III'}
	sleeps = S{'Sleep II','Sleep'}
	sleepgas = S{'Sleepga II','Sleepga'}
	nukes = S{'Fire', 'Blizzard', 'Aero', 'Stone', 'Thunder', 'Water',
	'Fire II', 'Blizzard II', 'Aero II', 'Stone II', 'Thunder II', 'Water II',
	'Fire III', 'Blizzard III', 'Aero III', 'Stone III', 'Thunder III', 'Water III',
	'Fire IV', 'Blizzard IV', 'Aero IV', 'Stone IV', 'Thunder IV', 'Water IV',
	'Fire V', 'Blizzard V', 'Aero V', 'Stone V', 'Thunder V', 'Water V',
	'Fire VI', 'Blizzard VI', 'Aero VI', 'Stone VI', 'Thunder VI', 'Water VI',
	'Firaga', 'Blizzaga', 'Aeroga', 'Stonega', 'Thundaga', 'Waterga',
	'Firaga II', 'Blizzaga II', 'Aeroga II', 'Stonega II', 'Thundaga II', 'Waterga II',
	'Firaga III', 'Blizzaga III', 'Aeroga III', 'Stonega III', 'Thundaga III', 'Waterga III',	
	'Firaja', 'Blizzaja', 'Aeroja', 'Stoneja', 'Thundaja', 'Waterja',
	}
	cures = S{'Cure IV','Cure V','Cure IV','Cure III','Curaga III','Curaga II', 'Curaga',}
	
	if spell.skill == 'Healing Magic' then
		if not cures:contains(spell.english) then
			return
		end
		
		local newSpell = spell.english
		local spell_recasts = windower.ffxi.get_spell_recasts()
		local cancelling = 'All '..spell.english..' spells are on cooldown. Cancelling spell casting.'
		
		if spell_recasts[spell.recast_id] > 0 then
			if cures:contains(spell.english) then
				if spell.english == 'Cure' then
					add_to_chat(122,cancelling)
					eventArgs.cancel = true
				return
				elseif spell.english == 'Cure IV' then
					newSpell = 'Cure V'
				elseif spell.english == 'Cure V' then
					newSpell = 'Cure IV'
				elseif spell.english == 'Cure IV' then
					newSpell = 'Cure III'
				end
			end
		end
		
		if newSpell ~= spell.english then
			send_command('@input /ma "'..newSpell..'" '..tostring(spell.target.raw))
			eventArgs.cancel = true
			return
		end
	elseif spell.skill == 'Dark Magic' then
		if not aspirs:contains(spell.english) then
			return
		end
		
		local newSpell = spell.english
		local spell_recasts = windower.ffxi.get_spell_recasts()
		local cancelling = 'All '..spell.english..' spells are on cooldown. Cancelling spell casting.'

		if spell_recasts[spell.recast_id] > 0 then
			if aspirs:contains(spell.english) then
				if spell.english == 'Aspir' then
					add_to_chat(122,cancelling)
					eventArgs.cancel = true
				return
				elseif spell.english == 'Aspir II' then
					newSpell = 'Aspir'
				elseif spell.english == 'Aspir III' then
					newSpell = 'Aspir II'
				end
			end
		end
		
		if newSpell ~= spell.english then
			send_command('@input /ma "'..newSpell..'" '..tostring(spell.target.raw))
			eventArgs.cancel = true
			return
		end
	elseif spell.skill == 'Elemental Magic' then
		if not sleepgas:contains(spell.english) and not sleeps:contains(spell.english) and not nukes:contains(spell.english) then
			return
		end

		local newSpell = spell.english
		local spell_recasts = windower.ffxi.get_spell_recasts()
		local cancelling = 'All '..spell.english..' spells are on cooldown. Cancelling spell casting.'

		if spell_recasts[spell.recast_id] > 0 then
			if sleeps:contains(spell.english) then
				if spell.english == 'Sleep' then
					add_to_chat(122,cancelling)
					eventArgs.cancel = true
				return
				elseif spell.english == 'Sleep II' then
					newSpell = 'Sleep'
				end
			elseif sleepgas:contains(spell.english) then
				if spell.english == 'Sleepga' then
					add_to_chat(122,cancelling)
					eventArgs.cancel = true
					return
				elseif spell.english == 'Sleepga II' then
					newSpell = 'Sleepga'
				end
			elseif nukes:contains(spell.english) then	
				if spell.english == 'Fire' then
					eventArgs.cancel = true
					return
				elseif spell.english == 'Fire VI' then
					newSpell = 'Fire V'
				elseif spell.english == 'Fire V' then
					newSpell = 'Fire IV'
				elseif spell.english == 'Fire IV' then
					newSpell = 'Fire III'	
				elseif spell.english == 'Fire II' then
					newSpell = 'Fire'
				elseif spell.english == 'Firaja' then
					newSpell = 'Firaga III'
				elseif spell.english == 'Firaga II' then
					newSpell = 'Firaga'
				end 
				if spell.english == 'Blizzard' then
					eventArgs.cancel = true
					return
				elseif spell.english == 'Blizzard VI' then
					newSpell = 'Blizzard V'
				elseif spell.english == 'Blizzard V' then
					newSpell = 'Blizzard IV'
				elseif spell.english == 'Blizzard IV' then
					newSpell = 'Blizzard III'	
				elseif spell.english == 'Blizzard II' then
					newSpell = 'Blizzard'
				elseif spell.english == 'Blizzaja' then
					newSpell = 'Blizzaga III'
				elseif spell.english == 'Blizzaga II' then
					newSpell = 'Blizzaga'	
				end 
				if spell.english == 'Aero' then
					eventArgs.cancel = true
					return
				elseif spell.english == 'Aero VI' then
					newSpell = 'Aero V'
				elseif spell.english == 'Aero V' then
					newSpell = 'Aero IV'
				elseif spell.english == 'Aero IV' then
					newSpell = 'Aero III'	
				elseif spell.english == 'Aero II' then
					newSpell = 'Aero'
				elseif spell.english == 'Aeroja' then
					newSpell = 'Aeroga III'
				elseif spell.english == 'Aeroga II' then
					newSpell = 'Aeroga'	
				end 
				if spell.english == 'Stone' then
					eventArgs.cancel = true
					return
				elseif spell.english == 'Stone VI' then
					newSpell = 'Stone V'
				elseif spell.english == 'Stone V' then
					newSpell = 'Stone IV'
				elseif spell.english == 'Stone IV' then
					newSpell = 'Stone III'	
				elseif spell.english == 'Stone II' then
					newSpell = 'Stone'
				elseif spell.english == 'Stoneja' then
					newSpell = 'Stonega III'
				elseif spell.english == 'Stonega II' then
					newSpell = 'Stonega'	
				end 
				if spell.english == 'Thunder' then
					eventArgs.cancel = true
					return
				elseif spell.english == 'Thunder VI' then
					newSpell = 'Thunder V'
				elseif spell.english == 'Thunder V' then
					newSpell = 'Thunder IV'
				elseif spell.english == 'Thunder IV' then
					newSpell = 'Thunder III'	
				elseif spell.english == 'Thunder II' then
					newSpell = 'Thunder'
				elseif spell.english == 'Thundaja' then
					newSpell = 'Thundaga III'
				elseif spell.english == 'Thundaga II' then
					newSpell = 'Thundaga'	
				end 
				if spell.english == 'Water' then
					eventArgs.cancel = true
					return
				elseif spell.english == 'Water VI' then
					newSpell = 'Water V'
				elseif spell.english == 'Water V' then
					newSpell = 'Water IV'
				elseif spell.english == 'Water IV' then
					newSpell = 'Water III'	
				elseif spell.english == 'Water II' then
					newSpell = 'Water'
				elseif spell.english == 'Waterja' then
					newSpell = 'Waterga III'
				elseif spell.english == 'Waterga II' then
					newSpell = 'Waterga'	
				end 
			end
		end

		if newSpell ~= spell.english then
			send_command('@input /ma "'..newSpell..'" '..tostring(spell.target.raw))
			eventArgs.cancel = true
			return
		end
	end
end

