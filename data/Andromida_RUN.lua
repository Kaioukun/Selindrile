local incapacitated_states = T {"stun", "petrification", "terror", "sleep"}
local party_report = {
    Rayke = 44,
    Gambit = 82,
}

local modes = {
    Idle = "Normal",
    Engaged = "Parry"
}

function get_sets()
    sets.Idle = {}
    sets.Idle.Normal = {
        -- sub = "Mensch Strap +1",
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Carmine cuisses +1",
        feet = "Nyame Sollerets",
        neck = "Warder's Charm +1",
        waist = "Engraved Belt",
        left_ear = "Hearty Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Vocane Ring +1",
        right_ring = "Shadow Ring",
        back = {
            name = "Ogma's Cape",
            augments = {
                'HP+60',
                'Eva.+20 /Mag. Eva.+20',
                'Mag. Evasion+10',
                'Enmity+10',
                'Phys. dmg. taken-10%'
            }
        }
    }
    sets.Idle.Tank = {
        -- main = "Epeolatry",
        -- sub = "Mensch Strap +1",
        sub = "Mensch Strap +1",
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Warder's Charm +1",
        waist = "Engraved Belt",
        left_ear = "Hearty Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Vocane Ring +1",
        right_ring = "Shadow Ring",
        back = {
            name = "Ogma's Cape",
            augments = {'HP+60', 'Eva.+20 /Mag. Eva.+20', 'Mag. Evasion+10', 'Enmity+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.Idle.Meva = {
        -- main = "Epeolatry",
        -- sub = "Mensch Strap +1",
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Futhark Torque +2",
        waist = "Engraved Belt",
        left_ear = "Hearty Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Vocane Ring +1",
        right_ring = "Shadow Ring",
        back = {
            name = "Ogma's Cape",
            augments = {
                'HP+60',
                'Eva.+20 /Mag. Eva.+20',
                'Mag. Evasion+10',
                'Enmity+10',
                'Phys. dmg. taken-10%'
            }
        }
    }
    -- sets.Idle.Kite = {}

    sets.Engaged = {}
    sets.Engaged.Normal = {
        -- main = "Epeolatry",
        -- sub = "Mensch Strap +1",
        ammo = "Ginsen",
        head = {
            name = "Adhemar Bonnet +1",
            augments = {"DEX+12", "AGI+12", "Accuracy+20"}
        },
        body = {
            name = "Adhemar Jacket +1",
            augments = {"STR+12", "DEX+12", "Attack+20"}
        },
        hands = {
            name = "Adhemar Wrist. +1",
            augments = {"DEX+12", "AGI+12", "Accuracy+20"}
        },
        legs = "Samnuha Tights",
        feet = {
            name = "Carmine Greaves +1",
            augments = {"Accuracy+12", "DEX+12", "MND+20"}
        },
        neck = "Anu Torque",
        waist = "Windbuffet Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Sherida Earring",
        left_ring = "Niqmaddu Ring",
        right_ring = "Epona's Ring",
        back = {
            name = "Ogma's cape",
            augments = {
                "STR+20",
                "Accuracy+20 Attack+20",
                "STR+10",
                '"Dbl.Atk."+10'
            }
        }
    }
    sets.Engaged.Parry = {
        -- main = "Epeolatry",
        -- sub = "Mensch Strap +1",
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        body = "Runeist Coat +3",
        hands = "Turms Mittens +1",
        legs = "Eri. Leg Guards +3",
        feet = "Turms Leggings +1",
        neck = "Futhark Torque +2",
        waist = "Flume Belt",
        left_ear = "Tuisto Earring",
        right_ear = "Odnowa Earring +1",
        left_ring = "Moonlight Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Ogma's Cape",
            augments = {'HP+60', 'Eva.+20 /Mag. Eva.+20', 'Enmity+10', 'Parrying rate+5%'}
        }
    }

    -- sets.Engaged.Arabati - Emp Feet Legs rest Nya

    sets.Engaged.Ongo = {
        -- main = "Hepatizon Axe +1",
        -- sub = "Mensch Strap +1",
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Eri. Leg Guards +3",
        feet = "Turms Leggings +1",
        neck = "Futhark Torque +2",
        waist = "Carrier's Sash",
        left_ear = "Tuisto Earring",
        right_ear = "Odnowa Earring +1",
        left_ring = "Moonlight Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Ogma's Cape",
            augments = {'HP+60', 'Eva.+20 /Mag. Eva.+20', 'Enmity+10', 'Parrying rate+5%'}
        }
    }
    sets.Engaged.Tank = sets.Idle.Tank
    sets.Engaged.Meva = sets.Idle.Meva
    sets.Engaged.Hybrid =
        set_combine(
        sets.Engaged.Melee,
        {
            ammo = "Staunch Tathlum +1",
            head = "Futhark Bandeau +3",
            body = "Ayanmo Corazza +2",
            -- hands={
            --     name="Herculean Gloves",
            --     augments={'DEX','Acc/Att','TA'}
            -- },
            legs = "Meg. Chausses +2",
            feet = {
                name = "Herculean Boots",
                augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
            },
            neck = "Futhark Torque +2",
            waist = "Ioskeha Belt +1",
            left_ear = "Telos Earring",
            right_ear = "Sherida Earring",
            left_ring = "Niqmaddu Ring",
            right_ring = "Defending Ring",
            back = {
                name = "Ogma's cape",
                augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", '"Dbl.Atk."+10'}
            }
        }
    )
    sets.Engaged.Melee = {
        -- main = "Epeolatry",
        -- sub = "Utu Grip",
        ammo = "Staunch Tathlum +1",
        head = {
            name = "Adhemar Bonnet +1",
            augments = {'DEX+12', 'AGI+12', 'Accuracy+20'}
        },
        body = "Ashera Harness",
        hands = {
            name = "Adhemar Wrist. +1",
            augments = {'STR+12', 'DEX+12', 'Attack+20'}
        },
        legs = "Samnuha Tights",
        feet = "Turms Leggings +1",
        neck = "Anu Torque",
        waist = "Windbuffet Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Sherida Earring",
        left_ring = "Epona's Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Ogma's Cape",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', '"Dbl.Atk."+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Emnity = {
        equipable = true,
        ammo = "Sapience orb",
        head = "Halitus Helm",
        body = "Emet Harness +1",
        hands = "Kurys Gloves",
        legs = "Eri. Leg Guards +3",
        feet = "Ahosi Leggings",
        neck = "Moonlight Necklace",
        waist = "Trance Belt",
        left_ear = "Trux Earring",
        right_ear = "Cryptic Earring",
        left_ring = "Supershear Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Ogma's cape",
            augments = {
                "Enmity+10",
                "Phys. dmg. taken-10%"
            }
        }
    }

    sets.Rune = {}
    sets.Ward = {}

    -- JA Sets --
    sets.JobAbility = {}

    sets.JobAbility["Battuta"] = {head = "Futhark Bandeau +3"}
    sets.JobAbility["Elemental Sforzo"] = {body = "Futhark Coat +3"}
    sets.JobAbility["Gambit"] = {hands = "Runeist mitons +3"}
    sets.JobAbility["Inspiration"] = {legs = "Futhark Trousers +1"}
    sets.JobAbility["Liement"] = {body = "Futhark Coat +3"}
    sets.JobAbility["Pflug"] = {feet = "Runeist Bottes +1"}
    sets.JobAbility["Rayke"] = {feet = "Futhark Boots +1"}
    sets.JobAbility["Sleight of Sword"] = {hands = "Futhark mitons +1"}
    sets.JobAbility["Swordplay"] = {hands = "Futhark mitons +1"}
    sets.JobAbility["Valiance"] = {body = "Runeist Coat +3"}
    sets.JobAbility["Vallation"] = {body = "Runeist Coat +3"}
    sets.JobAbility["Vivacious Pulse"] = {head = "Erilaz Galea +3"}
    sets.JobAbility["Lunge"] = {
        head = "Agwu's Cap",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Agwu's Slops",
        feet = "Nyame Sollerets",
        neck = "Sanctity Necklace",
        waist = "Orpheus's Sash",
        left_ear = "Friomisi Earring",
        right_ear = "Erilaz Earring +1",
        left_ring = "Moonlight Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Ogma's Cape",
            augments = {'HP+60', 'Eva.+20 /Mag. Eva.+20', 'Mag. Evasion+10', 'Enmity+10', 'Phys. dmg. taken-10%'}
        }
    }

    -- WS Sets --
    sets.WeaponSkill = {}
    -- sets.WeaponSkill['Hard Slash'] = {}
    -- sets.WeaponSkill['Power Slash'] = {}
    -- sets.WeaponSkill['Frostbite'] = {}
    -- sets.WeaponSkill['Freezebite'] = {}
    -- sets.WeaponSkill['Shockwave'] = {}
    -- sets.WeaponSkill['Crescent Moon'] = {}
    -- sets.WeaponSkill['Sickle Moon'] = {}
    -- sets.WeaponSkill['Spinning Slash'] = {}
    -- sets.WeaponSkill['Ground Strike'] = {}
    -- sets.WeaponSkill['Herculean Slash'] = {}

    sets.WeaponSkill["Resolution"] = {
        ammo="Aurgelmir Orb +1",
        head = {
            name = "Adhemar Bonnet +1",
            augments = {"DEX+12", "AGI+12", "Accuracy+20"}
        },
        body = {
            name = "Adhemar Jacket +1",
            augments = {"STR+12", "DEX+12", "Attack+20"}
        },
        hands = {
            name = "Adhemar Wrist. +1",
            augments = {"STR+12", "DEX+12", "Attack+20"}
        },
        legs = {
            name = "Samnuha Tights",
            augments = {"STR+10", "DEX+10", '"Dbl.Atk."+3', '"Triple Atk."+3'}
        },
        feet = {
            name = "Carmine Greaves +1",
            augments = {"Accuracy+12", "DEX+12", "MND+20"}
        },
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Moonshade Earring",
        right_ear = "Sherida Earring",
        left_ring = "Niqmaddu Ring",
        right_ring = "Regal Ring",
        back = {
            name = "Ogma's cape",
            augments = {
                "STR+20",
                "Accuracy+20 Attack+20",
                "STR+10",
                '"Dbl.Atk."+10'
            }
        }
    }

    sets.WeaponSkill["Dimidiation"] = {
        ammo = "Knobkierrie",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Meg. Gloves +2",
        legs = {
            name = "Lustr. Subligar +1",
            augments = {"Accuracy+20", "DEX+8", "Crit. hit rate+3%"}
        },
        feet = {
            name = "Lustra. Leggings +1",
            augments = {"Attack+20", "STR+8", '"Dbl.Atk."+3'}
        },
        neck = "Caro Necklace",
        waist = "Chiner's Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Mache Earring +1",
        left_ring = "Niqmaddu Ring",
        right_ring = "Ilabrat Ring",
        back = {
            name = "Ogma's cape",
            augments = {
                "STR+20", -- DEX
                "Accuracy+20 Attack+20",
                "STR+10", -- DEX
                '"Dbl.Atk."+10' -- WSD
                -- PDT
            }
        }
    }

    sets.WeaponSkill["Shockwave"] = set_combine(sets.WeaponSkill["Resolution"], {})

    sets.WeaponSkill["Fell Cleave"] = set_combine(sets.WeaponSkill["Dimidiation"], {})
    sets.WeaponSkill["Steel Cyclone"] = set_combine(sets.WeaponSkill["Dimidiation"], {})

    sets.WeaponSkill["Ruinator"] = {
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        body = "Ashera Harness",
        hands = "Nyame Gauntlets",
        legs = "Eri. Leg Guards +3",
        feet = "Turms Leggings +1",
        neck = "Anu Torque",
        waist = "Fotia Belt",
        left_ear = "Sherida Earring",
        right_ear = "Telos Earring",
        left_ring = "Moonlight Ring",
        right_ring = "Petrov Ring",
        back = {
            name = "Ogma's Cape",
            augments = {'HP+60', 'Eva.+20 /Mag. Eva.+20', 'Enmity+10', 'Parrying rate+5%'}
        }
    }

    sets.FastCast = {
        ammo = "Sapience Orb",
        head = "Rune. Bandeau +3",
        body = "Erilaz Surcoat +3",
        hands = "Leyline Gloves",
        legs = "Agwu's Slops",
        feet = "Carmine Greaves +1",
        neck = "Voltsurge Torque",
        left_ear = "Etiolation Earring",
        right_ear = "Odnowa Earring +1",
        left_ring = "Kishar Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Ogma's Cape",
            augments = {'"Fast Cast"+10'}
        }
    }

    sets.SIRD = {
        ammo = "Staunch Tathlum +1", -- 11
        head = "Erilaz Galea +3", -- 20
        body = "Nyame Mail",
        hands = "Rawhide Gloves", -- 15
        legs = "Carmine Cuisses +1", -- 20
        feet = {
            name = "Taeon Boots",
            augments = {'Spell interruption rate down -10%'}
        }, -- 10
        neck = "Moonlight Necklace", -- 15
        waist = "Audumbla Sash", -- 10
        left_ear = "Cryptic Earring",
        right_ear = "Odnowa Earring +1",
        left_ring = "Vocane Ring +1",
        right_ring = "Defending Ring",
        back = {
            name = "Ogma's Cape",
            augments = {
                'HP+60',
                'Eva.+20 /Mag. Eva.+20',
                'Mag. Evasion+10',
                'Enmity+10',
                'Phys. dmg. taken-10%'
            }
        }
    } -- SIRD101 PDT49

    sets.Midcast = {}

    sets.Midcast["Healing Magic"] = {}
    sets.Midcast["Healing Magic"]["Cure IV"] = {
        ammo = "Sapience Orb",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Erilaz Gauntlets +3",
        legs = "Eri. Leg Guards +3",
        feet = "Erilaz Greaves +3",
        waist = "Sroda Belt",
        right_ear = "Cryptic Earring",
        left_ring = "Moonlight Ring",
        right_ring = "Vocane Ring +1",
        back = {
            name = "Ogma's Cape",
            augments = {'HP+60', 'Eva.+20 /Mag. Eva.+20', 'Mag. Evasion+10', 'Enmity+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.Midcast["Healing Magic"]["Cure III"] = set_combine(sets.Midcast["Healing Magic"]["Cure IV"], {})
    sets.Midcast["Healing Magic"]["Cure II"] = set_combine(sets.Midcast["Healing Magic"]["Cure IV"], {})
    sets.Midcast["Healing Magic"]["Cure"] = set_combine(sets.Midcast["Healing Magic"]["Cure IV"], {})

    sets.Midcast["Enhancing Magic"] = {
        equipable = true,
        sub = "Utu Grip",
        head = "Erilaz Galea +3",
        hands = "Runeist Mitons +3",
        legs = "Futhark Trousers +1",
        waist = "Olympus Sash",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        left_ear = "Andoaa Earring",
        right_ear = "Mimir Earring"
    }

    sets.Midcast["Enhancing Magic"].Phalanx = {
        ammo = "Staunch Tathlum +1",
        head = "Fu. Bandeau +3",
        hands = "Regal Gauntlets",
        legs = {
            name="Herculean Trousers",
            augments={'Phalanx +3'}
        },
        feet = {
            name = "Herculean Boots",
            augments = {'Weapon Skill Acc.+3', 'Crit.hit rate+3', 'Phalanx +5', 'Accuracy+6 Attack+6'}
        },
        neck = "Moonlight Necklace",
        waist = "Olympus Sash",
        left_ear = "Andoaa Earring",
        right_ear = "Mimir Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Defending Ring",
    }
    sets.Midcast["Enhancing Magic"].Regen = set_combine(
        sets.Midcast["Enhancing Magic"],
        {
            head = "Rune. Bandeau +3",
            right_ear = "Erilaz earring +1"
        }
    )
    sets.Midcast["Enhancing Magic"]["Regen II"] = sets.Midcast["Enhancing Magic"].Regen
    sets.Midcast["Enhancing Magic"]["Regen III"] = sets.Midcast["Enhancing Magic"].Regen
    sets.Midcast["Enhancing Magic"]["Regen IV"] = sets.Midcast["Enhancing Magic"].Regen

    sets.Midcast["Divine Magic"] = set_combine(sets.Emnity, {})
    sets.Midcast["Dark Magic"] = set_combine(sets.Emnity, {})
    sets.Midcast["Blue Magic"] = set_combine(sets.Emnity, {})

    sets.Resting = sets.Midcast["Enhancing Magic"].Phalanx
end

function precast(spell, action)
    if incapacitated() then
        return
    end

    if party_report[spell.english] then
        send_command(
            'input /party ' .. spell.english .. ' on'
            .. ';wait ' .. (party_report[spell.english] - 15)
            .. ';input /party ' .. spell.english .. ' 15 seconds remain'
            .. ';wait 15'
            .. ';input /party ' .. spell.english .. ' off'
        )
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        return
    end

    if sets[spell.type] and sets[spell.type].equipable then
        equip(sets[spell.type])

        return
    end

    if is_magic(spell) then
        equip(sets.FastCast)
        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
end

function midcast(spell, action)
    if incapacitated() then
        return
    end

    if not is_magic(spell) then
        return
    end

    if spell.english == "Stoneskin" then
        send_command("cancel Stoneskin")
    end

    if sets["Midcast"][spell.skill] and sets["Midcast"][spell.skill][spell.english] then
        equip(sets["Midcast"][spell.skill][spell.english])

        return
    end

    if sets["Midcast"][spell.skill] and sets["Midcast"][spell.skill].equipable then
        equip(sets["Midcast"][spell.skill])

        return
    end

    equip(sets.SIRD)
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

function status_change_idle()
    equip(sets.Idle[modes.Idle])
end

function status_change_engaged()
    if modes.Engaged == "Tank" and buffactive["Battuta"] then
        equip(sets.Engaged.Parry)
        return
    end

    equip(sets.Engaged[modes.Engaged])
end

function aftercast(spell, action)
    status_change(player.status)
end

function buff_change(name, gain, buff_details)
    if incapacitated_states:contains(name) then
        status_change(player.status)
    end

    if name == "Battuta" then
        status_change(player.status)
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
    if not args[1] then
        error("Error: No Engaged Mode Specified")
        return
    end

    local cmdMode = args[1]:ucfirst()
    if not sets.Engaged[cmdMode] then
        error("Error: Invalid Engaged Mode: " .. cmdMode)
        return
    end

    modes.Engaged = cmdMode
    status_change(player.status)
    notice("Engaged Mode Set: " .. cmdMode)
end

function self_command_i(args)
    return self_command_idle(args)
end

function self_command_idle(args)
    if not args[1] then
        error("Error: No Idle Mode Specified")
        return
    end

    local cmdMode = args[1]:ucfirst()
    if not sets.Idle[cmdMode] then
        error("Error: Invalid Engaged Mode: " .. cmdMode)
        return
    end

    modes.Idle = cmdMode
    status_change(player.status)
    notice("Engaged Mode Set: " .. cmdMode)
end

function self_command_ongo(args)
    modes.Engaged = "Ongo"
    send_command('input /macro set 4')
end

function is_magic(spell)
    return spell.action_type == "Magic"
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
