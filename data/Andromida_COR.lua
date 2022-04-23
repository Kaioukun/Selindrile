-- sam/drk
-- pld/casters
-- 


function get_sets()
    sets.Idle = {
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Warder's Charm +1",
        waist = {
            name = "Sailfi Belt +1",
            augments = {'Path: A'}
        },
        left_ear = "Infused Earring",
        right_ear = "Hearty Earring",
        left_ring = "Vocane Ring +1",
        right_ring = "Shadow Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+5', '"Dbl.Atk."+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Engaged = {
        main = "Naegling",
        ranged = "Anarchy +2",
        head = "Malignance Chapeau",
        body = "Malignance Tabard",
        hands = "Malignance Gloves",
        legs = "Malignance Tights",
        feet = "Malignance Boots",
        neck = "Caro Necklace",
        waist = {
            name = "Sailfi Belt +1",
            augments = {'Path: A'}
        },
        left_ear = "Telos Earring",
        right_ear = "Mache Earring +1",
        left_ring = "Petrov Ring",
        right_ring = "Ilabrat Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+5', '"Dbl.Atk."+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.JobAbility = {}

    sets.JobAbility["Wild Card"] = {feet = "Lanun Bottes +2"}
    sets.JobAbility["Random Deal"] = {body = "Lanun Frac +3"}

    sets.WeaponSkill = {
        head = "Lilitu Headpiece",
        body = "Meg. Cuirie +2",
        hands = "Mummu Wrists +2",
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
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Caro Necklace",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Ishvara Earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Regal Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {
                'STR+20',
                'Accuracy+20 Attack+20',
                'STR+10',
                'Weapon skill damage +10%'
            }
        }
    }

    -- sets.WeaponSkill["Last Stand"] = {}
    -- sets.WeaponSkill["Detonator"] = sets.WeaponSkill["Last Stand"]
    -- sets.WeaponSkill["Slug Shot"] = sets.WeaponSkill["Last Stand"]
    -- sets.WeaponSkill["Sniper Shot"] = sets.WeaponSkill["Last Stand"]
    -- sets.WeaponSkill["Split Shot"] = sets.WeaponSkill["Last Stand"]
    -- sets.WeaponSkill["Numbing Shot"] = sets.WeaponSkill["Last Stand"]

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
    sets.WeaponSkill["Leaden Salute"] = {
        main = "Naegling",
        sub = "Blurred Knife +1",
        range = "Fomalhaut",
        ammo = "Chrono Bullet",
        head = "Pixie Hairpin +1",
        body = "Lanun Frac +3",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Lanun Bottes +2",
        neck = "Warder's Charm +1",
        waist = "Eschan Stone",
        left_ear = "Friomisi Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Archon Ring",
        right_ring = "Acumen Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {'AGI+20', 'Rng.Acc.+20 Rng.Atk.+20', 'AGI+10', 'Weapon skill damage +10%'}
        }
    }

    sets.CorsairRoll = {
        main = "Lanun Knife",
        range = "Compensator",
        head = "Lanun Tricorne",
        neck = "Regal necklace",
        body = "Chasseur's Frac +1",
        hands = "Chasseur's Gants +1",
        legs = "Chasseur's Culottes",
        --right_ring = "Luzaf's Ring",
        back = {
            name = "Camulus's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+5", '"Dbl.Atk."+10', "System: 1 ID: 1155 Val: 4"}
        }
    }
    sets.JobAbility["Double-Up"] = {
        legs = "Lanun Trews",
        --right_ring = "Luzaf's Ring",
    }

    sets.CorsairShot = {
        head = "Malignance Chapeau",
        body = "Malignance Tabard",
        hands = "Malignance Gloves",
        legs = "Malignance Tights",
        feet = "Malignance Boots",
        left_ear = "Telos Earring",
        right_ear = "Dedition Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Chirich Ring +1"
    }
    --sets.CorsairShot = sets.WeaponSkill["Wildfire"]
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
