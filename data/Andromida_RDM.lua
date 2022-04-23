local incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

local modes = {
    Idle = "Normal",
    Engaged = "Normal"
}

function get_sets()
    sets.Idle = {}
    sets.Idle.Normal = {
        main = "Daybreak",
        ammo = "Homiliary",
        head = "Viti. Chapeau +3",
        body = "Atrophy Tabard +3",
        hands = "Nyame Gauntlets",
        legs = "Carmine Cuisses +1",
        feet = "Nyame Sollerets",
        neck = "Loricate Torque +1",
        waist = "Flume Belt",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Defending Ring",
        right_ring = "Vocane Ring +1",
        back = {
            name = "Sucellos's Cape",
            augments = {'MND+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'MND+10', '"Fast Cast"+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.Idle.Turtle = {
        main = "Daybreak",
        ammo = "Staunch Tathlum +1",
        head = "Viti. Chapeau +3",
        body = "Bunzi's Robe",
        hands = "Malignance Gloves",
        legs = "Malignance Tights",
        feet = "Malignance Boots",
        neck = "Loricate Torque +1",
        waist = "Flume Belt",
        left_ear = "Etiolation Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Defending Ring",
        right_ring = "Vocane Ring +1",
        back = {
            name = "Sucellos's Cape",
            augments = {'Phys. dmg. taken-10%'}
        }
    }

    sets.Engaged = {}
    sets.Engaged.Normal = {
        ammo = "Aurgelmir Orb +1",
        head = "Bunzi's Hat",
        body = "Malignance Tabard",
        hands = "Malignance Gloves",
        legs = "Malignance Tights",
        feet = "Malignance Boots",
        neck = "Anu Torque",
        waist = "Sailfi Belt +1",
        left_ear = "Sherida Earring",
        right_ear = "Telos Earring",
        left_ring = "Chirich Ring +1",
        right_ring = "Chirich Ring +1",
        back = {
            name = "Sucellos's Cape",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'Accuracy+10', '"Dual Wield"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Midcast = {}
    sets.Midcast['Dark Magic'] = {}
    sets.Midcast['Elemental Magic'] = {
        equipable = true,
        main = "Bunzi's Rod",
        sub = "Ammurapi Shield",
        ammo = "Regal Gem",
        head = "Viti. Chapeau +3",
        body = "Amalric Doublet +1",
        hands = "Jhakri Cuffs +2",
        legs = "Jhakri Slops +2",
        feet = "Amalric Nails +1",
        neck = "Dls. Torque +2",
        waist = "Eschan Stone",
        left_ear = "Friomisi Earring",
        right_ear = "Malignance Earring",
        left_ring = "Strendu Ring",
        right_ring = "Acumen Ring",
        back = {
            name = "Sucellos's Cape",
            augments = {'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'INT+10', '"Fast Cast"+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.Midcast['Enfeebling Magic'] = {
        equipable = true,
        main = "Daybreak",
        sub = "Ammurapi Shield",
        head = "Viti. Chapeau +3",
        body = "Atrophy Tabard +3",
        hands = "Leth. Gantherots +1",
        legs = {
            name = "Chironic Hose",
            augments = {'Mag. Acc.+20 "Mag.Atk.Bns."+20', 'Haste+2', 'MND+13', 'Mag. Acc.+13'}
        },
        feet = "Vitiation Boots +3",
        neck = {
            name = "Dls. Torque +2",
            augments = {'Path: A'}
        },
        waist = "Luminary Sash",
        left_ear = "Snotra Earring",
        right_ear = "Vor Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Sucellos's Cape",
            augments = {'MND+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'MND+10', '"Fast Cast"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Midcast['Enhancing Magic'] = {}
    sets.Midcast['Enhancing Magic']['Other'] = {
        sub = "Ammurapi Shield",
        ammo = "Staunch Tathlum +1",
        head = "Leth. Chappel +1",
        body = "Lethargy Sayon +1",
        hands = "Atrophy Gloves +3",
        legs = "Leth. Fuseau +1",
        feet = "Leth. Houseaux +1",
        neck = "Dls. Torque +2",
        waist = "Embla Sash",
        left_ear = "Andoaa Earring",
        right_ear = "Mimir Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1"
    }
    sets.Midcast['Enhancing Magic']['Self'] = set_combine(sets.Midcast['Enhancing Magic']['Other'], {
        body = "Viti. Tabard +3"
    })
    sets.Midcast['Enhancing Magic']['Refresh'] = set_combine(sets.Midcast['Enhancing Magic']['Other'], {
        head = "Amalric Coif +1",
        body = "Atrophy Tabard +3",
        legs = "Leth. Fuseau +1",
        waist = "Gishdubar Sash"
    })
    sets.Midcast['Enhancing Magic']['Refresh II'] = sets.Midcast['Enhancing Magic']['Refresh']
    sets.Midcast['Enhancing Magic']['Refresh III'] = sets.Midcast['Enhancing Magic']['Refresh']

    sets.Midcast['Divine Magic'] = {}
    sets.Midcast['Healing Magic'] = {}

    sets.FastCast = {
        main = "Crocea Mors",
        ammo = "Impatiens",
        head = "Atro. Chapeau +2",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Loricate Torque +1",
        waist = "Witful Belt",
        left_ear = "Malignance Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Prolix Ring",
        right_ring = "Kishar Ring",
        back = {
            name = "Sucellos's Cape",
            augments = {'"Fast Cast"+10'}
        }
    }
    sets.JobAbility = {}

    sets.WeaponSkill = {
        equipable = true,
        ammo = "Aurgelmir Orb +1",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Dls. Torque +2",
        waist = "Sailfi Belt +1",
        left_ear = "Sherida Earring",
        right_ear = "Ishvara Earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Apate Ring",
        back = {
            name = "Sucellos's Cape",
            augments = {'DEX+20', 'Accuracy+20 Attack+20', 'Accuracy+10', '"Dual Wield"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.WeaponSkill["Savage Blade"] = {
        ammo = "Aurgelmir Orb +1",
        head = "Nyame Helm",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Dls. Torque +2",
        waist = "Sailfi Belt +1",
        left_ear = "Sherida Earring",
        right_ear = "Ishvara Earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Apate Ring",
        back = {
            name = "Sucellos's Cape",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }

    sets.SIRD = {}
end

function precast(spell, action)
    print("Pre " .. spell.action_type)
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
