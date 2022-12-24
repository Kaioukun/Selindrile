function get_sets()
    sets.Idle = {
        main = "Daybreak",
        sub = "Genmei shield",
        ammo = "Homiliary",
        head = "Inyanga Tiara +2",
        body = "Theo. Briault +3",
        hands = "Inyan. Dastanas +2",
        legs = "Assid. Pants +1",
        feet = "Inyan. Crackows +2",
        neck = "Loricate Torque +1",
        waist = "Embla Sash",
        left_ear = "Etiolation Earring",
        right_ear = {
            name = "Odnowa Earring +1",
            augments = {'Path: A'}
        },
        left_ring = "Inyanga Ring",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Alaunus's Cape",
            augments = {'MP+60', 'Eva.+20 /Mag. Eva.+20', 'Mag. Evasion+10', '"Cure" potency +10%',
                        'Magic dmg. taken-10%'}
        }
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
        sub = "Genmei shield",
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
        main = {
            name = "Queller Rod",
            augments = {'Healing magic skill +15', '"Cure" potency +10%', '"Cure" spellcasting time -7%'}
        },
        sub = "Genmei shield",
        ammo = "Incantor Stone",
        head = {
            name = "Vanya Hood",
            augments = {'MP+50', '"Fast Cast"+10', 'Haste+2%'}
        },
        body = "Inyanga Jubbah +2",
        hands = {
            name = "Fanatic Gloves",
            augments = {'MP+40', 'Healing magic skill +4', '"Conserve MP"+3', '"Fast Cast"+4'}
        },
        legs = "Aya. Cosciales +2",
        feet = "Regal Pumps +1",
        neck = "Cleric's Torque",
        waist = "Embla Sash",
        left_ear = "Malignance Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Kishar Ring",
        right_ring = "Prolix Ring",
        back = {
            name = "Alaunus's Cape",
            augments = {'MP+60', 'Eva.+20 /Mag. Eva.+20', 'Mag. Evasion+10', '"Fast Cast"+10', 'Magic dmg. taken-10%'}
        }
    }

    sets.Precast.Cure = {
        main = {
            name = "Queller Rod",
            augments = {'Healing magic skill +15', '"Cure" potency +10%', '"Cure" spellcasting time -7%'}
        },
        sub = "Genmei shield",
        ammo = "Incantor Stone",
        head = {
            name = "Vanya Hood",
            augments = {'MP+50', '"Fast Cast"+10', 'Haste+2%'}
        },
        body = "Inyanga Jubbah +2",
        hands = {
            name = "Fanatic Gloves",
            augments = {'MP+40', 'Healing magic skill +4', '"Conserve MP"+3', '"Fast Cast"+4'}
        },
        legs = "Aya. Cosciales +2",
        feet = "Regal Pumps +1",
        neck = "Cleric's Torque",
        waist = "Embla Sash",
        left_ear = "Malignance Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Kishar Ring",
        right_ring = "Prolix Ring",
        back = {
            name = "Alaunus's Cape",
            augments = {'MP+60', 'Eva.+20 /Mag. Eva.+20', 'Mag. Evasion+10', '"Fast Cast"+10', 'Magic dmg. taken-10%'}
        }
    }

    sets.Midcast = {}

    sets.Midcast.Cure = {
        main = {
            name = "Queller Rod",
            augments = {'Healing magic skill +15', '"Cure" potency +10%', '"Cure" spellcasting time -7%'}
        },
        sub = "Genmei shield",
        ammo = "Pemphredo Tathlum",
        head = {
            name = "Kaykaus Mitra +1",
            augments = {'MP+80', 'MND+12', 'Mag. Acc.+20'}
        },
        body = "Theo. Briault +3",
        hands = "Theophany Mitts +3",
        legs = "Ebers Pant. +1",
        feet = {
            name = "Kaykaus Boots +1",
            augments = {'Mag. Acc.+20', '"Cure" potency +6%', '"Fast Cast"+4'}
        },
        neck = "Cleric's Torque",
        waist = "Embla Sash",
        left_ear = "Mendi. Earring",
        right_ear = "Nourish. Earring +1",
        left_ring = "Stikini Ring +1",
        right_ring = "Mephitas's Ring",
        back = {
            name = "Alaunus's Cape",
            augments = {'MP+60', 'Eva.+20 /Mag. Eva.+20', 'Mag. Evasion+10', '"Cure" potency +10%',
                        'Magic dmg. taken-10%'}
        }
    }

    sets.Midcast["Divine Veil"] = {
        main = "Yagrush",
        sub = "Genmei shield",
        ammo = "Incantor Stone",
        head = "Ebers cap +1",
        neck = "Cleric's Torque",
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
        sub = "Genmei shield",
        ammo = "Incantor Stone",
        head = {
            name = "Kaykaus Mitra +1",
            augments = {'MP+80', 'MND+12', 'Mag. Acc.+20'}
        },
        body = "Ebers Bliaud +1",
        hands = {
            name = "Fanatic Gloves",
            augments = {'MP+40', 'Healing magic skill +4', '"Conserve MP"+3', '"Fast Cast"+4'}
        },
        legs = "Ebers Pant. +1",
        feet = {
            name = "Vanya Clogs",
            augments = {'"Cure" potency +5%', '"Cure" spellcasting time -15%', '"Conserve MP"+6'}
        },
        neck = "Debilis Medallion",
        waist = "Embla Sash",
        left_ear = "Beatific Earring",
        right_ear = "Loquac. Earring",
        left_ring = "Haoma's Ring",
        right_ring = "Menelaus's Ring",
        back = {
            name = "Alaunus's Cape",
            augments = {'MP+60', 'Eva.+20 /Mag. Eva.+20', 'Mag. Evasion+10', '"Cure" potency +10%',
                        'Magic dmg. taken-10%'}
        }
    }

    sets.Midcast["Enhancing Magic"] = {
        main = {
            name = "Gada",
            augments = {'Enh. Mag. eff. dur. +5', 'Mag. Acc.+18', '"Mag.Atk.Bns."+19'}
        },
        sub = "Ammurapi Shield",
        ammo = "Incantor Stone",
        head = {
            name = "Telchine Cap",
            augments = {'Enh. Mag. eff. dur. +9'}
        },
        body = {
            name = "Telchine Chas.",
            augments = {'"Mag.Atk.Bns."+5', '"Cure" potency +7%', 'Enh. Mag. eff. dur. +9'}
        },
        hands = {
            name = "Telchine Gloves",
            augments = {'Mag. Acc.+11', '"Cure" spellcasting time -5%', 'Enh. Mag. eff. dur. +9'}
        },
        legs = {
            name = "Telchine Braconi",
            augments = {'Mag. Acc.+5', '"Cure" potency +2%', 'Enh. Mag. eff. dur. +10'}
        },
        feet = {
            name = "Telchine Pigaches",
            augments = {'"Mag.Atk.Bns."+4', '"Cure" potency +2%', 'Enh. Mag. eff. dur. +10'}
        },
        neck = "Loricate Torque +1",
        waist = "Embla Sash",
        left_ear = "Andoaa Earring",
        right_ear = {
            name = "Odnowa Earring +1",
            augments = {'Path: A'}
        },
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        back = {
            name = "Alaunus's Cape",
            augments = {'MP+60', 'Eva.+20 /Mag. Eva.+20', 'Mag. Evasion+10', '"Cure" potency +10%',
                        'Magic dmg. taken-10%'}
        }
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
        neck = "Melic Torque",
        waist = "Olympus Sash",
        left_ear = "Andoaa Earring",
        right_ear = "Mimir Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        back = "Mending cape"
    }

end

function is_magic(spell)
    return spell.action_type == "Magic"
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

        if spell.english:endswith("na") or spell.english == 'Erase' then
            equip(sets.Midcast["Divine Veil"])
            debug("Midcast: Devine Veil")

            return
        end

        if spell.english:startswith("Cura") then
            equip(sets.Midcast.Curaga)
            debug("Midcast: Curaga")

            return
        end

        if spell.english:startswith("Cur") and spell.english ~= "Cursna" then
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

end

function status_change(new, old)
    if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])
    end
end
