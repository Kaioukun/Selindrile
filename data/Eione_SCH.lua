function get_sets()
    sets.Idle = {
        main = "Daybreak",
        sub = "Genmei Shield",
        ammo = "Staunch Tathlum",
        head = "Nyame Helm",
        body = "Arbatel gown +3",
        hands = "Nyame Gauntlets",
        legs = "Assid. Pants +1",
        feet = "Nyame Sollerets",
        neck = "Twilight Torque",
        waist = "Carrier's Sash",
        left_ear = "Etiolation Earring",
        right_ear = "Genmei Earring",
        left_ring = "Defending Ring",
        right_ring = "Stikini Ring +1"
    }

    sets.JobAbility = {}
    sets.Precast = {}
    sets.Midcast = {}

    sets.Precast.FastCast = {
        ammo="Incantor Stone",
        head="Amalric Coif +1",
        body="Shango Robe",
        hands="Acad. Bracers +2",
        legs="Volte Brais",
        feet="Acad. Loafers +2",
        neck="Voltsurge Torque",
        waist="Embla Sash",
        left_ear="Etiolation Earring",
        right_ear="Malignance Earring",
        left_ring="Kishar Ring",
        right_ring="Prolix Ring",
        back={
            name="Lugh's Cape",
            augments={'"Fast Cast"+10'}
        },
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
        legs = "Arbatel Pants +3",
        feet = "Vanya Clogs",
        neck = "Malison Medallion",
        left_ear = "Meili Earring",
        left_ring = "Haoma's Ring",
        right_ring = "Menelaus's Ring"
    }

    sets.Midcast["Elemental Magic"] = {
        main = "Daybreak",
        sub = "Ammurapi Shield",
        head = "Jhakri Coronal +2",
        body = "Jhakri Robe +2",
        hands = "Jhakri Cuffs +2",
        legs = "Jhakri Slops +2",
        feet = "Jhakri Pigaches +2",
        neck = "Sanctity Necklace",
        waist = "Refoccilation Stone",
        left_ear = "Malignance Earring",
        right_ear = "Regal Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Locus Ring"
    }

    sets.Midcast.Regen = {
        main = "Musa",
        ammo = "Staunch Tathlum",
        head="Arbatel Bonnet +3",
        body = "Telchine Chas.",
        hands = "Arbatel Bracers +3",
        legs = "Telchine Braconi",
        feet = "Nyame Sollerets",
        neck = "Twilight Torque",
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
