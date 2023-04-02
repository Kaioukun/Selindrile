local modes = {
    Nuke = "Burst"
}

function get_sets()
    sets.Idle = {
        main = "Mpaca's Staff",
        sub = "Mensch Strap +1",
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        body = "Wicce Coat +3",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Warder's Charm +1",
        waist = "Carrier's Sash",
        left_ear = "Genmei Earring",
        right_ear = "Hearty Earring",
        left_ring = "Vocane Ring +1",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Taranus's Cape",
            augments = {'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'INT+10', '"Mag.Atk.Bns."+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.JobAbility = {}
    sets.Precast = {}
    sets.Midcast = {}

    sets.Precast.FastCast = {
        ammo = "Sapience Orb",
        head = "Amalric Coif +1",
        hands = {
            name = "Agwu's Gages",
            augments = {'Path: A'}
        },
        legs = {
            name = "Agwu's Slops",
            augments = {'Path: A'}
        },
        feet = {
            name = "Amalric Nails +1",
            augments = {'Mag. Acc.+20', '"Mag.Atk.Bns."+20', '"Conserve MP"+7'}
        },
        neck = "Voltsurge Torque",
        waist = "Embla Sash",
        left_ear = "Etiolation Earring",
        right_ear = "Malignance Earring",
        left_ring = "Kishar Ring",
        right_ring = "Prolix Ring",
        back = "Swith Cape +1"
    }

    sets.Midcast["Elemental Magic"] = {}
    sets.Midcast["Elemental Magic"].Burst = {
        main = "Bunzi's Rod",
        sub = "Ammurapi Shield",
        head = "Agwu's Cap",
        body = "Spaekona's Coat +2",
        hands = "Agwu's Gages",
        legs = "Wicce Chausses +3",
        feet = "Agwu's Pigaches",
        neck = "Src. Stole +2",
        waist = "Eschan Stone",
        left_ear = "Malignance Earring",
        right_ear = "Regal Earring",
        left_ring = "Shiva Ring +1",
        right_ring = "Acumen Ring",
        back = {
            name = "Taranus's Cape",
            augments = {'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'INT+10', '"Mag.Atk.Bns."+10', 'Phys. dmg. taken-10%'}
        }
    }
    sets.Midcast["Elemental Magic"].Free = {
        main = "Bunzi's Rod",
        sub = "Ammurapi Shield",
        head = "Wicce Petasos +3",
        body = "Spaekona's Coat +2",
        hands = "Agwu's Gages",
        legs = "Wicce Chausses +3",
        feet = "Wicce Sabots +3",
        neck = "Src. Stole +2",
        waist = "Eschan Stone",
        left_ear = "Malignance Earring",
        right_ear = "Regal Earring",
        left_ring = "Shiva Ring +1",
        right_ring = "Acumen Ring",
        back = {
            name = "Taranus's Cape",
            augments = {'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'INT+10', '"Mag.Atk.Bns."+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Midcast["Enhancing Magic"] = {
        head = "Telchine Cap",
        body = "Telchine Chas.",
        hands = "Telchine Gloves",
        legs = "Telchine Braconi",
        feet = "Telchine Pigaches",
        waist = "Embla Sash",
        left_ear = "Mimir Earring",
        right_ear = "Andoaa Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        back = "Fi Follet Cape +1"
    }
end

function precast(spell, action)
    if spell.action_type == "Magic" then
        if buffactive.silence then
            cancel_spell()
            send_command('@input /item "Echo Drops" <me>')
            debug(spell.name .. " Canceled: [Silence has fallen]")
            return
        end

        equip(sets.Precast.FastCast)

        if spell.english:startswith("Cur") and spell.english ~= "Cursna" then
            equip(sets.Precast.Cure)
            debug("Precast: Cure")
            return
        end
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        debug("Precast: " .. spell.type .. " " .. spell.english)

        return
    end
end

function midcast(spell, action)
    if "Trust" == spell.type then
        return
    end

    if spell.action_type == "Magic" then

        equip(sets.Midcast["Elemental Magic"].Burst)
    end
end

function status_change(new, old)
    if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])
    end
end

function aftercast(spell, action)
    debug("Idle")
    equip(sets.Idle)
end

function self_command(argsString)
    print(T(player).status)

    args = argsString:lower():split(" ")

    if _G["self_command_" .. args[1]] then
        _G["self_command_" .. args[1]](args:slice(2))
    end

    status_change(player.status)
end

function self_command_n(args)
    return self_command_nuke(args)
end

function self_command_nuke(args)
    if not args[1] then
        error("Error: No Nuke Mode Specified")
        return
    end

    local cmdMode = args[1]:ucfirst()
    if not sets.sets.Midcast["Elemental Magic"][cmdMode] then
        error("Error: Invalid Nuke Mode: " .. cmdMode)
        return
    end

    modes.Nuke = cmdMode
    status_change(player.status)
    notice("Nuke Mode Set: " .. cmdMode)
end

function debug(s)
    windower.add_to_chat(123, s)
end
