local incapacitated_states = T {"stun", "petrification", "terror", "sleep"}

function get_sets()
    sets.Idle = {
        ammo = "Staunch Tathlum +1",
        head = "Sakpata's Helm",
        body = "Sakpata's Plate",
        hands = "Sakpata's Gauntlets",
        legs = "Carmine Cuisses +1",
        feet = "Sakpata's Leggings",
        neck = "Warder's Charm +1",
        waist = "Carrier's Sash",
        left_ear = "Tuisto Earring",
        right_ear = "Odnowa Earring +1",
        left_ring = "Defending Ring",
        right_ring = "Moonlight Ring",
        back = {
            name = "Rudianos's Mantle",
            augments = {'HP+60', 'Eva.+20 /Mag. Eva.+20', 'HP+20', 'Enmity+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Engaged = set_combine(sets.Idle, {
        legs = "Sakpata's Cuisses"
    })

    sets.Midcast = {}
    sets.Midcast['Enhancing Magic'] = {
        hands = "Regal Gauntlets",
        body = "Shab. Cuirass +1"
    }
    sets.Midcast['Enhancing Magic'].Phalanx = {
        head = "Yorium Barbuta",
        body = "Yorium Cuirass",
        hands = "Souv. Handsch. +1",
        legs = "Sakpata's Cuisses",
        feet = "Souveran Schuhs +1",
        waist = "Olympus Sash",
        left_ear = "Andoaa Earring",
        right_ear = "Mimir Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        back = "Weard Mantle"
    }
    sets.Midcast['Enhancing Magic'].Phalanx = sets.Engaged

    sets.Midcast['Healing Magic'] = {
        equipable = true,
        ammo = "Staunch Tathlum +1",
        head = "Souv. Schaller +1",
        body = "Souv. Cuirass +1",
        hands = "Souv. Handsch. +1",
        legs = "Souv. Diechlings +1",
        feet = "Souveran Schuhs +1",
        neck = "Loricate Torque +1",
        waist = "Flume Belt",
        left_ear = "Odnowa Earring +1",
        right_ear = "Magnetic Earring",
        left_ring = "Moonlight Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Rudianos's Mantle",
            augments = {'"Cure" potency +10%'}
        }
    }

    sets.Midcast['Healing Magic Self'] = {
        ammo="Staunch Tathlum +1",
        head={ name="Souv. Schaller +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
        body={ name="Souv. Cuirass +1", augments={'HP+105','Enmity+9','Potency of "Cure" effect received +15%',}},
        hands="Macabre Gaunt. +1",
        legs={ name="Founder's Hose", augments={'MND+10','Mag. Acc.+15','Attack+15','Breath dmg. taken -5%',}},
        feet={ name="Odyssean Greaves", augments={'"Cure" potency +6%','STR+6','Mag. Acc.+11','"Mag.Atk.Bns."+7',}},
        neck="Sacro Gorget",
        waist="Creed Baudrier",
        left_ear={name="Tuisto Earring",priority=1},
        right_ear={ name="Nourish. Earring +1", augments={'Path: A',}},
        left_ring={ name="Gelatinous Ring +1", augments={'Path: A',},priority=2},
        right_ring={ name="Moonlight Ring",priority=3},
        back={ name="Rudianos's Mantle", augments={'HP+60','Eva.+20 /Mag. Eva.+20','"Cure" potency +10%','Phys. dmg. taken-10%',}},
    }

    sets.Midcast['Divine Magic'] = {}
    sets.Midcast['Divine Magic'].Flash = {
        ammo = "Sapience Orb",
        head = "Loess Barbuta +1",
        body = "Souv. Cuirass +1",
        hands = "Souv. Handsch. +1",
        legs = "Souv. Diechlings +1",
        feet = "Carmine Greaves +1",
        neck = "Moonlight Necklace",
        waist = "Trance Belt",
        left_ear = "Trux Earring",
        right_ear = "Cryptic Earring",
        left_ring = "Supershear Ring",
        right_ring = "Apeile Ring",
        back = {
            name = "Rudianos's Mantle",
            augments = {'HP+60', 'Eva.+20 /Mag. Eva.+20', 'Mag. Evasion+10', '"Fast Cast"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.FastCast = {
        ammo = "Sapience Orb",
        head = "Carmine Mask +1",
        body = "Rev. Surcoat +3",
        hands = "Leyline Gloves",
        legs = "Enif Cosciales",
        feet = "Carmine Greaves +1",
        right_ear = "Loquac. Earring",
        left_ring = "Kishar Ring",
        back = {
            name = "Rudianos's Mantle",
            augments = {'HP+60', 'Eva.+20 /Mag. Eva.+20', 'Mag. Evasion+10', '"Fast Cast"+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.SIRD = {
        ammo = "Staunch Tathlum +1",
        head = "Souv. Schaller +1",
        body = "Sakpata's Plate",
        hands = "Regal Gauntlets",
        legs = "Founder's Hose",
        feet = "Sakpata's Leggings",
        neck = "Loricate Torque +1",
        waist = "Audumbla Sash",
        left_ear = "Knightly Earring",
        right_ear = "Magnetic Earring",
        left_ring = "Defending Ring",
        right_ring = "Moonlight Ring",
        back = {
            name = "Rudianos's Mantle",
            augments = {'HP+60', 'Eva.+20 /Mag. Eva.+20', 'HP+20', 'Enmity+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Emnity = {
        ammo = "Sapience Orb",
        head = "Loess Barbuta +1",
        body = "Souv. Cuirass +1",
        hands = "Souv. Handsch. +1",
        legs = "Souv. Diechlings +1",
        feet = "Souveran Schuhs +1",
        neck = "Moonlight Necklace",
        waist = "Trance Belt",
        left_ear = "Trux Earring",
        right_ear = "Cryptic Earring",
        left_ring = "Supershear Ring",
        right_ring = "Apeile Ring",
        back = {
            name = "Rudianos's Mantle",
            augments = {'HP+60', 'Eva.+20 /Mag. Eva.+20', 'HP+20', 'Enmity+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.JobAbility = set_combine(sets.Emnity)
    sets.JobAbility.equipable = true

    sets.JobAbility['Shield Bash'] = set_combine(sets.Emnity, {
        hands = "Cab. Gauntlets +3"
    })

    sets.JobAbility['Sentinel'] = set_combine(sets.Emnity, {
        feet = "Cab. Leggings +3"
    })

    sets.JobAbility['Rampart'] = set_combine(sets.Emnity, {
        head = "Cab. Coronet +1"
    })

    sets.WeaponSkill = {}
    sets.WeaponSkill.Cataclysm = {
        main = "Malignance Pole",
        ammo = "Crepuscular Pebble",
        head = "Pixie Hairpin +1",
        body = "Nyame Mail",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Sanctity Necklace",
        waist = "Eschan Stone",
        left_ear = "Ishvara Earring",
        right_ear = "Moonshade Earring",
        left_ring = "Archon Ring",
        right_ring = "Regal Ring",
        back = {
            name = "Rudianos's Mantle",
            augments = {'STR+20', 'Accuracy+20 Attack+20', 'STR+10', 'Weapon skill damage +10%', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Resting = sets.Midcast['Enhancing Magic'].Phalanx
end

function precast(spell, action)
    if incapacitated() then
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
    if incapacitated_states:find(function(value)
        return buffactive[value] or false
    end) then
        equip(sets.Idle)
        return true
    end
end

function self_command(argsString)
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
