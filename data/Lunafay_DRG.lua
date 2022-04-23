function get_sets()
    incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

    sets.Idle = {
        -- ammo = "Staunch Tathlum +1",
        head = "Gleti's Mask",
        body = "Gleti's Cuirass",
        hands = "Gleti's Gauntlets",
        legs = "Carmine cuisses +1",
        feet = "Gleti's Boots",
        -- neck = "Loricate Torque +1",
        -- waist = "Flume Belt",
        -- left_ear = "Infused Earring",
        -- right_ear = "Etiolation Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Defending Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                'DEX+20',
                'Accuracy+20 Attack+20',
                'DEX+10',
                '"Dual Wield"+10',
                'Phys. dmg. taken-10%'
            }
        }
    }

    sets.Engaged = {
        mode = "Mdt"
    }
    sets.Engaged.Hybrid = {
        ammo = "Aurgelmir orb",
        head = "Gleti's Mask",
        body = "Gleti's Cuirass",
        hands = "Gleti's Gauntlets",
        legs = "Gleti's Breeches",
        feet = "Gleti's Boots",
        neck = "Dgn. Collar +1",
        waist = "Ioskeha Belt +1",
        -- left_ear = "Mache Earring +1",
        left_ear = "Telos Earring",
        right_ear = "Sherida Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                'DEX+20',
                'Accuracy+20 Attack+20',
                'DEX+10',
                '"Dual Wield"+10',
                'Phys. dmg. taken-10%'
            }
        }
    }
    sets.Engaged.Mdt = set_combine(sets.Engaged.Hybrid, {
        right_ring = "Defending Ring",
        feet = "Nyame Sollerets",
    })

    -- JA Sets --
    sets.JobAbility = {}

    sets.JobAbility["Jump"] = {
        ammo = "Aurgelmir Orb",
        head = "Flam. Zucchetto +2",
        body = "Vishap Mail +2",
        hands="Vis. Fng. Gaunt. +2",
        feet = "Flam. Gambieras +2",
        neck = "Vim Torque +1",
        waist = "Kentarch Belt +1",
        left_ear = "Dedition Earring",
        right_ear = "Sherida Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Petrov Ring"
    }
    sets.JobAbility["Soul Jump"] = set_combine(sets.JobAbility["Jump"], {})
    sets.JobAbility["Spirit Jump"] = set_combine(sets.JobAbility["Soul Jump"], {
        -- feet = "Pelt. Schyn. +1"
    })
    sets.JobAbility["High Jump"] = set_combine(sets.JobAbility["Jump"], {
        -- legs = "Pteroslaver Brais +3"
    })
    sets.JobAbility["Spirit Link"] = {
        -- head = "Vishap Armet +1",
        -- hands = "Peltast's Vambraces +1",
    }
    sets.JobAbility["Angon"] = {
        -- hands = "Ptero. Fin. G. +3",
    }
    sets.JobAbility["Ancient Circle"] = {
        legs = "Vishap Brais +3",
    }
    sets.JobAbility["Call Wyvern"] = {
        neck = "Dgn. Collar +1",
        -- body = "Pteroslaver Mail +1",
        left_ring = "Dreki Ring",
    }

    -- WS Sets --
    sets.WeaponSkill = {}

    sets.WeaponSkill["Savage Blade"] = {
        ammo = "Knobkierrie",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Ptero. Fin. G. +3",
        legs = "Vishap Brais +3",
        feet = "Nyame Sollerets",
        neck = "Dgn. Collar +1",
        waist = {
            name = "Sailfi Belt +1",
            augments = {'Path: A'}
        },
        left_ear = "Moonshade Earring",
        right_ear = "Thrud Earring",
        left_ring = "Karieyh Ring",
        right_ring = "Niqmaddu Ring",
        -- left_ring = "Regal Ring",
        -- right_ring = "Epaminondas's Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                'STR+20',
                'Accuracy+20 Attack+20',
                'STR+10',
                'Weapon skill damage +10%',
                'Damage taken-5%'
            }
        }
    }

    sets.WeaponSkill["Impulse Drive"] = set_combine(sets.WeaponSkill["Savage Blade"], {})
    sets.WeaponSkill["Stardiver"] = set_combine(sets.WeaponSkill["Savage Blade"], {})
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
    end
end

function status_change_engaged()
    equip(sets.Engaged[sets.Engaged.mode])
end

function buff_change(name, gain, buff_details)
    if incapacitated_states:contains(name) then
        status_change(player.status)
    end
end

function incapacitated()
    if incapacitated_states:find(function(value)
        return buffactive[value] or false
    end) then
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
    local order = T { -- {id=162, command = '"Spirit Link" <me>'},
    {
        id = 167,
        command = '"Soul Jump" <t>'
    }, {
        id = 166,
        command = '"Spirit Jump" <t>'
    }, {
        id = 158,
        command = '"Jump" <t>'
    }, {
        id = 159,
        command = '"High Jump" <t>'
    }}

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
