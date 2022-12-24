function get_sets()
    incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

    sets.Idle = {
        ammo = "Staunch Tathlum +1",
        head = "Gleti's Mask",
        body = "Gleti's Cuirass",
        hands = "Gleti's Gauntlets",
        legs = "Carmine cuisses +1",
        feet = "Gleti's Boots",
        neck = "Loricate Torque +1",
        waist = "Flume Belt",
        left_ear = "Infused Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Sulevia's Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                'DEX+20',
                'Accuracy+20 Attack+20',
                'DEX+10',
                '"Dbl.Atk."+10',
                'Phys. dmg. taken-10%'
            }
        }
    }

    sets.Engaged = {mode = "Hybrid"}
    sets.Engaged.Melee = {
        ammo = "Aurgelmir Orb +1",
        head = "Flam. Zucchetto +2",
        body = "Flamma Korazin +2",
        hands = "Sulev. Gauntlets +2",
        legs = "Sulev. Cuisses +2",
        feet = "Flam. Gambieras +2",
        neck = "Dgn. Collar +2",
        waist = "Ioskeha Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Sherida Earring",
        left_ring = "Petrov Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                "DEX+20",
                "Accuracy+20 Attack+20",
                "DEX+10",
                '"Dbl.Atk."+10',
                "Phys. dmg. taken-10%"
            }
        }
    }

    sets.Engaged.Dt = {
        ammo = "Staunch Tathlum +1",
        head = "Sulevia's Mask +2",
        body = "Sulevia's Plate. +2",
        hands = "Sulev. Gauntlets +2",
        legs = "Sulev. Cuisses +2",
        feet = "Sulev. Leggings +2",
        neck = "Loricate Torque +1",
        waist = "Tempus Fugit",
        left_ear = "Telos Earring",
        right_ear = "Sherida Earring",
        left_ring = "Moonlight Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                "DEX+20",
                "Accuracy+20 Attack+20",
                "DEX+10",
                '"Dbl.Atk."+10',
                "Phys. dmg. taken-10%"
            }
        }
    }
    sets.Engaged.Hybrid = {
        ammo = "Staunch Tathlum +1",
        head = "Gleti's Mask",
        body = "Gleti's Cuirass",
        hands = "Gleti's Gauntlets",
        legs = "Gleti's Breeches",
        feet = "Gleti's Boots",
        neck = {
            name = "Dgn. Collar +2",
            augments = {'Path: A'}
        },
        waist = "Ioskeha Belt +1",
        left_ear = "Mache Earring +1",
        right_ear = "Sherida Earring",
        left_ring = "Moonlight Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                'DEX+20',
                'Accuracy+20 Attack+20',
                'DEX+10',
                '"Dbl.Atk."+10',
                'Phys. dmg. taken-10%'
            }
        }
    }
    sets.Engaged.Mdt = set_combine(sets.Engaged.Hybrid, {
        right_ring = "Defending Ring",
        feet = "Nyame Sollerets",
    })

    sets.Engaged.Sword = {
        main = "Naegling",
        ammo = "Coiste Bodhar",
        head = "Flam. Zucchetto +2",
        body = "Gleti's Cuirass",
        hands = "Pel. Vambraces +3",
        legs = "Ptero. Brais +3",
        feet = "Flam. Gambieras +2",
        neck = "Anu Torque",
        waist = "Ioskeha Belt +1",
        left_ear = "Brutal Earring",
        right_ear = "Sherida Earring",
        left_ring = "Petrov Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', '"Dbl.Atk."+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Engaged.Pole = {
        main = "Shining One",
        sub = "Utu Grip",
        ammo = "Coiste Bodhar",
        head = "Flam. Zucchetto +2",
        body = "Pelt. Plackart +3",
        hands = "Gleti's Gauntlets",
        legs = "Ptero. Brais +3",
        feet = "Flam. Gambieras +2",
        neck = "Anu Torque",
        waist = "Ioskeha Belt +1",
        left_ear = "Brutal Earring",
        right_ear = "Sherida Earring",
        left_ring = "Petrov Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', '"Dbl.Atk."+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Doom = {
        waist = "Gishdubar Sash",
        left_ring = "Purity Ring",
        right_ring = "Saida Ring"
    }

    -- JA Sets --
    sets.JobAbility = {}

    sets.JobAbility["Jump"] = {
        body = "Vishap Mail +2",
        hands = "Vis. Fng. Gaunt. +2"
    }
    sets.JobAbility["Soul Jump"] = set_combine(sets.JobAbility["Jump"], {})
    sets.JobAbility["Spirit Jump"] = set_combine(sets.JobAbility["Soul Jump"], {feet = "Pelt. Schyn. +3"})
    sets.JobAbility["High Jump"] = set_combine(sets.JobAbility["Jump"], {legs = "Pteroslaver Brais +3"})
    sets.JobAbility["Spirit Link"] = {}

    sets.JobAbility["Ancient Circle"] = {
        legs = "Vishap brais +3",
    }
    sets.JobAbility["Call Wyvern"] = {
        neck = "Dgn. Collar +2",
        body = "Ptero. Mail +3",
        left_ring = "Dreki Ring",
    }

    sets.JobAbility.Hasso = {}
    sets.JobAbility.Meditate = {}

    -- WS Sets --
    sets.WeaponSkill = {
        ammo = "Knobkierrie",
        head = "Gleti's Mask",
        body = "Nyame Mail",
        hands = "Gleti's Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Dgn. Collar +2",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Thrud Earring",
        left_ring = "Regal Ring",
        right_ring = "Epaminondas's Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                'STR+20',
                'Accuracy+20 Attack+20',
                'STR+10',
                'Weapon skill damage +10%',
                'Phys. dmg. taken-10%'
            }
        }
    }

    sets.WeaponSkill["Drakesbane"] = {
        ammo = "Knobkierrie",
        head = "Flam. Zucchetto +2",
        body = "Gleti's Cuirass",
        hands = {
            name = "Ptero. Fin. G. +3",
            augments = {'Enhances "Angon" effect'}
        },
        legs = "Pelt. Cuissots +3",
        feet = "Nyame Sollerets",
        neck = {
            name = "Dgn. Collar +2",
            augments = {'Path: A'}
        },
        waist = {
            name = "Sailfi Belt +1",
            augments = {'Path: A'}
        },
        left_ear = "Thrud Earring",
        right_ear = "Sherida Earring",
        left_ring = "Regal Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {"STR+20", "Accuracy+20 Attack+20", '"Dbl.Atk."+10'}
        }
    }

    sets.WeaponSkill["Stardiver"] = {
        ammo = "Crepuscular Pebble",
        head = "Nyame Helm",
        body = "Gleti's Cuirass",
        hands = "Pel. Vambraces +3",
        legs = "Gleti's Breeches",
        feet = "Nyame Sollerets",
        neck = "Dgn. Collar +2",
        waist = "Fotia Belt",
        left_ear = "Moonshade Earring",
        right_ear = "Sherida Earring",
        left_ring = "Sroda Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', '"Dbl.Atk."+10'}
        }
    }

    sets.WeaponSkill["Camlann's Torment"] = {
        ammo = "Knobkierrie",
        head = "Peltast's Mezail +3",
        body = {
            name = "Valorous Mail",
            augments = {
                "Weapon skill damage +4%",
                "STR+9",
                "Accuracy+15",
                "Attack+4"
            }
        },
        hands = "Ptero. Fin. G. +3",
        legs = "Vishap Brais +3",
        feet = "Sulevia's Leggings +2",
        neck = "Dgn. Collar +2",
        waist = "Fotia Belt",
        left_ear = "Ishvara Earring",
        right_ear = "Sherida Earring",
        left_ring = "Regal Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {"STR+20", "Accuracy+20 Attack+20", '"Dbl.Atk."+10'}
        }
    }

    sets.WeaponSkill["Impulse Drive"] = {
        ammo = "Knobkierrie",
        head = "Peltast's Mezail +3",
        body = "Gleti's Cuirass",
        hands = "Gleti's Gauntlets",
        legs = "Gleti's Breeches",
        feet = "Gleti's Boots",
        neck = {
            name = "Dgn. Collar +2",
            augments = {'Path: A'}
        },
        waist = {
            name = "Sailfi Belt +1",
            augments = {'Path: A'}
        },
        left_ear = {
            name = "Moonshade Earring",
            augments = {'Attack+4', 'TP Bonus +250'}
        },
        right_ear = "Sherida Earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }

    sets.WeaponSkill["Sonic Thrust"] = set_combine(sets.WeaponSkill["Camlann's Torment"], {})

    sets.WeaponSkill["Leg Sweep"] = {
        head = "Flam. Zucchetto +2",
        body = "Flamma Korazin +2",
        hands = "Flam. Manopolas +2",
        legs = "Flamma Dirs +2",
        feet = "Flam. Gambieras +2",
        neck = "Dgn. Collar +2",
        waist = "Fotia Belt",
        left_ear = {
            name = "Moonshade Earring",
            augments = {"Attack+4", "TP Bonus +250"}
        },
        right_ear = "Digni. Earring",
        left_ring = "Regal Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {"STR+20", "Accuracy+20 Attack+20", '"Dbl.Atk."+10'}
        }
    }
    sets.WeaponSkill["Raiden Thrust"] = {
        ammo = "Knobkierrie",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Sibyl Scarf",
        waist = "Orpheus's Sash",
        left_ear = "Moonshade Earring",
        right_ear = "Friomisi Earring",
        left_ring = "Shiva Ring +1",
        right_ring = "Acumen Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }

    sets.WeaponSkill["Savage Blade"] = {
        ammo = "Knobkierrie",
        head = "Peltast's Mezail +3",
        body = "Nyame Mail",
        hands = "Gleti's Gauntlets",
		legs = "Nyame Flanchard",
		feet = "Nyame Sollerets",
        neck = "Dgn. Collar +2",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Peltast's Earring",
        left_ring = "Sroda Ring",
        right_ring = "Epaminondas's Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                'STR+20',
                'Accuracy+20 Attack+20',
                'STR+10',
                'Weapon skill damage +10%',
                'Phys. dmg. taken-10%'
            }
        }
    }

    sets.WeaponSkill["Retribution"] = {
        ammo = "Knobkierrie",
        head = "Peltast's Mezail +3",
        body = "Gleti's Cuirass",
        hands = "Ptero. Fin. G. +3",
        legs = "Vishap Brais +3",
        feet = "Sulev. Leggings +2",
        neck = "Dgn. Collar +2",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Thrud Earring",
        left_ring = "Regal Ring",
        right_ring = "Epaminondas's Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                'STR+20',
                'Accuracy+20 Attack+20',
                'STR+10',
                'Weapon skill damage +10%',
                'Phys. dmg. taken-10%'
            }
        }
    }

    sets.WeaponSkill["Earth Crusher"] = {
        ammo = "Knobkierrie",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Sanctity Necklace",
        waist = "Orpheus's Sash",
        left_ear = "Moonshade Earring",
        right_ear = "Friomisi Earring",
        left_ring = "Shiva Ring +1",
        right_ring = "Epaminondas's Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }

    sets.WeaponSkill["Cataclysm"] = set_combine(
        sets.WeaponSkill["Earth Crusher"],
        {
            head = "Pixie Hairpin +1",
            left_ring = "Archon Ring",
        }
    )

    sets.WeaponSkill['Aeolian Edge'] = set_combine(sets.WeaponSkill["Earth Crusher"], {})
end

function precast(spell, action)
    if incapacitated() then
        return
    end

    if "Trust" == spell.type then
        return
    end

    if (spell.english == "Spectral Jig" or spell.english == "Sneak") and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        return
    end

    if spell.type == "WeaponSkill" then
        equip(sets["WeaponSkill"])

        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
end

function aftercast(spell, action)
    status_change(player.status)
end

function status_change(new, old)
    if incapacitated() then
        return
    end

    if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])


        if buffactive["Doom"] then
            equip(sets.Doom)
        end
    end
end

function status_change_engaged()
    equip(sets.Engaged[sets.Engaged.mode])

    if buffactive["Doom"] then
        equip(sets.Doom)
    end
end

function buff_change(name, gain, buff_details)
    if incapacitated_states:contains(name) then
        status_change(player.status)
    end

    if name == "Doom" then
        equip(sets.Doom)
    end
end

function incapacitated()
    if
        incapacitated_states:find(
            function(value)
                return buffactive[value] or false
            end
        )
    then
        equip(sets.Idle)
        return true
    end
end

function self_command(argsString)
    print(T(player).status)

    args = argsString:lower():split(" ")

    if _G["self_command_" .. args[1]] then
        _G["self_command_" .. args[1]](args:slice(2))
    end

    status_change(player.status)
end

function self_command_e(args)
    return self_command_engaged(args)
end

function self_command_engaged(args)
    local mode = "Melee"

    if args[1] then
        mode = args[1]:ucfirst()
    end

    if not sets.Engaged[mode] then
        error("Error: Invalid Engaged Mode: " .. mode)
        return
    end

    sets.Engaged.mode = mode
    status_change(player.status)
    -- notice("Engaged Mode Set: " .. mode)
end

function self_command_tp(args)
    local order = T{
        {id=162, command = '"Spirit Link" <me>'},
        {id=167, command = '"Soul Jump" <t>'},
        {id=166, command = '"Spirit Jump" <t>' },
        {id=158, command = '"Jump" <t>'},
        {id=159, command = '"High Jump" <t>'},
    }

    local recasts = windower.ffxi.get_ability_recasts()

    if recasts[162] and pet.isvalid and (pet.tp > 500 or pet.hpp < 70) then
        windower.send_command("input /ja 'Spirit Link' <me>")
    end

    for _, ability in ipairs(order) do
        if recasts[ability.id] == 0 then
            windower.send_command("input /ja " .. ability.command)
            return
        end
    end
end

function notice(s)
    add_to_chat(121, s)
end

function error(s)
    add_to_chat(4, s)
end

function debug(s)
    if debugMode then
        notice(s)
    end
end
