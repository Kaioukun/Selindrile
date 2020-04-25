function get_sets()
    send_command("@input /macro book 5;wait .1;input /macro set 1")

    sets.Idle = {
        ammo = "Eminent Bullet",
        head = "Meghanada Visor +2",
        body = "Meg. Cuirie +2",
        hands = "Meg. Gloves +2",
        legs = "Meg. Chausses +2",
        feet = "Meg. Jam. +2",
        neck = "Twilight Torque",
        waist = "Flume Belt",
        left_ear = "Telos Earring",
        right_ear = "Infused Earring",
        left_ring = "Defending Ring",
        right_ring = "Warden's Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+5", '"Dbl.Atk."+10', "System: 1 ID: 1155 Val: 4"}
        }
    }

    DT = false
    sets.PDT = {
        head = "Meghanada Visor +2",
        body = "Meg. Cuirie +2",
        hands = "Meg. Gloves +2",
        legs = "Meg. Chausses +2",
        feet = "Meg. Jam. +2",
        neck = "Twilight Torque",
        waist = "Flume Belt",
        left_ring = "Warden's ring",
        right_ring = "Defending Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+5", '"Dbl.Atk."+10', "System: 1 ID: 1155 Val: 4"}
        }
    }

    sets.Engaged = {
        head = {
            name = "Adhemar Bonnet +1",
            augments = {"DEX+12", "AGI+12", "Accuracy+20"}
        },
        body = {
            name = "Herculean Vest",
            augments = {
                "AGI+13",
                "Weapon skill damage +2%",
                "Quadruple Attack +3",
                "Accuracy+18 Attack+18",
                'Mag. Acc.+18 "Mag.Atk.Bns."+18'
            }
        },
        hands = {
            name = "Adhemar Wrist. +1",
            augments = {"DEX+12", "AGI+12", "Accuracy+20"}
        },
        legs = {
            name = "Herculean Trousers",
            augments = {'"Triple Atk."+4', "DEX+7", "Accuracy+15", "Attack+4"}
        },
        feet = "Mummu Gamash. +2",
        neck = "Iqabi Necklace",
        waist = "Windbuffet Belt +1",
        left_ear = "Telos Earring",
        right_ear = "Digni. Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Petrov Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+5", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}
        }
    }

    sets.Misc = {}
    sets.Misc.Ranged = {
        head = "Meghanada Visor +2",
        body = "Meg. Cuirie +2",
        hands = "Carmine Fin. Ga. +1",
        legs = "Meg. Chausses +2",
        feet = "Meg. Jam. +2",
        neck = "Iskur Gorget",
        left_ear = "Telos Earring",
        right_ear = "Neritic Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Haverton Ring",
        back = "Buquwik Cape"
    }

    sets.JobAbility = {}

    sets.JobAbility["Wild Card"] = {feet = "Lanun Bottes +2"}
    sets.JobAbility["Random Deal"] = {body = "Lanun Frac +3"}

    sets.WeaponSkill = {
        head = "Lilitu Headpiece",
        body = "Meg. Cuirie +2",
        hands = "Mummu Wrists +1",
        legs = "Meg. Chausses +2",
        feet = {
            name = "Herculean Boots",
            augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
        },
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Ishvara Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Apate Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "Weapon skill damage +10%"}
        }
    }
    sets.WeaponSkill["Savage Blade"] = {
        head = "Lilitu Headpiece",
        body = {
            name = "Herculean Vest",
            augments = {"Attack+25", "Weapon skill damage +3%", "DEX+12", "Accuracy+11"}
        },
        hands = "Meg. Gloves +2",
        legs = "Meg. Chausses +2",
        feet = {
            name = "Herculean Boots",
            augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
        },
        neck = "Fotia Gorget",
        waist = "Metalsinger Belt",
        left_ear = "Ishvara Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ifrit Ring",
        right_ring = "Ifrit Ring +1",
        back = {
            name = "Camulus's Mantle",
            augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", "Weapon skill damage +10%"}
        }
    }

    sets.WeaponSkill["Last Stand"] = {
        head = {
            name = "Lilitu Headpiece",
            augments = {"STR+10", "DEX+10", "Attack+15", "Weapon skill damage +3%"}
        },
        body = {
            name = "Herculean Vest",
            augments = {"Attack+25", "Weapon skill damage +3%", "DEX+12", "Accuracy+11"}
        },
        hands = "Meg. Gloves +2",
        legs = {
            name = "Herculean Trousers",
            augments = {"Rng.Acc.+9", "Weapon skill damage +5%", "AGI+7"}
        },
        feet = {
            name = "Herculean Boots",
            augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
        },
        neck = "Fotia Gorget",
        waist = "Elanid Belt",
        left_ear = "Ishvara Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Apate Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "Weapon skill damage +10%"}
        }
    }
    sets.WeaponSkill["Detonator"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Slug Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Sniper Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Split Shot"] = sets.WeaponSkill["Last Stand"]
    sets.WeaponSkill["Numbing Shot"] = sets.WeaponSkill["Last Stand"]

    sets.WeaponSkill["Wildfire"] = {
        ammo = "Orichalc. Bullet",
        head = "Lilitu Headpiece",
        body = "Lanun Frac +3",
        hands = {
            name = "Carmine Fin. Ga. +1",
            augments = {"Rng.Atk.+20", '"Mag.Atk.Bns."+12', '"Store TP"+6'}
        },
        legs={ 
            name="Herculean Trousers", 
            augments={'"Store TP"+4','Accuracy+10','Weapon skill damage +8%','Accuracy+9 Attack+9','Mag. Acc.+11 "Mag.Atk.Bns."+11',}
        },
        feet = "Lanun bottes +2",
        neck = "Sanctity Necklace",
        waist = "Eschan Stone",
        left_ear = "Friomisi Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Acumen Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"AGI+20", "Rng.Acc.+20 Rng.Atk.+20", "AGI+10", "Weapon skill damage +10%"}
        }
    }
    sets.WeaponSkill["Leaden Salute"] = set_combine(
        sets.WeaponSkill["Wildfire"],
        {head = "Pixie Hairpin +1"}
    )

    sets.CorsairRoll = {
        head = {
            name = "Lanun Tricorne",
            augments = {'Enhances "Winning Streak" effect'}
        },
        hands = "Chasseur's Gants",
        left_ring = "Barataria Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+5", '"Dbl.Atk."+10', "System: 1 ID: 1155 Val: 4"}
        }
    }
    -- sets.CorsairRoll["Fighter's Roll"] = {}

    sets.CorsairShot = {
        head="Mummu Bonnet +1",
        body="Mummu Jacket +2",
        hands="Mummu Wrists +1",
        legs="Mummu Kecks +2",
        feet="Mummu Gamash. +2",
        neck="Sanctity Necklace",
        waist="Eschan Stone",
        left_ear="Digni. Earring",
        right_ear="Gwati Earring",
        left_ring="Vertigo Ring",
        right_ring="Archon Ring",
    }
    sets.CorsairShot = sets.WeaponSkill["Wildfire"]

    sets.ConserveMP = {
        left_ear = "Gwati Earring",
        right_ear = "Magnetic Earring"
    }

    sets.Precast = {}
    sets.Precast.Haste = {
        head="Mummu Bonnet +1",
        body="Herculean Vest",
        hands={ 
            name="Leyline Gloves", 
            augments={'Accuracy+12','Mag. Acc.+14','"Mag.Atk.Bns."+15','"Fast Cast"+2',}
        },
        legs="Herculean Trousers", 
        feet="Herculean Boots",
        waist="Dynamic Belt",
    }
    sets.Precast.FastCast = set_combine(
        sets.ConserveMP,
        sets.Precast.Haste,
        {
            hands = {
                name = "Leyline Gloves",
                augments = {"Accuracy+12", "Mag. Acc.+14", '"Mag.Atk.Bns."+15', '"Fast Cast"+2'}
            },
            left_ear = "Loquac. Earring",
            left_ring = "Prolix Ring"
        }
    )

    sets.Midcast = {}
    sets.Midcast.Cure = {
        head = "Meghanada Visor +2",
        body = "Meg. Cuirie +2",
        hands = "Nilas Gloves",
        legs = "Meg. Chausses +2",
        feet = "Meg. Jam. +2",
        neck = "Phalaina Locket",
        left_ring = "Globidonta Ring"
    }
end

function precast(spell, action)
    if "Leaden Salute" == spell.english then
        equip(sets.WeaponSkill["Leaden Salute"])

        if spell.element == world.day_element or spell.element == world.weather_element then
            equip({waist = "Anrin Obi"})
        end

        return
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        return
    elseif sets[spell.type] then
        equip(sets[spell.type])

        return
    end

    if is_magic(spell) then
        equip(sets.Precast.FastCast)

        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
end

function is_magic(spell)
    return spell.type:endswith("Magic") 
        or spell.type == "BardSong" 
        or spell.type == "Ninjutsu" 
        or spell.type == "Trust"
end

function midcast(spell)
    if spell.english:startswith("Cure") then
        equip(sets.Midcast.Cure)
        return
    end
end

function aftercast(spell, action)
    status_change(player.status)
end

function status_change(new, old)
    local status_change_function = "status_change_" .. new:lower()
    if _G[status_change_function] and not _G[status_change_function]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])
    end
end

function status_change_engaged()
    equip(sets.Engaged)

    if DT then
        equip(sets.PDT)
    end
end

function self_command(command)
    command = command:lower()

    if "dt" == command then
        DT = not DT

        windower.add_to_chat(123, "DT: " .. (DT and "on" or "off"))

        status_change(player.status, player.status)

        return
    end
end

function debug(s)
    send_command("@input /echo " .. s)
end
