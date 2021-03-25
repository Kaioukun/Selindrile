function get_sets()
    sets.Idle = {
        main = "Queller Rod",
        sub = "Sors Shield",
        head = "Bunzi's Hat",
        body = "Ebers Bliaud",
        hands = "Bunzi's Gloves",
        legs = "Bunzi's Pants",
        feet = "Bunzi's Sabots",
        neck = "Twilight Torque",
        waist = "Witful Belt",
        left_ear = "Moonshade earring",
        right_ear = "Gifted Earring",
        left_ring = "Sirona's Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Alaunus's Cape",
            augments = {'Phys. dmg. taken-10%'}
        }
    }

    sets.JobAbility = {}

    sets.JobAbility.Benediction = {}

    sets.Precast = {}

    sets.Precast.FastCast = {
        ammo = "Incantor Stone",
        head = "Bunzi's Hat",
        legs = "Aya. Cosciales +2",
        feet = "Regal Pumps +1",
        waist = "Embla sash",
        back = {
            name = "Alaunus's Cape",
            augments = {'"Fast Cast"+10'}
        }
    }

    sets.Precast.Cure = set_combine(sets.Precast.FastCast, {})

    sets.Midcast = {}

    sets.Midcast.Cure = {
        main = "Bunzi's Rod",
        sub = "Sors Shield",
        head = "Bunzi's Hat",
        body = "Bunzi's Robe",
        hands = "Bunzi's Gloves",
        legs = "Clr. Pantaln. +2",
        feet = "Regal Pumps +1",
        neck = "Cleric's Torque",
        right_ear = "Gifted Earring",
        left_ring = "Sirona's Ring",
        right_ring = "Rufescent Ring",
        back = {
            name = "Alaunus's Cape",
            augments = {
                'MND+20', 
                'MND+10'
            }
        }
    }

    sets.Midcast["Divine Veil"] = {}

    sets.Midcast.Erase = set_combine(sets.Midcast["Divine Veil"], {
        neck = "Cleric's Torque"
    })

    sets.Midcast.Cursna = set_combine(sets.Midcast["Divine Veil"], {
        waist = "Alaunus's Cape"
    })

    sets.Midcast["Enhancing Magic"] = {
        head={ name="Telchine Cap", augments={'Enh. Mag. eff. dur. +8',}},
        body={ name="Telchine Chas.", augments={'Enh. Mag. eff. dur. +8',}},
        hands={ name="Telchine Gloves", augments={'Enh. Mag. eff. dur. +9',}},
        legs={ name="Telchine Braconi", augments={'Enh. Mag. eff. dur. +7',}},
        feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +10',}},
        waist = "Embla sash",
    }

    sets.Midcast["Shellra V"] = set_combine(sets.Midcast["Enhancing Magic"], {
        --legs = "Piety pantaloons +2"
    })

    sets.Midcast.Regen = set_combine(sets.Midcast["Enhancing Magic"], {
        --body = "Piety Briault +2",
        hands = "Ebers Mitts",
        --legs = "Th. Pantaloons +2"
    })

    sets.Midcast.Bar = set_combine(sets.Midcast["Enhancing Magic"], {
        --legs = "Piety pantaloons +2"
    })

    sets.Midcast.Auspice = set_combine(sets.Midcast["Enhancing Magic"], {
        feet = "Ebers Duckbills"
    })
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
    -- windower.add_to_chat(123, s)
end
