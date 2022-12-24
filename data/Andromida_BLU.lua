local incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

local modes = {
    Idle = "Turtle",
    Engaged = "Hybrid"
}

function get_sets()
    sets.Idle = {}
    sets.Idle.Turtle = {
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        body = "Hashishin Mintan +2",
        hands = "Nyame Gauntlets",
        legs = "Carmine cuisses +1",
        feet = "Nyame Sollerets",
        neck = "Loricate Torque +1",
        waist = "Carrier's Sash",
        left_ear = "Genmei Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Defending Ring",
        right_ring = "Shadow Ring",
        back = {
            name = "Rosmerta's Cape",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', '"Store TP"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Engaged = {}
    sets.Engaged.Hybrid = {
        ammo = "Aurgelmir Orb +1",
        head = "Malignance Chapeau",
        body = "Malignance Tabard",
        hands = "Malignance Gloves",
        legs = "Malignance Tights",
        feet = "Malignance Boots",
        neck = "Mirage Stole +1",
        waist = "Carrier's Sash",
        left_ear = "Suppanomimi",
        right_ear = "Dedition Earring",
        left_ring = "Defending Ring",
        right_ring = "Epona's Ring",
        back = {
            name = "Rosmerta's Cape",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', '"Store TP"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Midcast = {}
    sets.Midcast['BlueMagic'] = {
        ammo = "Crepuscular Pebble",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Amalric Nails +1",
        neck = "Sibyl Scarf",
        waist = "Orpheus's Sash",
        left_ear = "Friomisi Earring",
        right_ear = "Regal Earring",
        left_ring = "Shiva Ring +1",
        right_ring = "Strendu Ring",
        back = {
            name = "Rosmerta's Cape",
            augments = {'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'INT+10', 'Haste+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.FastCast = {
        ammo = "Sapience Orb",
        head = {
            name = "Carmine Mask +1",
            augments = {'Accuracy+20', 'Mag. Acc.+12', '"Fast Cast"+4'}
        },
        body = "Luhlaza Jubbah",
        hands = "Leyline Gloves",
        legs = "Aya. Cosciales +2",
        feet = "Carmine Greaves +1",
        neck = "Voltsurge Torque",
        waist = "Witful Belt",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Kishar Ring",
        right_ring = "Prolix Ring"
    }
    sets.JobAbility = {}

    sets.WeaponSkill = {}
    sets.WeaponSkill["Savage Blade"] = {
        ammo = "Crepuscular Pebble",
        head = "Nyame Helm",
        body = "Gleti's Cuirass",
        hands = "Nyame Gauntlets",
        legs = "Gleti's Breeches",
        feet = "Nyame Sollerets",
        neck = "Mirage Stole +1",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Ishvara Earring",
        left_ring = "Sroda Ring",
        right_ring = "Epaminondas's Ring",
        back = {
            name = "Rosmerta's Cape",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'Crit.hit rate+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.WeaponSkill["Expiacion"] = {
        ammo = "Aurgelmir Orb +1",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Mirage Stole +1",
        waist = "Sailfi Belt +1",
        left_ear = "Moonshade Earring",
        right_ear = "Ishvara Earring",
        left_ring = "Sroda Ring",
        right_ring = "Epaminondas's Ring",
        back = {
            name = "Rosmerta's Cape",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'Crit.hit rate+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.WeaponSkill["Chant du Cygne"] = {
        ammo = "Aurgelmir Orb +1",
        head = "Adhemar Bonnet +1",
        body = "Gleti's Cuirass",
        hands = "Gleti's Gauntlets",
        legs = "Gleti's Breeches",
        feet = "Gleti's Boots",
        neck = "Mirage Stole +1",
        waist = "Fotia Belt",
        left_ear = "Moonshade Earring",
        right_ear = "Brutal Earring",
        left_ring = "Epona's Ring",
        right_ring = "Ilabrat Ring",
        back = {
            name = "Rosmerta's Cape",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'Crit.hit rate+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.WeaponSkill["Requiescat"] = {
        ammo = "Aurgelmir Orb +1",
        head = "Jhakri Coronal +2",
        body = "Jhakri Robe +2",
        hands = "Jhakri Cuffs +2",
        legs = "Jhakri Slops +2",
        feet = "Jhakri Pigaches +2",
        neck = "Fotia Gorget",
        waist = "Fotia Belt",
        left_ear = "Moonshade Earring",
        right_ear = "Brutal Earring",
        left_ring = "Epona's Ring",
        right_ring = "Epaminondas's Ring",
        back = {
            name = "Rosmerta's Cape",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'Crit.hit rate+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.WeaponSkill["Sanguine Blade"] = {
        ammo = "Crepuscular Pebble",
        head = "Pixie Hairpin +1",
        body = "Nyame Mail",
        hands = "Jhakri Cuffs +2",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Sibyl Scarf",
        waist = "Orpheus's Sash",
        left_ear = "Friomisi Earring",
        right_ear = "Regal Earring",
        left_ring = "Archon Ring",
        right_ring = "Epaminondas's Ring",
        back = {
            name = "Rosmerta's Cape",
            augments = {'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'INT+10', 'Haste+10', 'Phys. dmg. taken-10%'}
        }
    }


    sets.SIRD = {}
end

function precast(spell, action)
    print("Pre " .. spell.action_type .. spell.type)
    if incapacitated() then
        return
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        print(spell.type, spell.english)
        equip(sets[spell.type][spell.english])

        return
    end

    if sets[spell.type] and sets[spell.type].equipable then
        equip(sets[spell.type])

        return
    end

    if spell.action_type == "Magic" then
        equip(sets.FastCast)
        return
    end
end

function midcast(spell, action)
    if incapacitated() then
        return
    end

    if spell.action_type ~= "Magic" then
        return
    end

    if sets["Midcast"][spell.skill] and sets["Midcast"][spell.skill][spell.english] then
        equip(sets["Midcast"][spell.skill][spell.english])

        return
    end

    if spell.skill == "Enhancing Magic" then
        if spell.target.id == player.id then
            equip(sets["Midcast"]["Enhancing Magic"]["Self"])
            return
        end

        equip(sets["Midcast"]["Enhancing Magic"]["Other"])
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
    equip(sets.Engaged[modes.Engaged])
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
        equip(sets.Idle.Turtle)
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

    modes.Engaged = mode
    status_change(player.status)
    notice("Engaged Mode Set: " .. mode)
end
