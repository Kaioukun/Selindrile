function user_job_setup()
    -- Options: Override default values
    state.OffenseMode:options(
		'Normal'
		-- 'Acc', 
		-- 'FullAcc'
	)
    state.HybridMode:options(
		'Normal', 
		'DT'
	)
    state.WeaponskillMode:options(
		'Match', 
		'Proc'
	)
    state.AutoBuffMode:options(
		'Off', 
		'Auto'
		-- 'AutoMelee'
	)
    state.CastingMode:options(
		'Normal', 
		'Resistant', 
		'Fodder', 
		'Proc'
	)
    state.IdleMode:options(
		'Normal', 
		'PDT', 
		'MDT'
		-- 'DTHippo'
	)
    state.PhysicalDefenseMode:options(
		'PDT', 
		'NukeLock'
	)
    state.MagicalDefenseMode:options('MDT')
    state.ResistDefenseMode:options('MEVA')
    state.Weapons:options(
		'None',
        'Naegling',
        'Daybreak'
		-- 'Sequence', 
		-- 'DualWeapons',
		-- 'DualWeaponsAcc', 
		-- 'DualEvisceration', 
		-- 'DualClubs',
		-- 'DualAeolian', 
		-- 'DualProcDaggers', 
		-- 'EnspellOnly'
	)

    gear.obi_cure_back = {
        name = "Sucellos's Cape",
        augments = {
            'MND+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'Mag. Acc.+10', 'Enmity-10',
            'Damage taken-5%'
        }
    }
    gear.obi_cure_waist = "Witful Belt"

    gear.obi_low_nuke_back = "Toro Cape"
    gear.obi_low_nuke_waist = "Sekhmet Corset"

    gear.obi_high_nuke_back = "Toro Cape"
    gear.obi_high_nuke_waist = "Refoccilation Stone"

    gear.stp_jse_back = {
        name = "Sucellos's Cape",
        augments = {
            --'DEX+20', 'Accuracy+20 Attack+20', 'Accuracy+10', '"Store TP"+10'
        }
    }
    gear.nuke_jse_back = {
        name = "Sucellos's Cape",
        augments = {
            'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'INT+10',
            '"Mag.Atk.Bns."+10'
        }
    }
    gear.wsd_jse_back = {
        name = "Sucellos's Cape",
        augments = {
            -- 'STR+20', 'Accuracy+20 Attack+20', 'STR+10',
            -- 'Weapon skill damage +10%'
        }
    }

    -- Additional local binds
    send_command('bind ^` gs c cycle ElementalMode')
    send_command('bind @` gs c cycle MagicBurstMode')
    send_command('bind ^@!` input /ja "Accession" <me>')
    send_command('bind ^backspace input /ja "Saboteur" <me>')
    send_command('bind !backspace input /ja "Spontaneity" <t>')
    send_command('bind @backspace input /ja "Composure" <me>')
    send_command('bind @f8 gs c toggle AutoNukeMode')
    send_command('bind != input /ja "Penury" <me>')
    send_command('bind @= input /ja "Parsimony" <me>')
    send_command('bind ^delete input /ja "Dark Arts" <me>')
    send_command('bind !delete input /ja "Addendum: Black" <me>')
    send_command('bind @delete input /ja "Manifestation" <me>')
    send_command('bind ^\\\\ input /ma "Protect V" <t>')
    send_command('bind @\\\\ input /ma "Shell V" <t>')
    send_command('bind !\\\\ input /ma "Reraise" <me>')
    send_command('bind @f10 gs c cycle RecoverMode')
    -- send_command('bind ^r gs c set skipprocweapons true;gs c reset weaponskillmode;gs c weapons Default;gs c set unlockweapons false')
    -- send_command('bind ^q gs c set weapons enspellonly;gs c set unlockweapons true')
    -- send_command('bind !r gs c set skipprocweapons true;gs c reset weaponskillmode;gs c set weapons none')
    -- send_command('bind @r gs c set skipprocweapons false;gs c set weapons DualProcDaggers;gs c set weaponskillmode proc')

    select_default_macro_book()
end

function init_gear_sets()
    --------------------------------------
    -- Start defining the sets
    --------------------------------------

    -- Precast Sets

    -- Precast sets to enhance JAs
    sets.precast.JA['Chainspell'] = {body = "Viti. Tabard +1"}

    -- Waltz set (chr and vit)
    sets.precast.Waltz = {}

    -- Don't need any special gear for Healing Waltz.
    sets.precast.Waltz['Healing Waltz'] = {}

    -- Fast cast sets for spells

    sets.precast.FC = {
        -- main = gear.grioavolr_fc_staff,
        -- sub = "Clerisy Strap +1",
        range = empty,
        -- ammo = "Impatiens",
        head = "Atro. Chapeau +2",
        neck = "Voltsurge Torque",
        -- left_ear = "Enchntr. Earring +1",
        right_ear = "Malignance Earring",
        body = "Viti. Tabard +1",
        -- hands = "Gende. Gages +1",
        left_ring = "Kishar Ring",
        right_ring = "Lebeche Ring",
        -- back = "Perimede Cape",
        waist = "Witful Belt",
        legs = "Psycloth Lappas",
        -- feet = gear.merlinic_aspir_feet
    }

    sets.precast.FC.Impact = set_combine(sets.precast.FC, {
        head = empty,
        body = "Twilight Cloak"
    })
    sets.precast.FC.Dispelga = set_combine(sets.precast.FC, {
        main = "Daybreak",
        sub = "Genmei Shield"
    })

    -- Weaponskill sets
    -- Default set for any weaponskill that isn't any more specifically defined
    sets.precast.WS = {
        -- range = empty,
        -- ammo = "Ginsen",
        head = "Viti. Chapeau +1",
        neck = "Asperity Necklace",
        -- left_ear = "Cessance Earring",
        right_ear = "Sherida Earring",
        body = "Ayanmo Corazza +2",
        hands = "Aya. Manopolas +2",
        -- left_ring = "Petrov Ring",
        right_ring = "Ilabrat Ring",
        back = gear.wsd_jse_back,
        waist = "Windbuffet Belt",
        -- legs = "Carmine Cuisses +1",
        -- feet = "Carmine Greaves +1"
    }

    sets.precast.WS.Proc = {
        -- range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Combatant's Torque",
        -- left_ear = "Mache Earring +1",
        -- right_ear = "Telos Earring",
        body = "Malignance Tabard",
        -- hands = "Malignance Gloves",
        -- left_ring = "Ramuh Ring +1",
        -- right_ring = "Ramuh Ring +1",
        back = gear.wsd_jse_back,
        -- waist = "Olseni Belt",
        legs = "Malignance Tights",
        -- feet = "Malignance Boots"
    }

    -- Specific weaponskill sets.  Uses the base set if an appropriate WSMod version isn't found.
    sets.precast.WS['Requiescat'] = {
        -- range = empty,
        -- ammo = "Regal Gem",
        head = "Jhakri Coronal +2",
        -- neck = "Fotia Gorget",
        -- left_ear = "Moonshade Earring",
        right_ear = "Sherida Earring",
        body = "Jhakri Robe +2",
        hands = "Atrophy Gloves +2",
        -- left_ring = "Ifrit Ring +1",
        -- right_ring = "Rufescent Ring",
        back = gear.wsd_jse_back,
        -- waist = "Fotia Belt",
        legs = "Jhakri Slops +2",
        feet = "Jhakri Pigaches +2"
    }

    sets.precast.WS['Chant Du Cygne'] = {
        -- range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Fotia Gorget",
        -- left_ear = "Moonshade Earring",
        right_ear = "Sherida Earring",
        body = "Ayanmo Corazza +2",
        hands = "Atrophy Gloves +2",
        -- left_ring = "Begrudging Ring",
        right_ring = "Ilabrat Ring",
        back = gear.wsd_jse_back,
        -- waist = "Fotia Belt",
        -- legs = "Carmine Cuisses +1",
        -- feet = "Thereoid Greaves"
    }

    sets.precast.WS['Evisceration'] = sets.precast.WS['Chant Du Cygne']

    sets.precast.WS['Savage Blade'] = {
        -- range = empty,
        -- ammo = "Regal Gem",
        head = "Viti. Chapeau +1",
        -- neck = "Caro Necklace",
        -- left_ear = "Moonshade Earring",
        -- right_ear = "Ishvara Earring",
        body = "Viti. Tabard +1",
        hands = "Atrophy Gloves +2",
        -- left_ring = "Ifrit Ring +1",
        -- right_ring = "Rufescent Ring",
        back = gear.wsd_jse_back,
        -- waist = "Sailfi Belt +1",
        legs = "Jhakri Slops +2",
        feet = "Jhakri Pigaches +2"
    }

    sets.precast.WS['Sanguine Blade'] = {
        -- range = empty,
        -- ammo = "Pemphredo Tathlum",
        -- head = "Pixie Hairpin +1",
        -- neck = "Baetyl Pendant",
        left_ear = "Regal Earring",
        right_ear = "Malignance Earring",
        -- body = gear.merlinic_nuke_body,
        hands = "Jhakri Cuffs +2",
        -- left_ring = "Metamor. Ring +1",
        right_ring = "Archon Ring",
        back = gear.nuke_jse_back,
        -- waist = "Refoccilation Stone",
        -- legs = "Merlinic Shalwar",
        -- feet = gear.merlinic_nuke_feet
    }

    sets.precast.WS['Seraph Blade'] = {
        -- range = empty,
        -- ammo = "Pemphredo Tathlum",
        -- head = gear.merlinic_nuke_head,
        -- neck = "Baetyl Pendant",
        left_ear = "Regal Earring",
        right_ear = "Malignance Earring",
        -- body = gear.merlinic_nuke_body,
        hands = "Jhakri Cuffs +2",
        -- left_ring = "Shiva Ring +1",
        -- right_ring = "Shiva Ring +1",
        back = gear.nuke_jse_back,
        -- waist = "Refoccilation Stone",
        -- legs = "Merlinic Shalwar",
        -- feet = gear.merlinic_nuke_feet
    }

    sets.precast.WS['Aeolian Edge'] = {
        -- range = empty,
        -- ammo = "Pemphredo Tathlum",
        -- head = gear.merlinic_nuke_head,
        -- neck = "Baetyl Pendant",
        left_ear = "Regal Earring",
        right_ear = "Malignance Earring",
        -- body = gear.merlinic_nuke_body,
        hands = "Jhakri Cuffs +2",
        -- left_ring = "Metamor. Ring +1",
        -- right_ring = "Shiva Ring +1",
        back = gear.nuke_jse_back,
        -- waist = "Refoccilation Stone",
        -- legs = "Merlinic Shalwar",
        -- feet = gear.merlinic_nuke_feet
    }

    -- Midcast Sets

    sets.TreasureHunter = {}

    -- Gear that converts elemental damage done to recover MP.	
    sets.RecoverMP = {
		-- body = "Seidr Cotehardie"
	}

    -- Gear for Magic Burst mode.
    sets.MagicBurst = {
        -- main = gear.grioavolr_nuke_staff,
        -- sub = "Alber Strap",
        -- head = "Ea Hat",
        neck = "Mizu. Kubikazari",
        -- body = "Ea Houppelande",
        -- hands = "Amalric Gages +1",
        -- left_ring = "Mujin Band",
        -- legs = "Ea Slops",
        feet = "Jhakri Pigaches +2"
    }

    sets.midcast.FastRecast = {
        -- main = gear.grioavolr_fc_staff,
        -- sub = "Clerisy Strap +1",
        range = empty,
        ammo = "Hasty Pinion +1",
        head = "Atro. Chapeau +2",
        neck = "Voltsurge Torque",
        -- left_ear = "Enchntr. Earring +1",
        right_ear = "Malignance Earring",
        -- body = "Zendik Robe",
        -- hands = "Gende. Gages +1",
        left_ring = "Kishar Ring",
        right_ring = "Prolix Ring",
        -- back = "Swith Cape +1",
        waist = "Witful Belt",
        legs = "Psycloth Lappas",
        -- feet = "Medium's Sabots"
    }

    sets.midcast.Cure = {
		main = "Daybreak",
		sub = "Sors Shield",
		head = {
			name = "Vanya Hood",
			augments = {
				'Healing magic skill +20', '"Cure" spellcasting time -7%',
				'Magic dmg. taken -3'
			}
		},
		body = {
			name = "Viti. Tabard +1",
			augments = {'Enhances "Chainspell" effect'}
		},
		hands = {name = "Viti. Gloves +1", augments = {'Enhancing Magic duration'}},
		legs = "Atrophy Tights +2",
		feet = {
			name = "Vanya Clogs",
			augments = {
				'Healing magic skill +20', '"Cure" spellcasting time -7%',
				'Magic dmg. taken -3'
			}
		},
		waist = "Luminary Sash",
		left_ear = "Mendi. Earring",
		right_ear = "Roundel Earring",
		left_ring = "Sirona's Ring",
		right_ring = "Haoma's Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {
				'MND+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'Mag. Acc.+10', 'Enmity-10',
				'Damage taken-5%'
			}
		}
	}	

    sets.midcast.LightWeatherCure = sets.midcast.Cure

    -- Cureset for if it's not light weather but is light day.
    sets.midcast.LightDayCure = sets.midcast.Cure

    sets.midcast.Cursna = set_combine(sets.midcast.Cure, {
        -- neck = "Debilis Medallion",
        -- hands = "Hieros Mittens",
        -- back = "Oretan. Cape +1",
        -- left_ring = "Menelaus's Ring",
        right_ring = "Haoma's Ring",
        waist = "Witful Belt",
        feet = "Vanya Clogs"
    })

    sets.midcast.StatusRemoval = set_combine(sets.midcast.FastRecast, {
        -- main = gear.grioavolr_fc_staff,
        -- sub = "Clemency Grip"
    })

    sets.midcast.Curaga = sets.midcast.Cure
    sets.Self_Healing = {
        -- neck = "Phalaina Locket",
        left_ear = "Etiolation Earring",
        -- hands = "Buremte Gloves",
        -- right_ring = "Kunaji Ring",
        waist = "Gishdubar Sash"
    }
    sets.Cure_Received = {
        -- neck = "Phalaina Locket",
        -- hands = "Buremte Gloves",
        -- right_ring = "Kunaji Ring",
        waist = "Gishdubar Sash"
    }
    sets.Self_Refresh = {
		-- back = "Grapevine Cape", 
		waist = "Gishdubar Sash"
	}

    sets.midcast['Enhancing Magic'] = {
		main = "Daybreak",
		sub = "Ammurapi Shield",
		head = {
			name = "Telchine Cap", 
			augments = {'Enh. Mag. eff. dur. +7'}
		},
		body = {
			name = "Telchine Chas.", 
			augments = {'Enh. Mag. eff. dur. +8'}
		},
		hands = "Atrophy Gloves +2",
		legs = {
			name = "Telchine Braconi", 
			augments = {'Enh. Mag. eff. dur. +9'}
		},
		feet = "Leth. Houseaux +1",
		left_ear = "Andoaa Earring",
		right_ear = "Regal Earring",
		left_ring = "Stikini Ring",
		right_ring = "Stikini Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {
				'MND+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'Mag. Acc.+10', 'Enmity-10',
				'Damage taken-5%'
			}
		}
	}
	

    -- Atrophy Gloves are better than Lethargy for me despite the set bonus for duration on others.		
    sets.buff.ComposureOther = {
        head = "Lethargy Chappel",
        body = "Lethargy Sayon",
        hands = "Leth. Gantherots",
        legs = "Leth. Fuseau",
        feet = "Leth. Houseaux +1"
    }

    -- Red Mage enhancing sets are handled in a different way from most, layered on due to the way Composure works
    -- Don't set combine a full set with these spells, they should layer on Enhancing Set > Composure (If Applicable) > Spell
    sets.EnhancingSkill = {
        -- main = "Pukulatmuj +1",
        -- head = "Befouled Crown",
        -- neck = "Incanter's Torque",
        -- right_ear = "Mimir Earring",
        hands = "Viti. Gloves +1",
        -- back = "Ghostfyre Cape",
        -- waist = "Olympus Sash",
        legs = "Atrophy Tights +2"
    }
    sets.midcast.Refresh = {
        -- head = "Amalric Coif +1",
        body = "Atrophy Tabard +2",
        legs = "Leth. Fuseau"
    }
    sets.midcast.Aquaveil = {
        -- head = "Amalric Coif +1",
        -- hands = "Regal Cuffs",
        -- waist = "Emphatikos Rope",
        -- legs = "Shedir Seraweels"
    }
    sets.midcast.BarElement = {
		-- legs = "Shedir Seraweels"
	}
    sets.midcast.Temper = sets.EnhancingSkill
    sets.midcast.Temper.DW = set_combine(
		sets.midcast.Temper,
		{
			-- sub = "Pukulatmuj"
		}
	)
    sets.midcast.Enspell = sets.midcast.Temper
    sets.midcast.Enspell.DW = set_combine(
		sets.midcast.Enspell,
		{
			-- sub = "Pukulatmuj"
		}
	)
    sets.midcast.BoostStat = {hands = "Viti. Gloves +1"}
    sets.midcast.Stoneskin = {
        -- neck = "Nodens Gorget",
        -- right_ear = "Earthcry Earring",
        -- waist = "Siegel Sash",
        -- legs = "Shedir Seraweels"
    }
    sets.midcast.Protect = {
		right_ring = "Sheltered Ring"
	}
    sets.midcast.Shell = {
		right_ring = "Sheltered Ring"
	}

    sets.midcast['Enfeebling Magic'] = {
        main = "Daybreak",
        sub = "Genmei Shield",
        ammo = "Staunch Tathlum",
        head = "Jhakri Coronal +2",
        body = "Jhakri Robe +2",
        hands = "Aya. Manopolas +2",
		legs = "Chironic Hose",
        feet = "Jhakri Pigaches +2",
        neck = "Sanctity Necklace",
        waist = "Luminary Sash",
        left_ear = "Malignance Earring",
        right_ear = "Regal Earring",
        left_ring = "Stikini Ring",
        right_ring = "Kishar Ring",
        back = {
            name = "Sucellos's Cape",
            augments = {
                'MND+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'Mag. Acc.+10', 'Enmity-10',
                'Damage taken-5%'
            }
        }
    }

    sets.midcast['Enfeebling Magic'].Resistant = sets.midcast['Enfeebling Magic']

    sets.midcast.DurationOnlyEnfeebling = set_combine(
		sets.midcast['Enfeebling Magic'],
		{
			body = "Atrophy Tabard +2", 
			range = "Kaja Bow"
		}
	)

    sets.midcast.Silence = sets.midcast.DurationOnlyEnfeebling
    sets.midcast.Silence.Resistant = sets.midcast['Enfeebling Magic'].Resistant
    sets.midcast.Sleep = set_combine(
		sets.midcast.DurationOnlyEnfeebling,
		{
			-- waist = "Acuity Belt +1"
		}
	)
    sets.midcast.Sleep.Resistant = set_combine(
		sets.midcast['Enfeebling Magic'].Resistant,
		{
			-- waist = "Acuity Belt +1"
		}
	)
    sets.midcast.Bind = set_combine(
		sets.midcast.DurationOnlyEnfeebling,
		{
			-- waist = "Acuity Belt +1"
		}
	)
    sets.midcast.Bind.Resistant = set_combine(
		sets.midcast['Enfeebling Magic'].Resistant,
		{
			-- waist = "Acuity Belt +1"
		}
	)
    sets.midcast.Break = set_combine(
		sets.midcast.DurationOnlyEnfeebling,
		{
			-- waist = "Acuity Belt +1"
		}
	)
    sets.midcast.Break.Resistant = set_combine(
		sets.midcast['Enfeebling Magic'].Resistant,
		{
			-- waist = "Acuity Belt +1"
		}
	)

    sets.midcast.Dispel = sets.midcast['Enfeebling Magic'].Resistant

    sets.midcast.SkillBasedEnfeebling = set_combine(
		sets.midcast['Enfeebling Magic'], 
		{
            left_ear = "Vor Earring",
            hands = "Leth. Gantherots",
            left_ring = "Stikini Ring",
            legs = "Psycloth Lappas"
		}
	)

    sets.midcast['Frazzle II'] = sets.midcast['Enfeebling Magic'].Resistant
    sets.midcast['Frazzle III'] = sets.midcast.SkillBasedEnfeebling
    sets.midcast['Frazzle III'].Resistant =
        sets.midcast['Enfeebling Magic'].Resistant

    sets.midcast['Distract III'] = sets.midcast.SkillBasedEnfeebling
    sets.midcast['Distract III'].Resistant =
        sets.midcast['Enfeebling Magic'].Resistant

    sets.midcast['Divine Magic'] = set_combine(
		sets.midcast['Enfeebling Magic'].Resistant, 
		{}
	)

    sets.midcast.Dia = set_combine(
		sets.midcast['Enfeebling Magic'],
		sets.TreasureHunter
	)
    sets.midcast.Diaga = set_combine(
		sets.midcast['Enfeebling Magic'],
		sets.TreasureHunter
	)
    sets.midcast['Dia II'] = set_combine(
		sets.midcast['Enfeebling Magic'],
		sets.TreasureHunter
	)
    sets.midcast['Dia III'] = set_combine(
		sets.midcast['Enfeebling Magic'],
		sets.TreasureHunter
	)

    sets.midcast.Bio = set_combine(
		sets.midcast['Enfeebling Magic'],
		sets.TreasureHunter
	)
    sets.midcast['Bio II'] = set_combine(
		sets.midcast['Enfeebling Magic'],
		sets.TreasureHunter
	)
    sets.midcast['Bio III'] = set_combine(
		sets.midcast['Enfeebling Magic'], 
		{
			head = "Viti. Chapeau +1"
		},
		sets.TreasureHunter
	)
    sets.midcast.Dispelga = set_combine(sets.midcast['Enfeebling Magic'], {
        main = "Daybreak",
        sub = "Genmei Shield"
    })

    sets.midcast['Elemental Magic'] = {
        main = "Daybreak",
        sub = "Ammurapi Shield",
        range = empty,
        -- ammo = "Dosis Tathlum",
        -- head = gear.merlinic_nuke_head,
        -- neck = "Baetyl Pendant",
        -- left_ear = "Crematio Earring",
        right_ear = "Friomisi Earring",
        -- body = gear.merlinic_nuke_body,
        -- hands = "Amalric Gages +1",
        -- left_ring = "Shiva Ring +1",
        -- right_ring = "Shiva Ring +1",
        back = gear.nuke_jse_back,
        -- waist = gear.ElementalObi,
        -- legs = "Merlinic Shalwar",
        -- feet = gear.merlinic_nuke_feet
    }

    sets.midcast['Elemental Magic'].Resistant = sets.midcast['Elemental Magic']

    sets.midcast['Elemental Magic'].Fodder = sets.midcast['Elemental Magic']

    sets.midcast['Elemental Magic'].Proc =
        {
            main = empty,
            sub = empty,
            range = empty,    
            -- ammo = "Impatiens",
            -- head = "Nahtirah Hat",
            neck = "Voltsurge Torque",
            -- left_ear = "Enchntr. Earring +1",
            right_ear = "Loquac. Earring",
            -- body = "Zendik Robe",
            -- hands = "Gende. Gages +1",
            left_ring = "Kishar Ring",
            right_ring = "Prolix Ring",
            -- back = "Swith Cape +1",
            waist = "Witful Belt",
            legs = "Psycloth Lappas",
            -- feet = "Regal Pumps +1"
        }

    sets.midcast['Elemental Magic'].HighTierNuke =
        set_combine(
			sets.midcast['Elemental Magic'], 
			{
                range = empty,
				-- ammo = "Pemphredo Tathlum",
				left_ear = "Regal Earring",
				-- left_ring = "Metamor. Ring +1"
			}
		)
    sets.midcast['Elemental Magic'].HighTierNuke.Resistant =
        set_combine(
			sets.midcast['Elemental Magic'].Resistant,
			{
				left_ear = "Regal Earring", 
				-- left_ring = "Metamor. Ring +1"
			}
		)
    sets.midcast['Elemental Magic'].HighTierNuke.Fodder =
        set_combine(
			sets.midcast['Elemental Magic'].Fodder, 
			{
				-- ammo = "Pemphredo Tathlum",
				left_ear = "Regal Earring",
				-- left_ring = "Metamor. Ring +1"
			}
		)

    sets.midcast.Impact = {
        main = "Daybreak",
        sub = "Ammurapi Shield",
        range = "Kaja Bow",
        ammo = empty,
        head = empty,
        neck = "Erra Pendant",
        left_ear = "Regal Earring",
        right_ear = "Malignance Earring",
        body = "Twilight Cloak",
        hands = "Leth. Gantherots",
        -- left_ring = "Metamor. Ring +1",
        right_ring = "Stikini Ring",
        back = gear.nuke_jse_back,
        waist = "Luminary Sash",
        -- legs = "Merlinic Shalwar",
        -- feet = gear.merlinic_nuke_feet
    }

    sets.midcast['Dark Magic'] = {
        -- main = "Rubicundity",
        sub = "Ammurapi Shield",
        range = "Kaja Bow",
        -- head = "Amalric Coif +1",
        neck = "Erra Pendant",
        left_ear = "Regal Earring",
        right_ear = "Malignance Earring",
        body = "Atrophy Tabard +2",
        hands = "Leth. Gantherots",
        -- left_ring = "Metamor. Ring +1",
        right_ring = "Stikini Ring",
        back = gear.nuke_jse_back,
        waist = "Luminary Sash",
        legs = "Psycloth Lappas",
        -- feet = gear.merlinic_nuke_feet
    }

    sets.midcast.Drain = {
        -- main = "Rubicundity",
        sub = "Ammurapi Shield",
        range = "Kaja Bow",
        ammo = empty,
        -- head = "Pixie Hairpin +1",
        neck = "Erra Pendant",
        left_ear = "Regal Earring",
        right_ear = "Malignance Earring",
        -- body = gear.merlinic_nuke_body,
        -- hands = gear.chironic_enfeeble_hands,
        -- left_ring = "Evanescence Ring",
        right_ring = "Archon Ring",
        back = gear.nuke_jse_back,
        -- waist = "Fucho-no-obi",
        legs = "Chironic Hose",
        -- feet = gear.merlinic_aspir_feet
    }

    sets.midcast.Aspir = sets.midcast.Drain

    sets.midcast.Stun = {
        main = "Daybreak",
        sub = "Ammurapi Shield",
        range = "Kaja Bow",
        ammo = empty,
        head = "Atro. Chapeau +2",
        -- neck = "Dls. Torque +2",
        left_ear = "Regal Earring",
        right_ear = "Malignance Earring",
        -- body = "Zendik Robe",
        -- hands = "Volte Gloves",
        -- left_ring = "Metamor. Ring +1",
        right_ring = "Stikini Ring",
        back = gear.nuke_jse_back,
        -- waist = "Sailfi Belt +1",
        legs = "Chironic Hose",
        -- feet = gear.merlinic_aspir_feet
    }

    sets.midcast.Stun.Resistant = sets.midcast.Stun

    -- Sets for special buff conditions on spells.

    sets.buff.Saboteur = {hands = "Leth. Gantherots"}

    sets.HPDown = {
        -- head = "Pixie Hairpin +1",
        left_ear = "Mendicant's Earring",
        -- right_ear = "Evans Earring",
        body = "Jhakri Robe +2",
        hands = "Jhakri Cuffs +2",
        -- left_ring = "Mephitas's Ring +1",
        -- right_ring = "Mephitas's Ring",
        -- back = "Swith Cape +1",
        -- legs = "Shedir Seraweels",
        feet = "Jhakri Pigaches +2"
    }

    sets.HPCure = {
        main = "Daybreak",
        sub = "Sors Shield",
        range = empty,
        ammo = "Hasty Pinion +1",
        -- head = "Gende. Caubeen +1",
        -- neck = "Unmoving Collar +1",
        -- left_ear = "Gifted Earring",
        right_ear = "Mendi. Earring",
        body = "Viti. Tabard +1",
        -- hands = "Kaykaus Cuffs",
        -- left_ring = "Gelatinous Ring +1",
        -- right_ring = "Meridian Ring",
        -- back = "Moonlight Cape",
        waist = "Luminary Sash",
        -- legs = "Carmine Cuisses +1",
        -- feet = "Kaykaus Boots"
    }

    sets.buff.Doom = set_combine(sets.buff.Doom, {})

    -- Sets to return to when not performing an action.

    -- Resting sets
    sets.resting = {
        -- main = "Chatoyant Staff",
        -- sub = "Oneiros Grip",
        range = empty,
        -- ammo = "Impatiens",
        head = "Viti. Chapeau +1",
        -- neck = "Loricate Torque +1",
        left_ear = "Etiolation Earring",
        -- right_ear = "Ethereal Earring",
        body = "Jhakri Robe +2",
        -- hands = gear.merlinic_refresh_hands,
        left_ring = "Defending Ring",
        right_ring = "Sheltered Ring",
        -- back = "Umbra Cape",
        -- waist = "Flume Belt +1",
        -- legs = "Lengo Pants",
        -- feet = gear.chironic_refresh_feet
    }

    -- Idle sets
    sets.idle = {
		main = "Bolelabunga",
		sub = "Genmei Shield",
		ammo = "Staunch Tathlum",
        head = "Viti. Chapeau +1",
        body = "Jhakri Robe +2",
		hands = "Aya. Manopolas +2",
		legs = "Malignance Tights",
		feet = "Aya. Gambieras +2",
		neck = "Twilight Torque",
        waist = "Witful Belt",
        left_ear = "Moonshade Earring",
		right_ear = "Genmei Earring",
		left_ring = "Ayanmo Ring",
		right_ring = "Defending Ring",
		back = {
			name = "Sucellos's Cape",
			augments = {
				'MND+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'Mag. Acc.+10', 'Enmity-10',
				'Damage taken-5%'
			}
		}
	}

    sets.idle.PDT = sets.idle

    sets.idle.MDT = sets.idle

    sets.idle.Weak = sets.idle

    sets.idle.DTHippo = set_combine(sets.idle.PDT, {
        -- back = "Umbra Cape",
        -- legs = "Carmine Cuisses +1",
        -- feet = "Hippo. Socks +1"
    })

    -- Defense sets
    sets.defense.PDT = sets.idle.PDT

    sets.defense.NukeLock = sets.midcast['Elemental Magic']

    sets.defense.MDT = sets.idle.PDT

    sets.defense.MEVA = sets.idle.PDT

    sets.Kiting = {
		-- legs = "Carmine Cuisses +1"
	}
    sets.latent_refresh = {
		-- waist = "Fucho-no-obi"
	}
    sets.latent_refresh_grip = {
		-- sub = "Oneiros Grip"
	}
    sets.TPEat = {
		-- neck = "Chrys. Torque"
	}
    sets.DayIdle = {}
    sets.NightIdle = {}

    -- Weapons sets
    sets.weapons.Sequence = {
		-- main = "Sequence", 
		sub = "Ammurapi Shield"
	}
    sets.weapons.Naegling = {
		main = "Kaja sword", -- "Naegling", 
		sub = "Ammurapi Shield"
	}
    sets.weapons.Almace = {
		-- main = "Almace", 
		sub = "Ammurapi Shield"
    }
    
    sets.weapons.Daybreak = {
        main = "Daybreak",
        sub = "Genmei Shield"
    }
    sets.weapons.DualWeapons = {
		-- main = "Naegling", 
		-- sub = "Thibron"
	}
    sets.weapons.DualWeaponsAcc = {
		-- main = "Naegling", 
		-- sub = "Almace"
	}
    sets.weapons.DualEvisceration = {
		-- main = "Tauret", 
		-- sub = "Almace"
	}
    sets.weapons.DualAeolian = {
		-- main = "Tauret", 
		-- sub = "Daybreak"
	}
    sets.weapons.DualProcDaggers = {
		-- main = "Blurred Knife +1", 
		-- sub = "Atoyac"
	}
    sets.weapons.EnspellOnly = {
        -- main = "Norgish Dagger",
        -- sub = "Chicken Knife II",
        range = "Kaja Bow",
        range = empty,
        -- ammo = "Beetle Arrow"
    }
    sets.weapons.DualClubs = {
		-- main = "Nehushtan", 
		-- sub = "Nehushtan"
	}
    sets.weapons.DualBlackHalo = {
		-- main = "Kaja Rod", 
		-- sub = "Thibron"
	}
    sets.weapons.DualAlmace = {
		-- main = "Almace", 
		-- sub = "Sequence"
	}
    sets.weapons.DualBow = {
        -- main = "Naegling",
        -- sub = "Tauret",
        range = "Kaja Bow",
        ammo = empty,
    }
    sets.weapons.BowMacc = {
		range = "Kaja Bow", 
		ammo = empty
	}

    sets.buff.Sublimation = {
		-- waist = "Embla Sash"
	}
    sets.buff.DTSublimation = {
		-- waist = "Embla Sash"
	}

    -- Engaged sets

    -- Variations for TP weapon and (optional) offense/defense modes.  Code will fall back on previous
    -- sets if more refined versions aren't defined.
    -- If you create a set with both offense and defense modes, the offense mode should be first.
    -- EG: sets.Dagger.Accuracy.Evasion

    -- Normal melee group
    --	sets.engaged = {ammo="Ginsen",
    --		head="Aya. Zucchetto +2",neck="Asperity Necklace",left_ear="Cessance Earring",right_ear="Brutal Earring",
    --		body="Ayanmo Corazza +2",hands="Aya. Manopolas +2",left_ring="Petrov Ring",right_ring="Ilabrat Ring",
    --		back=gear.stp_jse_back,waist="Windbuffet Belt +1",legs="Carmine Cuisses +1",feet="Carmine Greaves +1"}

    sets.engaged = {
        range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Asperity Necklace",
        -- left_ear = "Brutal Earring",
        -- right_ear = "Sherida Earring",
        -- body = "Ayanmo Corazza +2",
        -- hands = "Malignance Gloves",
        -- left_ring = "Petrov Ring",
        -- right_ring = "Ilabrat Ring",
        -- back = gear.stp_jse_back,
        -- waist = "Windbuffet Belt +1",
        -- legs = "Malignance Tights",
        -- feet = "Carmine Greaves +1"
    }

    sets.engaged.EnspellOnly = {
        -- head = "Malignance Chapeau",
        -- neck = "Dls. Torque +2",
        -- left_ear = "Suppanomimi",
        -- right_ear = "Digni. Earring",
        -- body = "Ayanmo Corazza +2",
        -- hands = "Aya. Manopolas +2",
        -- left_ring = "Metamor. Ring +1",
        -- right_ring = "Ramuh Ring +1",
        -- back = "Ghostfyre Cape",
        -- waist = "Reiki Yotai",
        -- legs = "Malignance Tights",
        -- feet = "Malignance Boots"
    }

    sets.engaged.Acc = {
        range = empty,
        -- ammo = "Regal Gam",
        -- head = "Malignance Chapeau",
        -- neck = "Asperity Necklace",
        -- left_ear = "Cessance Earring",
        -- right_ear = "Sherida Earring",
        -- body = "Ayanmo Corazza +2",
        -- hands = "Malignance Gloves",
        -- left_ring = "Petrov Ring",
        -- right_ring = "Ilabrat Ring",
        -- back = gear.stp_jse_back,
        -- waist = "Windbuffet Belt +1",
        -- legs = "Malignance Tights",
        -- feet = "Carmine Greaves +1"
    }

    sets.engaged.FullAcc = {
        range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Asperity Necklace",
        -- left_ear = "Cessance Earring",
        -- right_ear = "Sherida Earring",
        -- body = "Ayanmo Corazza +2",
        -- hands = "Malignance Gloves",
        -- left_ring = "Petrov Ring",
        -- right_ring = "Ilabrat Ring",
        -- back = gear.stp_jse_back,
        -- waist = "Windbuffet Belt +1",
        -- legs = "Malignance Tights",
        -- feet = "Carmine Greaves +1"
    }

    sets.engaged.DT = {
        range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Loricate Torque +1",
        -- left_ear = "Cessance Earring",
        -- right_ear = "Sherida Earring",
        -- body = "Malignance Tabard",
        -- hands = "Hagondes Cuffs +1",
        -- left_ring = "Defending Ring",
        -- right_ring = "Dark Ring",
        -- back = "Moonlight Cape",
        -- waist = "Windbuffet Belt +1",
        -- legs = "Hagondes Pants +1",
        -- feet = "Battlecast Gaiters"
    }

    sets.engaged.Acc.DT = {
        range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Loricate Torque +1",
        -- left_ear = "Cessance Earring",
        -- right_ear = "Sherida Earring",
        -- body = "Malignance Tabard",
        -- hands = "Hagondes Cuffs +1",
        -- left_ring = "Defending Ring",
        -- right_ring = "Dark Ring",
        -- back = "Moonlight Cape",
        -- waist = "Flume Belt +1",
        -- legs = "Hagondes Pants +1",
        -- feet = "Battlecast Gaiters"
    }

    sets.engaged.FullAcc.DT = {
        range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Loricate Torque +1",
        -- left_ear = "Cessance Earring",
        -- right_ear = "Sherida Earring",
        -- body = "Malignance Tabard",
        -- hands = "Hagondes Cuffs +1",
        -- left_ring = "Defending Ring",
        -- right_ring = "Dark Ring",
        -- back = "Moonlight Cape",
        -- waist = "Flume Belt +1",
        -- legs = "Hagondes Pants +1",
        -- feet = "Battlecast Gaiters"
    }

    sets.engaged.DW = {
        range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Anu Torque",
        -- left_ear = "Suppanomimi",
        -- right_ear = "Sherida Earring",
        -- body = "Malignance Tabard",
        -- hands = "Malignance Gloves",
        -- left_ring = "Petrov Ring",
        -- right_ring = "Ilabrat Ring",
        -- back = gear.stp_jse_back,
        -- waist = "Windbuffet Belt +1",
        -- legs = "Carmine Cuisses +1",
        -- feet = "Malignance Boots"
    }

    sets.engaged.DW.Acc = {
        range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Combatant's Torque",
        -- left_ear = "Suppanomimi",
        -- right_ear = "Sherida Earring",
        -- body = "Malignance Tabard",
        -- hands = "Malignance Gloves",
        -- left_ring = "Ramuh Ring +1",
        -- right_ring = "Ilabrat Ring",
        -- back = gear.stp_jse_back,
        -- waist = "Olseni Belt",
        -- legs = "Carmine Cuisses +1",
        -- feet = "Malignance Boots"
    }

    sets.engaged.DW.FullAcc = {
        range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Combatant's Torque",
        -- left_ear = "Suppanomimi",
        -- right_ear = "Telos Earring",
        -- body = "Malignance Tabard",
        -- hands = "Malignance Gloves",
        -- left_ring = "Ramuh Ring +1",
        -- right_ring = "Ramuh Ring +1",
        -- back = gear.stp_jse_back,
        -- waist = "Olseni Belt",
        -- legs = "Carmine Cuisses +1",
        -- feet = "Malignance Boots"
    }

    sets.engaged.DW.DT = {
        range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Loricate Torque +1",
        -- left_ear = "Suppanomimi",
        -- right_ear = "Sherida Earring",
        -- body = "Malignance Tabard",
        -- hands = "Malignance Gloves",
        -- left_ring = "Defending Ring",
        -- right_ring = "Ilabrat Ring",
        -- back = "Moonlight Cape",
        -- waist = "Reiki Yotai",
        -- legs = "Malignance Tights",
        -- feet = "Malignance Boots"
    }

    sets.engaged.DW.Acc.DT = {
        range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Loricate Torque +1",
        -- left_ear = "Suppanomimi",
        -- right_ear = "Sherida Earring",
        -- body = "Malignance Tabard",
        -- hands = "Malignance Gloves",
        -- left_ring = "Defending Ring",
        -- right_ring = "Ilabrat Ring",
        -- back = "Moonlight Cape",
        -- waist = "Reiki Yotai",
        -- legs = "Malignance Tights",
        -- feet = "Malignance Boots"
    }

    sets.engaged.DW.FullAcc.DT = {
        range = empty,
        -- ammo = "Ginsen",
        -- head = "Malignance Chapeau",
        -- neck = "Loricate Torque +1",
        -- left_ear = "Suppanomimi",
        -- right_ear = "Telos Earring",
        -- body = "Malignance Tabard",
        -- hands = "Malignance Gloves",
        -- left_ring = "Defending Ring",
        -- right_ring = "Ramuh Ring +1",
        -- back = "Moonlight Cape",
        -- waist = "Reiki Yotai",
        -- legs = "Malignance Tights",
        -- feet = "Malignance Boots"
    }
end

-- Select default macro book on initial load or subjob change.
-- Default macro set/book
function select_default_macro_book()
    if player.sub_job == 'DNC' then
        set_macro_page(4, 3)
    elseif player.sub_job == 'NIN' then
        set_macro_page(4, 3)
    elseif player.sub_job == 'BLM' then
        set_macro_page(2, 3)
    else
        set_macro_page(1, 3)
    end
end

-- Job Specific Trust Overwrite
function check_trust()
    if not moving then
        if state.AutoTrustMode.value and
            not data.areas.cities:contains(world.area) and
            (buffactive['Elvorseal'] or buffactive['Reive Mark'] or
                not player.in_combat) then
            local party = windower.ffxi.get_party()
            if party.p5 == nil then
                local spell_recasts = windower.ffxi.get_spell_recasts()

                if spell_recasts[980] < spell_latency and
                    not have_trust("Yoran-Oran") then
                    windower.chat.input('/ma "Yoran-Oran (UC)" <me>')
                    tickdelay = os.clock() + 3
                    return true
                elseif spell_recasts[984] < spell_latency and
                    not have_trust("August") then
                    windower.chat.input('/ma "August" <me>')
                    tickdelay = os.clock() + 3
                    return true
                elseif spell_recasts[967] < spell_latency and
                    not have_trust("Qultada") then
                    windower.chat.input('/ma "Qultada" <me>')
                    tickdelay = os.clock() + 3
                    return true
                elseif spell_recasts[914] < spell_latency and
                    not have_trust("Ulmia") then
                    windower.chat.input('/ma "Ulmia" <me>')
                    tickdelay = os.clock() + 3
                    return true
                elseif spell_recasts[979] < spell_latency and
                    not have_trust("Selh'teus") then
                    windower.chat.input('/ma "Selh\'teus" <me>')
                    tickdelay = os.clock() + 3
                    return true
                else
                    return false
                end
            end
        end
    end
    return false
end

function user_job_buff_change(buff, gain)
    if buff:startswith('Addendum: ') or buff:endswith(' Arts') then
        style_lock = true
    end
end

function user_job_lockstyle() windower.chat.input('/lockstyleset 4') end
