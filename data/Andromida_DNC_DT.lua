local incapacitated_states = T {"stun", "petrification", "terror", "sleep", "weakness"}

-- waltz set changes:
--  augment Odnowa
--  switch vocane for carbuncle

-- step set
--  use 2nd moonlight ring

function get_sets()
    sets.Idle = {
        ammo = "Staunch Tathlum +1",
        head = "Turms Cap +1",
        body = "Gleti's Cuirass",
        hands = "Gleti's Gauntlets",
        legs = "Gleti's Breeches",
        feet = "Turms Leggings +1",
        neck = "Warder's Charm +1",
        waist = "Engraved Belt",
        left_ear = "Hearty Earring",
        right_ear = "Infused Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Chirich Ring +1",
        back = {
            name = "Senuna's Mantle",
            augments = {'Phys. dmg. taken-10%'}
        }
    }

    sets.Engaged = {
        ammo = "Coiste Bodhar",
        head = "Nyame Helm",
        body = "Gleti's Cuirass",
        hands = "Malignance Gloves",
        legs = "Gleti's Breeches",
        feet = "Nyame Sollerets",
        neck = "Unmoving Collar +1",
        waist = "Sailfi Belt +1",
        left_ear = "Odnowa Earring +1",
        right_ear = "Sherida Earring",
        left_ring = "Chirich Ring +1+",
        right_ring = "Moonlight Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', '"Dbl.Atk."+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Buff = {}
    sets.Buff["Fan Dance"] = {
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
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
        feet = "Maxixi Toe shoes +2"
    }

    sets.Flourish = {}
    sets.Flourish["Violent Flourish"] = {
        body = "Horos Casaque +3"
    }

    sets.Flourish2 = {}
    sets.Flourish2["Reverse Flourish"] = {
        hands = "Macu. Bangles +3",
        back = {
            name = "Toetapper Mantle",
            augments = {'"Store TP"+2', '"Rev. Flourish"+29', "Weapon skill damage +1%"}
        }
    }

    sets.Flourish3 = {}

    sets.Waltz = {
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        body = "Maxixi Casaque +3",
        hands = "Nyame Gauntlets",
        legs = "Dashing Subligar",
        feet = "Nyame Sollerets",
        neck = "Etoile Gorget +2",
        waist = "Flume Belt",
        left_ear = "Tuisto Earring",
        right_ear = "Odnowa Earring +1",
        left_ring = "Vocane Ring +1",
        right_ring = "Moonlight Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', '"Store TP"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Samba = {
        head = "Maculele Tiara +3",
        body = "Macu. Casaque +3",
        hands = "Macu. Bangles +3",
        legs = "Maculele Tights +3",
        feet = "Macu. Toe sh. +3"
    }

    sets.Step = {
        ammo = "Yamarang",
        head = "Maxixi Tiara +2",
        body = "Nyame Mail",
        hands = "Maxixi Bangles +3",
        legs = "Nyame Flanchard",
        feet = "Horos T. Shoes +3",
        neck = "Etoile Gorget +2",
        waist = "Eschan Stone",
        left_ear = "Tuisto Earring",
        right_ear = "Odnowa Earring +1",
        left_ring = "Vocane Ring +1",
        right_ring = "Moonlight Ring",
        back = {
            name = "Senuna's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', '"Store TP"+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.Step['Feather Step'] = set_combine(sets.Step, {
        feet = "Maculele toe shoes +3"
    })
    -- WS Sets --
    sets.WeaponSkill = {
        ammo = "Oshasha's Treatise",
        head = "Maculele Tiara +3",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Etoile Gorget +2",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Odr Earring",
        left_ring = "Regal Ring",
        right_ring = "Epaminondas's Ring",
        back={
            name="Senuna's Mantle",
            augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%',}
        },
    }

    sets.WeaponSkill["Climactic Rudra's Storm"] = set_combine(sets.WeaponSkill, {
        ammo = "Charis Feather",
        head = "Maculele Tiara +3",
    })
end

function precast(spell)
    if is_magic(spell) then
        equip(sets.FastCast)
        return
    end

    if spell.english == "Spectral Jig" and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if spell.english:startswith("Curing Waltz") and not refine_waltz(spell) then
        return
    end

    if spell.english == "Rudra's Storm" and buffactive["Climactic Flourish"] then
        equip(sets.WeaponSkill["Climactic Rudra's Storm"])
        debug("WeaponSkill Climactic Rudra's Storm")

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
    debug("Aftercast")
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
    if incapacitated_states:find(function(value)
        return buffactive[value] or false
    end) then
        equip(sets.Idle)
        return true
    end
end

function buff_change(name, gain, buff_details)
    if not gain and name == 'Scherzo' then send_command('@input /party ' .. name .. ' removed') end

    if incapacitated_states:contains(name) then
        status_change(player.status)
    end

    debug(name .. " " .. (gain and "on" or "off"))
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

    local mode = args[1]:ucfirst()
    if not sets.Engaged[mode] then
        error("Error: Invalid Engaged Mode: " .. mode)
        return
    end

    sets.Engaged.mode = mode
    status_change(player.status)
    notice("Engaged Mode Set: " .. mode)
end

function find_player_in_alliance(name)
    for party_index, ally_party in ipairs(alliance) do
        for player_index, _player in ipairs(ally_party) do
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

    local waltzes = table.filter({{
        id = 190,
        name = "Curing Waltz",
        level = 15,
        tp = 200,
        hp = 300
    }, {
        id = 191,
        name = "Curing Waltz II",
        level = 30,
        tp = 350,
        hp = 600
    }, {
        id = 192,
        name = "Curing Waltz III",
        level = 45,
        tp = 500,
        hp = 1000
    }, {
        id = 193,
        name = "Curing Waltz IV",
        level = 70,
        tp = 650,
        hp = 1500
    }, {
        id = 194,
        name = "Curing Waltz V",
        level = 87,
        tp = 800,
        hp = 2000
    }}, function(waltz)
        return waltz.level <= dncLevel and waltz.tp <= player.tp and spellRecasts[waltz.id] < 1
    end)

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

function is_magic(spell)
    return spell.type:endswith("Magic") or spell.type == "BardSong" or spell.type == "Ninjutsu" or spell.type == "Trust"
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
