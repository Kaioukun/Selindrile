local engaged_mode = "Normal"

local incapacitated_states = T {"stun", "petrification", "terror", "sleep", "defense down"}

-- kegero puk clusters
-- jinpu bats marid qutrub ziz

local tutle_mobs = T {
    -- Ody NMs
    "Asena",
    "Bygul",
    "Chaos Steward",
    "Dabbat al-Ard",
    "Kurmajara",
    "Lotanu",
    "Wayra Tata",

    -- Ody Holo
    "Agon Heretic",
    "Agon Marquess",
    "Agon Monarch",
    "Agon Viscount",
    "Agon Vizier",

    -- Ody Mobs
    "Nostos Apkallu",
    "Nostos Bhoot",
    "Nostos Black Pudding",
    "Nostos Clot",
    "Nostos Ghoul",
    "Nostos Imp",
    "Nostos Korrigan",
    "Nostos Rarab",
    "Nostos Sapling",
    "Nostos Scorpion",
    "Nostos Spider",
    "Nostos Wasp",

    -- Dyna Sandy
    "Halphas",
    "Ravager Leader",
    "Ravager Commander",
    "Mendicant Leader",
    "Mendicant Commander",
    "Cutpurse Leader",
    "Cutpurse Commander",
    "Invoker Leader",
    "Invoker Commander",
    "Warlock Leader",
    "Warlock Commander",
    "Stalwart Leader",
    "Stalwart Commander",
    "Hunter Leader",
    "Hunter Commander",
    "Priest Leader",
    "Priest Commander",
    "Minstrel Leader",
    "Minstrel Commander",
    "Kagemusha Leader",
    "Kagemusha Commander",
    "Canoneer Leader",
    "Canoneer Commander",
    "Squadron Pugilist",
    "Regiment Pugilist",
    "Squadron Tamer",
    "Regiment Tamer",
    "Squadron Shinobi",
    "Regiment Shinobi",
}

-- https://www.ffxiah.com/forum/topic/54555/the-odyssey-strategy-and-discussion/152/#3590215
local mob_weapon_damage_type = T {
    -- Ody Lamia
    ["Agon Adjudicator"] = "Piercing",
    ["Agon Dignitary"] = "Piercing",
    ["Agon Marksman"] = "Piercing",
    ["Agon Rabblerouser"] = "Piercing",
    ["Agon Scallywag"] = "Piercing",
    ["Agon Vizier"] = "Piercing",
    ["Agon Yojimbo"] = "Piercing",
    ["Agon Monarch"] = "Piercing",

    -- Ody Trolls
    ["Agon Clearmind"] = "Slashing",
    ["Agon Defender"] = "Slashing",
    ["Agon Footsoldier"] = "Slashing",
    ["Agon Infidel"] = "Slashing",
    ["Agon Ritualist"] = "Slashing",
    ["Agon Sharpshooter"] = "Slashing",
    ["Agon Shieldsaint"] = "Slashing",
    ["Agon Viscount"] = "Slashing",

    -- Ody Mamool
    ["Agon Cleric"] = "Slashing",
    ["Agon Heretic"] = "Slashing",
    ["Agon Initiate"] = "Slashing",
    ["Agon Instigator"] = "Slashing",
    ["Agon Marquess"] = "Slashing",
    ["Agon Phalanx"] = "Slashing",
    ["Agon Pilferer"] = "Slashing",
    ["Agon Praetor"] = "Slashing",

    -- Ody NMs
    ["Asena"] = "Slashing",
    ["Bygul"] = "Slashing",
    ["Chaos Steward"] = "Slashing",
    ["Dabbat al-Ard"] = "Slashing",
    ["Kurmajara"] = "Piercing",
    ["Lotanu"] = "Slashing",
    ["Wayra Tata"] = "Slashing",

    -- Ody Mobs
    ["Nostos Ameretat"] = "Slashing",
    ["Nostos Apkallu"] = "Slashing",
    ["Nostos Bat"] = "Slashing",
    ["Nostos Bats"] = "Slashing",
    ["Nostos Bhoot"] = "Piercing",
    ["Nostos Bigbird"] = "Slashing",
    ["Nostos Black Pudding"] = "Slashing",
    ["Nostos Bugard"] = "Slashing",
    ["Nostos Chigoe"] = "Slashing",
    ["Nostos Clot"] = "Slashing",
    ["Nostos Cluster"] = "Slashing",
    ["Nostos Colibri"] = "Slashing",
    ["Nostos Crab"] = "Piercing",
    ["Nostos Dahak"] = "Slashing",
    ["Nostos Defoliator"] = "Slashing",
    ["Nostos Diremite"] = "Slashing",
    ["Nostos Draugar"] = "Slashing",
    ["Nostos Flytrap"] = "Slashing",
    ["Nostos Funguar"] = "Slashing",
    ["Nostos Gaganabo"] = "Slashing",
    ["Nostos Goobbue"] = "Slashing",
    ["Nostos Imp"] = "Slashing",
    ["Nostos Jagil"] = "Piercing",
    ["Nostos Karakul"] = "Slashing",
    ["Nostos Korrigan"] = "Slashing",
    ["Nostos Leech"] = "Slashing",
    ["Nostos Leopard"] = "Slashing",
    ["Nostos Manticore"] = "Slashing",
    ["Nostos Marid"] = "Slashing",
    ["Nostos Puk"] = "Slashing",
    ["Nostos Qutrub"] = "Slashing",
    ["Nostos Ram"] = "Slashing",
    ["Nostos Raptor"] = "Slashing",
    ["Nostos Rarab"] = "Slashing",
    ["Nostos Sapling"] = "Slashing",
    ["Nostos Scorpion"] = "Slashing",
    ["Nostos Soulflayer"] = "Slashing",
    ["Nostos Spider"] = "Slashing",
    ["Nostos Tiger"] = "Slashing",
    ["Nostos Treant"] = "Slashing",
    ["Nostos Vulture"] = "Slashing",
    ["Nostos Wamoura"] = "Slashing",
    ["Nostos Wamouracampa"] = "Slashing",
    ["Nostos Wasp"] = "Slashing",
    ["Nostos Weapon"] = "Slashing",
    ["Nostos Worm"] = "Slashing",
    ["Nostos Wyvern"] = "Slashing",
    ["Nostos Ziz"] = "Slashing",
}

local mob_ws = T {
    ["Nostos Cluster"] = "Tachi: Kagero",
    ["Nostos Puk"] = "Tachi: Kagero",
    ["Nostos Draugar"] = "Tachi: Kagero",

    ["Nostos Bat"] = "Tachi: Jinpu",
    ["Nostos Bats"] = "Tachi: Jinpu",
    ["Nostos Wyvern"] = "Tachi: Jinpu",
    ["Nostos Karakul"] = "Tachi: Jinpu",
    ["Nostos Rarab"] = "Tachi: Jinpu",
    ["Nostos Bugard"] = "Tachi: Jinpu",
    ["Nostos Ziz"] = "Tachi: Jinpu",
    ["Nostos Leopard"] = "Tachi: Jinpu",
    ["Nostos Ram"] = "Tachi: Jinpu",
}


function get_sets()
    sets.Weapons = {
        Piercing = {
            main = "Shining One",
            sub = "Utu Grip",
        },
        Slashing = {
            main = "Masamune",
            sub = "Utu Grip",
        },
    }

    sets.Idle = {
        ammo = "Aurgelmir Orb",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Sam. Nodowa +2",
        waist = "Ioskeha Belt +1",
        left_ear = "Cessance Earring",
        right_ear = "Brutal Earring",
        left_ring = "Flamma Ring",
        right_ring = "Rajas Ring",
        back = {
            name = "Smertrios's Mantle",
            augments = {"DEX+20", "Accuracy+20 Attack+20", "DEX+10", '"Dbl.Atk."+10', "Phys. dmg. taken-10%"}
        }
    }

    sets.Engaged = {}
    sets.Engaged.Normal = {
        ammo = "Aurgelmir Orb",
        head = "Flam. Zucchetto +2",
        body = "Ken. Samue +1",
        hands = "Wakido Kote +3",
        legs = "Ken. Hakama +1",
        feet = "Ken. Sune-Ate +1",
        neck = "Sam. Nodowa +2",
        waist = "Sailfi Belt +1",
        left_ear = "Cessance Earring",
        right_ear = "Brutal Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Smertrios's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', '"Dbl.Atk."+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.Engaged.Hybrid = {
        ammo = "Aurgelmir Orb",
        head = "Mpaca's Cap",
        body = "Mpaca's Doublet",
        hands = "Mpaca's Gloves",
        legs = "Mpaca's Hose",
        feet = "Mpaca's Boots",
        neck = "Sam. Nodowa +2",
        waist = "Ioskeha Belt +1",
        left_ear = "Cessance Earring",
        right_ear = "Telos Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Smertrios's Mantle",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'DEX+10', '"Dbl.Atk."+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.Engaged.Turtle = {
        ammo = "Aurgelmir Orb",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Wakido Kote +3",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Sam. Nodowa +2",
        waist = "Sailfi Belt +1",
        left_ear = "Dedition Earring",
        right_ear = "Telos Earring",
        left_ring = "Defending Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Smertrios's Mantle",
            augments = {
                'DEX+20',
                'Accuracy+20 Attack+20',
                'DEX+10',
                '"Dbl.Atk."+10',
                'Phys. dmg. taken-10%'
            }
        }
    }

    -- JA Sets --
    sets.JobAbility = {}
    sets.JobAbility.Meditate = {
        head = "Wakido Kabuto +1",
        hands = "Sakonji Kote +1",
        back = "Smertrios's Mantle"
    }

    -- WS Sets --
    sets.WeaponSkill = {
        equipable = true,
        sub = "Utu Grip",
        ammo = "Knobkierrie",
        head = "Mpaca's cap",
        body = "Sakonji Domaru +3",
        hands = "Nyame Gauntlets",
        legs = "Wakido Haidate +3",
        feet = "Nyame Sollerets",
        neck = "Sam. Nodowa +2",
        waist = "Sailfi Belt +1",
        left_ear = "Thrud Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Karieyh Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Smertrios's Mantle",
            augments = {"STR+20", "Accuracy+20 Attack+20", "STR+10", "Weapon skill damage +10%", "Phys. dmg. taken-10%"}
        }
    }
    sets.WeaponSkill["Tachi: Jinpu"] = {
        ammo = "Knobkierrie",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Sam. Nodowa +2",
        waist = "Orpheus's Sash",
        left_ear = "Moonshade Earring",
        right_ear = "Friomisi Earring",
        left_ring = "Karieyh Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Smertrios's Mantle",
            augments = {'Weapon skill damage +10%'}
        }
    }
    sets.WeaponSkill["Tachi: Kagero"] = set_combine({}, sets.WeaponSkill["Tachi: Jinpu"])
    sets.WeaponSkill["Tachi: Koki"] = set_combine({}, sets.WeaponSkill["Tachi: Jinpu"])

    sets.WeaponSkill["Impulse Drive"] = {
        main = "Shining One",
        sub = "Utu Grip",
        ammo = "Knobkierrie",
        head = "Mpaca's Cap",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Sam. Nodowa +2",
        waist = "Sailfi Belt +1",
        left_ear = "Thrud Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Defending Ring",
        right_ring = "Karieyh Ring",
        back = {
            name = "Smertrios's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }

    sets.WeaponSkill.Stardiver = sets.WeaponSkill["Impulse Drive"]

    -- Magic Sets --
    sets.FastCast = {}
    sets.Midcast = {}
end

function precast(spell, action)
    if incapacitated() then
        return
    end

    if (spell.english == "Spectral Jig" or spell.english == "Sneak") and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if override_weaponskill(spell) then
        return
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

function override_weaponskill(spell)
    if spell.type ~= "WeaponSkill" then return end
    if player.equipment.main ~= sets.Weapons.Slashing.main then return end

    local newWS = mob_ws[player.target.name]

    if not newWS then return end
    if newWS == spell.english then return end

    cancel_spell()
    send_command('@input /ws "' .. newWS .. '" ' .. tostring(spell.target.raw))
    return true
end

function midcast(spell, action)
    if incapacitated() then
        return
    end

    if not is_magic(spell) then
        return
    end

    if sets["Midcast"][spell.skill] and sets["Midcast"][spell.skill][spell.english] then
        equip(sets["Midcast"][spell.skill][spell.english])

        return
    end

    if sets["Midcast"][spell.skill] and sets["Midcast"][spell.skill].equipable then
        equip(sets["Midcast"][spell.skill])

        return
    end

    debug("No set for Midcast." .. spell.skill .. "." .. spell.english)
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
    if mob_weapon_damage_type[player.target.name] then
       equip(sets.Weapons[mob_weapon_damage_type[player.target.name]])
    end

    if tutle_mobs:contains(player.target.name) then
        equip(sets.Engaged.Turtle)
        return
    end

    equip(sets.Engaged[engaged_mode])
end

function aftercast(spell, action)
    status_change(player.status)
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
        equip(sets.Engaged.Turtle)
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

    local mode = args[1]:ucfirst()
    if not sets.Engaged[mode] then
        error("Error: Invalid Engaged Mode: " .. mode)
        return
    end

    engaged_mode = mode
    status_change(player.status)
    notice("Engaged Mode Set: " .. mode)
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
