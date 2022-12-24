function get_sets()
    sets.Idle = {
        main = "Daybreak",
        sub = "Ammurapi Shield",
        ammo = "Staunch Tathlum +1",
        head = "Nyame Helm",
        body = "Arbatel Gown +3",
        hands = "Nyame Gauntlets",
        legs = "Nyame Flanchard",
        feet = "Nyame Sollerets",
        neck = "Loricate Torque +1",
        left_ear = "Etiolation Earring",
        right_ear = "Genmei Earring",
        left_ring = "Defending Ring",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Lugh's Cape",
            augments = {'Phys. dmg. taken-10%'}
        }
    }

    sets.JobAbility = {}
    sets.Precast = {}
    sets.Midcast = {}

    sets.Precast.FastCast = {
        main = {
            name = "Malevolence",
            augments = {'"Fast Cast"+5'}
        },
        ammo = "Sapience Orb",
        head = "Amalric Coif +1",
        hands = "Acad. Bracers +1",
        legs = "Kaykaus Tights +1",
        feet = "Amalric Nails +1",
        neck = "Voltsurge Torque",
        waist = "Embla Sash",
        left_ear = "Etiolation Earring",
        right_ear = "Malignance Earring",
        left_ring = "Kishar Ring",
        right_ring = "Prolix Ring",
        back = "Swith Cape +1"
    }

    sets.Midcast.Cure = {
        main = "Daybreak",
        sub = "Sors Shield",
        ammo = "Impatiens",
        head = "Kaykaus Mitra +1",
        body = "Kaykaus Bliaut +1",
        hands = "Peda. Bracers +3",
        legs = "Kaykaus Tights +1",
        feet = "Kaykaus Boots +1",
        neck = "Henic Torque",
        waist = "Luminary Sash",
        left_ear = "Mendi. Earring",
        right_ear = "Magnetic Earring",
        left_ring = "Lebeche Ring",
        right_ring = "Janniston Ring"
    }

    sets.Midcast["na"] = {}

    sets.Midcast.Erase = {}

    sets.Midcast.Cursna = {
        main = "Gada",
        head = "Vanya Hood",
        body = "Peda. Gown +1",
        hands = "Peda. Bracers +3",
        legs = "Arbatel Pants +2",
        feet = "Vanya Clogs",
        neck = "Malison Medallion",
        left_ear = "Meili Earring",
        left_ring = "Haoma's Ring",
        right_ring = "Menelaus's Ring"
    }

    sets.Midcast["Elemental Magic"] = {
        main = "Bunzi's Rod",
        sub = "Ammurapi Shield",
        head = "Agwu's Cap",
        body = "Amalric Doublet +1",
        hands = "Arbatel bracers +2",
        legs = "Agwu's Slops",
        feet = "Amalric Nails +1",
        neck = "Sibyl Scarf",
        waist = "Eschan Stone",
        left_ear = "Regal Earring",
        right_ear = "Malignance Earring",
        left_ring = "Strendu Ring",
        right_ring = "Acumen Ring",
        back = {
            name = "Lugh's Cape",
            augments = {'INT+20', 'Mag. Acc+20 /Mag. Dmg.+20', 'INT+10', '"Mag.Atk.Bns."+10', 'Phys. dmg. taken-10%'}
        }
    }

    sets.Midcast.Regen = {
        main = "Musa",
        ammo = "Staunch Tathlum",
        head = "Arbatel Bonnet +2",
        body = "Telchine Chas.",
        hands = "Arbatel Bracers +2",
        legs = "Telchine Braconi",
        feet = "Nyame Sollerets",
        neck = "Loricate Torque +1",
        waist = "Embla Sash",
        left_ear = "Magnetic Earring",
        right_ear = "Calamitous Earring",
        left_ring = "Defending Ring",
        right_ring = "Stikini Ring +1",
        back = "Lugh's Cape",
    }

    sets.Midcast["Enhancing Magic"] = {
        main = "Gada",
        sub = "Ammurapi Shield",
        head = "Telchine Cap",
        body = "Telchine Chas.",
        hands = "Telchine Gloves",
        legs = "Telchine Braconi",
        waist = "Embla Sash",
        left_ear = "Magnetic Earring",
        right_ear = "Calamitous Earring",
        back = "Lugh's Cape"
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
        if sets.Midcast[spell.english] then
            equip(sets.Midcast[spell.english])
            debug("Midcast: " .. spell.english)

            return
        end

        if spell.english:endswith("na") then
            equip(sets.Midcast["na"])
            debug("Midcast: Na")

            return
        end

        if spell.english:startswith("Cure") then
            equip(sets.Midcast.Cure)
            debug("Midcast: Cure")

            return
        end

        if spell.english:startswith("Regen") then
            equip(sets.Midcast.Regen)
            debug("Midcast: Regen")

            return
        end

        if spell.english:startswith("Bar") then
            equip(sets.Midcast.Bar)
            debug("Midcast: Bar")

            return
        end

        if sets.Midcast[spell.skill] then
            equip(sets.Midcast[spell.skill])
            debug("Midcast Skill: " .. spell.skill)
        end
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

function debug(s)
    windower.add_to_chat(123, s)
end
