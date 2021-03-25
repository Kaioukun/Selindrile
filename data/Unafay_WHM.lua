function get_sets()
    sets.Idle = {
        main = "Malignance pole",
        sub = "Oneiros grip",
        ammo = "Homiliary",
        head = "Vanya Hood",
        neck = "Loricate torque +1",
        ear1 = "Moonshade earring",
        ear2 = "Etiolation Earring",
        body = "Piety briault +3",
        hands = "Bunzi's gloves",
        ring1 = "Stikini ring +1",
        ring2 = "Defending Ring",
        back = "Moonbeam cape",
        waist = "Luminary sash",
        legs = "Volte brais",
        feet = "Bunzi's sabots"
    }

    sets.Resting = {
        main = "Boonwell staff",
        sub = "Oneiros grip",
        ammo = "Homiliary",
        head = "Oracle's cap",
        neck = "Bathy choker",
        ear1 = "Infused earring",
        ear2 = "Moonshade Earring",
        body = "Oracle's robe",
        hands = "Oracle's gloves",
        ring1 = "Stikini ring +1",
        ring2 = "Stikini ring +1",
        back = "Moonbeam cape",
        waist = "Cleric's belt",
        legs = "Oracle's braconi",
        feet = "Avocat pigaches"
    }

    sets.JobAbility = {}

    sets.JobAbility.Benediction = {
        body = "Piety Briault +3"
    }

    sets.Precast = {}

    sets.Precast.Haste = {
        main = "Bolelabunga",
        sub = "Genbu shield",
        ammo = "Incantor Stone",
        head = "Cath palug crown",
        neck = "Cleric's torque +1",
        ear1 = "Loquacious earring",
        ear2 = "Malignance Earring",
        body = "Inyanga jubbah +2",
        hands = "Gendewitha gages +1",
        ring1 = "Kishar Ring",
        ring2 = "Prolix Ring",
        back = "Perimede cape",
        waist = "Witful belt",
        legs = "Volte brais",
        feet = "Volte boots"
    }

    sets.Precast.FastCast = {
        main = "Sucellus",
        sub = "Genbu shield",
        ammo = "Sapience orb",
        head = "Cath palug crown",
        neck = "Cleric's torque +1",
        ear1 = "Malignance earring",
        ear2 = "Enchanter Earring +1",
        body = "Inyanga jubbah +2",
        hands = "Gendewitha gages +1",
        ring1 = "Kishar Ring",
        ring2 = "Weatherspoon Ring",
        back = "Alaunus's cape",
        waist = "Embla sash",
        legs = "Volte brais",
        feet = "Volte gaiters"
    }

    sets.Precast.Cure = {
        main = "Queller Rod",
        sub = "Sors shield",
        ammo = "Sapience orb",
        head = "Cath palug crown",
        body = "Inyanga jubbah +2",
        hands = "Theophany mitts +3",
        legs = "Nabu's shalwar",
        feet = "Kaykaus Boots",
        neck = "Clr. Torque +1",
        waist = "Embla sash",
        left_ear = "Nourish. Earring",
        right_ear = "Mendi. Earring",
        left_ring = "Weatherspoon ring",
        right_ring = "Kishar Ring",
        back = "Alaunus's Cape"
    }

    sets.Midcast = {}

    sets.Midcast.Cure = {
        main = "Queller rod",
        sub = "Genbu's shield",
        ammo = "Sapience orb",
        head = "Vanya Hood",
        neck = "Cleric's torque +1",
        ear1 = "Nourishing earring",
        ear2 = "Glorious earring",
        body = "Theophany briault +3",
        hands = "Theophany mitts +3",
        ring1 = "Stikini ring +1",
        ring2 = "Sirona's Ring",
        back = "Solemnity cape",
        waist = "Embla sash",
        legs = "Ebers pantaloons +1",
        feet = "Regal pumps +1"
    }

    sets.Midcast["Divine Veil"] = {
        main = "Yagrush",
        sub = "Genbu shield",
        ammo = "Incantor Stone",
        head = "Ebers cap +1",
        neck = "Cleric's torque +1",
        ear1 = "Roundel earring",
        ear2 = "Etiolation Earring",
        body = "Witching robe",
        hands = "Ebers mitts +1",
        ring1 = "Ephedra ring",
        ring2 = "Prolix Ring",
        back = "Mending cape",
        waist = "Embla sash",
        legs = "Ebers pantaloons +1",
        feet = ""
    }

    sets.Midcast.Cursna = {
        main = "Yagrush",
        sub = "Sors shield",
        ammo = "Incantor Stone",
        head = "Vanya hood",
        neck = "Malison medallion",
        ear1 = "Nourishing earring",
        ear2 = "Glorious earring",
        body = "Ebers bliaud +1",
        hands = "Fanatic gloves",
        ring1 = "Haoma's ring",
        ring2 = "Haoma's ring",
        back = "Alaunus's cape",
        waist = "Channeler's stone",
        legs = "Theophany pantaloons +3",
        feet = "Gende. Galosh. +1"
    }

    sets.Midcast["Enhancing Magic"] = {
        main = {
            name = "Gada",
            augments = {'Enh. Mag. eff. dur. +5', 'VIT+1', '"Mag.Atk.Bns."+12', 'DMG:+1'}
        },
        sub = "Ammurapi Shield",
        ammo = "Incantor Stone",
        head = {
            name = "Telchine Cap",
            augments = {'Enh. Mag. eff. dur. +10'}
        },
        body = {
            name = "Telchine Chas.",
            augments = {'Enh. Mag. eff. dur. +9'}
        },
        hands = {
            name = "Telchine Gloves",
            augments = {'Enh. Mag. eff. dur. +10'}
        },
        legs = {
            name = "Telchine Braconi",
            augments = {'Enh. Mag. eff. dur. +10'}
        },
        feet = {
            name = "Telchine Pigaches",
            augments = {'Enh. Mag. eff. dur. +9'}
        },
        neck = "Incanter's Torque",
        waist = "Embla Sash",
        left_ear = "Andoaa Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        back = "Mending Cape"
    }

    sets.Midcast["Enfeebling Magic"] = {
        main = "Gada",
        sub = "Ammurapi shield",
        ammo = "Homiliary",
        head = "Befouled crown",
        body = "Theo. Briault +3",
        hands = "Piety mitts +3",
        legs = "Th. Pant. +3",
        feet = "Theophany duckbills +3",
        neck = "Incanter's torque",
        waist = "Luminary Sash",
        left_ear = "Digni. Earring",
        right_ear = "Enchntr. Earring +1",
        left_ring = "Stikini Ring +1",
        right_ring = "Globidonta Ring",
        back = "Altruistic Cape"
    }
    sets.Midcast.Regen = {
        main = "Gada",
        sub = "Ammurapi shield",
        ammo = "Incantor Stone",
        head = "Inyanga Tiara +2",
        body = {
            name = "Piety Briault +3",
            augments = {'Enhances "Benediction" effect'}
        },
        hands = "Ebers Mitts +1",
        legs = "Th. Pant. +3",
        feet = {
            name = "Telchine Pigaches",
            augments = {'Enh. Mag. eff. dur. +9'}
        },
        neck = "Incanter's Torque",
        waist = "Embla sash",
        left_ear = "Enchntr. Earring +1",
        right_ear = "Etiolation Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Prolix Ring",
        back = "Fi Follet Cape +1"
    }
    sets.Midcast.Bar = {
        main = "Beneficus",
        sub = "Ammurapi shield",
        ammo = "Incantor Stone",
        head = "Ebers Cap +1",
        body = "Ebers Bliaud +1",
        hands = "Ebers Mitts +1",
        legs = {
            name = "Piety Pantaln. +3",
            augments = {'Enhances "Shellra V" effect'}
        },
        feet = {
            name = "Piety Duckbills +3",
            augments = {'Enhances "Protectra V" effect'}
        },
        neck = "Incanter's Torque",
        waist = "Embla sash",
        left_ear = "Andoaa Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +",
        back = "Mending cape"
    }

end

function is_magic(spell)
    return spell.type:endswith("Magic") or spell.type == "BardSong" or spell.type == "Ninjutsu" or spell.type == "Trust"
end

function precast(spell, action)
    if is_magic(spell) then
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

    if is_magic(spell) then
        if sets.Midcast[spell.english] then
            equip(sets.Midcast[spell.english])
            debug("Midcast: " .. spell.english)

            return
        end

        if spell.english:endswith("na") then
            equip(sets.Midcast["Divine Veil"])
            debug("Midcast: Devine Veil")

            return
        end

        if spell.english:startswith("Cura") then
            equip(sets.Midcast.Curaga)
            debug("Midcast: Curaga")

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

function aftercast(spell, action)
    debug("Idle")
    equip(sets.Idle)
end

function debug(s)
    windower.add_to_chat(123, s)
end

function status_change(new, old)
    if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])
    end
end
