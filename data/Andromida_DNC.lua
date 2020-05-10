function get_sets()
    send_command("input /macro book 1;input /macro set 1;input /lockstyleset 1")

    incapacitated_states = T {"stun", "petrification", "terror", "sleep", "weakness"}

    sets.Idle = {
        ammo = "Staunch Tathlum +1",
        head = "Turms Cap +1",
        body = "Horos Casaque +3",
        hands = { 
            name = "Herculean Gloves", 
            augments = {
                'Phys. dmg. taken -5%',
                'STR+10',
                'Accuracy+7',
                'Attack+7',
            }
        },
        legs = "Mummu Kecks +2",
        feet = "Turms Leggings +1",
        neck = "Loricate Torque +1",
        waist = "Engraved Belt",
        left_ear = "Hearty Earring",
        right_ear = "Genmei Earring",
        left_ring = "Moonlight Ring",
        right_ring = "Defending Ring",
        back = { 
            name = "Senuna's Mantle", 
            augments = {
                'DEX+20',
                'Accuracy+20 Attack+20',
                'DEX+10',
                '"Store TP"+10',
                'Phys. dmg. taken-10%',
            }
        },
    }

    sets.Engaged = { mode = "Melee" }
    sets.Engaged.Melee = {
        ammo = "Yamarang",
        head = {
            name = "Adhemar Bonnet +1",
            augments = {"DEX+12", "AGI+12", "Accuracy+20"}
        },
        body = "Horos Casaque +3",
        hands = {
            name = "Adhemar Wrist. +1",
            augments = {"DEX+12", "AGI+12", "Accuracy+20"}
        },
        legs = "Samnuha Tights",
        feet = "Mummu Gamash. +2",
        neck = "Etoile gorget +2",
        waist = "Windbuffet Belt +1",
        left_ear = "Sherida Earring",
        right_ear = "Telos Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Petrov Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Store TP"+10', "Phys. dmg. taken-10%"}
        }
    }

    DT = false
    sets.PDT = {
        ammo = "Staunch Tathlum +1",
        head = "Turms Cap +1",
        body = "Horos Casaque +3",
        hands = { 
            name = "Herculean Gloves", 
            augments = {
                'Phys. dmg. taken -5%',
                'STR+10',
                'Accuracy+7',
                'Attack+7',
            }
        },
        legs = "Mummu Kecks +2",
        feet = "Turms Leggings +1",
        neck = "Loricate Torque +1",
        waist = "Engraved Belt",
        left_ear = "Hearty Earring",
        right_ear = "Genmei Earring",
        left_ring = "Moonlight Ring",
        right_ring = "Defending Ring",
        back = { 
            name = "Senuna's Mantle", 
            augments = {
                'DEX+20',
                'Accuracy+20 Attack+20',
                'DEX+10',
                '"Store TP"+10',
                'Phys. dmg. taken-10%',
            }
        },
    }

    -- JA Sets --
    sets.JobAbility = {}
    sets.JobAbility["Saber Dance"] = {
        legs = "Horos Tights +3"
    }

    sets.JobAbility["Fan Dance"] = {
        hands = "Horos Bangles +1"
    }

    sets.JobAbility["No Foot Rise"] = {
        body = "Horos Casaque +3"
    }

    sets.Jig = {
        legs = "Horos Tights +3",
        feet = "Maxixi Toeshoes +2"
    }

    sets.Flourish = {}
    sets.Flourish["Violent Flourish"] = {
        body = "Horos Casaque +3"
    }

    sets.Flourish2 = {}
    sets.Flourish2["Reverse Flourish"] = {
        hands = "Macu. Bangles +1",
        back = {
            name = "Toetapper Mantle",
            augments = {'"Store TP"+2', '"Rev. Flourish"+29', "Weapon skill damage +1%"}
        }
    }

    sets.Flourish3 = {}

    sets.Waltz = {
        ammo="Yamarang",
        head="Horos Tiara +3",
        body="Maxixi Casaque +3",
        hands="Maxixi Bangles +3",
        legs="Dashing Subligar",
        feet="Horos T. Shoes +3",
        neck="Etoile Gorget +2",
        waist="Chaac Belt",
    }

    sets.Samba = {
        head = "Maculele Tiara +1",
        body = "Macu. Casaque +1",
        hands = "Macu. Bangles +1",
        legs = "Maculele Tights +1",
        feet = "Macu. Toeshoes +1"
    }

    sets.Step = {
        head = "Maxixi Tiara +2",
        body = "Horos Casaque +3",
        hands = "Maxixi Bangles +3",
        legs = "Meg. Chausses +2",
        feet = "Horos Toe Shoes +3",
        neck = "Etoile gorget +2",
        left_ring = "Regal Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "Weapon skill damage +10%"}
        }
    }

    -- WS Sets --
    sets.WeaponSkill = {
        ammo = "Charis Feather",
        head = {
            name = "Lilitu Headpiece",
            augments = {"STR+10", "DEX+10", "Attack+15", "Weapon skill damage +3%"}
        },
        body = { 
            name = "Herculean Vest", 
            augments = {
                'MND+9',
                'Attack+29',
                'Weapon skill damage +6%',
                'Accuracy+15 Attack+15',
            }
        },
        hands = "Maxixi Bangles +3",
        legs = "Horos Tights +3",
        feet = {
            name = "Herculean Boots",
            augments = {"Attack+24", "Weapon skill damage +3%", "DEX+14"}
        },
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Sherida Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Regal Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", "Weapon skill damage +10%"}
        }
    }

    sets.WeaponSkill["Evisceration"] = {
        ammo="Charis Feather",
        head={ 
            name="Adhemar Bonnet +1", 
            augments={
                'DEX+12',
                'AGI+12',
                'Accuracy+20',
            }
        },
        body="Meg. Cuirie +2",
        hands="Mummu Wrists +1",
        legs={ 
            name="Lustr. Subligar +1", 
            augments={
                'Accuracy+20',
                'DEX+8',
                'Crit. hit rate+3%',
            }
        },
        feet="Mummu Gamash. +2",
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Sherida Earring",
        right_ear="Mache Earring +1",
        left_ring="Mummu Ring",
        right_ring="Regal Ring",
        back={ 
            name="Senuna's Mantle", 
            augments={
                'DEX+20',
                'Accuracy+20 Attack+20',
                'DEX+10',
                'Weapon skill damage +10%',
            }
        },
    }

    sets.WeaponSkill["Pyrrhic Kleos"] = {
        ammo="Charis Feather",
        head="Horos Tiara +3",
        body="Horos Casaque +3",
        hands={ 
            name="Adhemar Wrist. +1", 
            augments={'STR+12','DEX+12','Attack+20',}
        },
        legs="Samnuha Tights",
        feet={ 
            name="Lustra. Leggings +1", 
            augments={'Attack+20','STR+8','"Dbl.Atk."+3',}
        },
        neck="Fotia Gorget",
        waist="Fotia Belt",
        left_ear="Sherida Earring",
        right_ear="Mache Earring +1",
        left_ring="Epona's Ring",
        right_ring="Regal Ring",
        back={ 
            name="Senuna's Mantle", 
            augments={
                'STR+20',
                'Accuracy+20 Attack+20',
                'STR+10',
                '"Dbl.Atk."+10',
            }
        },
    }

    sets.WeaponSkill["Rudra's Storm"] = {
        ammo="Charis Feather",
        head="Lilitu Headpiece",
        body = { 
            name = "Herculean Vest", 
            augments = {
                'MND+9',
                'Attack+29',
                'Weapon skill damage +6%',
                'Accuracy+15 Attack+15',
            }
        },
        hands="Maxixi Bangles +3",
        legs="Horos Tights +3",
        feet={ 
            name="Herculean Boots", 
            augments={
                'Attack+24',
                'Weapon skill damage +3%',
                'DEX+14',
            }
        },
        neck="Etoile Gorget +2",
        waist="Chiner's Belt +1",
        left_ear="Ishvara Earring",
        right_ear="Moonshade Earring",
        left_ring="Ilabrat Ring",
        right_ring="Regal Ring",
        back={ 
            name="Senuna's Mantle", 
            augments={
                'DEX+20',
                'Accuracy+20 Attack+20',
                'DEX+10',
                'Weapon skill damage +10%',
            }
        },
    }
    sets.WeaponSkill["Shark Bite"] = sets.WeaponSkill["Rudra's Storm"]
end

function precast(spell)
    if "Trust" == spell.type then
        return
    end

    if spell.english == "Spectral Jig" and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if "Step" == spell.type then
        local allRecasts = windower.ffxi.get_ability_recasts()
        local prestoCooldown = allRecasts[236]
        local missingEnoughFM = not buffactive["Finishing Move (6+)"]

        if prestoCooldown < 1 and missingEnoughFM then
            cast_delay(1.1)
            send_command('@input /ja "Presto" <me>')
        end
    end

    if spell.english:startswith("Curing Waltz") and not refine_waltz(spell) then
        return
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        debug(spell.type .. " " .. spell.english)

        return
    end

    if ignore_spell_type(spell) and sets[spell.type] then
        equip(sets[spell.type])

        debug(spell.type)

        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
end

function ignore_spell_type(spell)
    return spell.type ~= "JobAbility" and not spell.type:startswith("Flourish")
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

function status_change_engaged()
    equip(sets.Engaged[sets.Engaged.Set])
end

function buff_change(name, gain, buff_details)
    if incapacitated_states:contains(name) then
        status_change(player.status)
    end

    debug(name .. " " .. (gain and "on" or "off"))
end

function debug(s)
    send_command("@input /echo " .. s)
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

function find_player_in_alliance(name)
    for party_index,ally_party in ipairs(alliance) do
        for player_index,_player in ipairs(ally_party) do
            if _player.name == name then
                return _player
            end
        end
    end
end

function get_target_missing_hp(target)
    if target.type == "SELF" then
        return player.max_hp - player.hp
    end

    if not target.isallymember then
        return
    end

    local target = find_player_in_alliance(target.name)

    return math.floor((target.hp / (target.hpp / 100)) - target.hp)
end

function get_dnc_level()
    if player.sub_job == "DNC" then
        return player.sub_job_level
    end

    return player.main_job_level
end

function refine_waltz(spell)
    if player.tp < 200 then
        add_to_chat(122, "No TP!")
        cancel_spell()
        return
    end

    local dncLevel = get_dnc_level()
    local spellRecasts = windower.ffxi.get_spell_recasts()
    local missingHP = get_target_missing_hp(spell.target)

    if not missingHP then
        return true
    end

    local waltzes =
        table.filter(
        {
            {id = 190, name = "Curing Waltz", level = 15, tp = 200, hp = 300},
            {id = 191, name = "Curing Waltz II", level = 30, tp = 350, hp = 600},
            {id = 192, name = "Curing Waltz III", level = 45, tp = 500, hp = 1000},
            {id = 193, name = "Curing Waltz IV", level = 70, tp = 650, hp = 1500},
            {id = 194, name = "Curing Waltz V", level = 87, tp = 800, hp = 2000}
        },
        function(waltz)
            return waltz.level <= dncLevel 
                and waltz.tp <= player.tp 
                and spellRecasts[waltz.id] < 1
        end
    )

    local newWaltz = "Curing Waltz"
    for _, waltz in ipairs(waltzes) do
        if waltz.hp > missingHP then
            break
        end

        newWaltz = waltz.name
    end

    if newWaltz ~= spell.english then
        send_command('@input /ja "' .. newWaltz .. '" ' .. tostring(spell.target.raw))
        cancel_spell()
        return
    end

    return true
end
