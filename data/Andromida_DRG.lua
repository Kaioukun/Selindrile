function get_sets()
    send_command("input /macro book 3;input /macro set 1;input /lockstyleset 4")

    sets.Idle = {
        ammo = "Staunch Tathlum +1",
        head = "Sulevia's Mask +1",
        body = "Sulevia's Plate. +2",
        hands = "Sulevia's Gauntlets +2",
        legs = "Sulevia's Cuisses +2",
        feet = "Sulevia's Leggings +2",
        neck = "Loricate Torque +1",
        waist = "Flume Belt",
        left_ear = "Infused Earring",
        left_ring = "Sulevia's Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                "DEX+20",
                "Accuracy+20 Attack+20",
                "DEX+10",
                '"Dbl.Atk."+10',
                "Phys. dmg. taken-10%"
            }
        }
    }

    sets.Engaged = {
        ammo = "Ginsen",
        head = "Flam. Zucchetto +2",
        body = "Flamma Korazin +2",
        hands = "Sulev. Gauntlets +2",
        legs = "Sulev. Cuisses +2",
        feet = "Flam. Gambieras +2",
        neck = "Dgn. Collar +2",
        waist = "Ioskeha Belt",
        left_ear = "Telos Earring",
        right_ear = "Sherida Earring",
        left_ring = "Petrov Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                "DEX+20",
                "Accuracy+20 Attack+20",
                "DEX+10",
                '"Dbl.Atk."+10',
                "Phys. dmg. taken-10%"
            }
        }
    }

    DT = false
    sets.PDT = {
        ammo = "Staunch Tathlum +1",
        head = "Sulevia's Mask +1",
        body = "Sulevia's Plate. +2",
        hands = "Sulev. Gauntlets +2",
        legs = "Sulev. Cuisses +2",
        feet = "Sulev. Leggings +2",
        neck = "Loricate Torque +1",
        waist = "Tempus Fugit",
        left_ear = "Telos Earring",
        right_ear = "Sherida Earring",
        left_ring = "Moonlight Ring",
        right_ring = "Defending Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {
                "DEX+20",
                "Accuracy+20 Attack+20",
                "DEX+10",
                '"Dbl.Atk."+10',
                "Phys. dmg. taken-10%"
            }
        }
    }

    -- JA Sets --
    sets.JobAbility = {}

    sets.JobAbility["Jump"] = {
        body = "Vishap Mail +2",
        hands="Vis. Fng. Gaunt. +2"
    }
    sets.JobAbility["Soul Jump"] = sets.JobAbility["Jump"]
    sets.JobAbility["Spirit Jump"] = set_combine(
        sets.JobAbility["Soul Jump"], 
        {feet = "Pelt. Schyn. +1"}
    )
    sets.JobAbility["High Jump"] = set_combine(
        sets.JobAbility["Jump"], 
        {legs = "Pteroslaver Brais +1"}
    )
    sets.JobAbility["Spirit Link"] = {}

    sets.JobAbility.Hasso = {}
    sets.JobAbility.Meditate = {}

    -- WS Sets --
    sets.WeaponSkill = {}

    sets.WeaponSkill.Drakesbane = {
        ammo = "Knobkierrie",
        head = "Flamma Zucchetto +2",
        body = "Sulevia's Plate. +2",
        hands = "Ptero. Fin. G. +3",
        legs = "Pelt. Cuissots +1",
        feet = "Sulevia's Leggings +2",
        neck = "Dgn. Collar +2",
        waist = "Ioskeha Belt",
        left_ear = "Brutal Earring",
        right_ear = "Sherida Earring",
        left_ring = "Regal Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {"STR+20", "Accuracy+20 Attack+20", '"Dbl.Atk."+10'}
        }
    }

    sets.WeaponSkill.Stardiver = set_combine(
        sets.WeaponSkill.Drakesbane,
        {
            legs = "Sulevia's Cuisses +2",
            waist = "Fotia Belt",
            left_ear = "Moonshade Earring",
            right_ear = "Sherida Earring"
        }
    )

    sets.WeaponSkill["Camlann's Torment"] = {
        ammo = "Knobkierrie",
        head = "Flam. Zucchetto +2",
        body = {
            name = "Valorous Mail",
            augments = {"Attack+30", "Sklchn.dmg.+1%", "STR+14", "Accuracy+14"}
        },
        hands = "Ptero. Fin. G. +3",
        legs = "Vishap Brais +2",
        feet = "Sulevia's Leggings +2",
        neck = "Dgn. Collar +2",
        waist = "Fotia Belt",
        left_ear = "Ishvara Earring",
        right_ear = "Sherida Earring",
        left_ring = "Regal Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {"STR+20", "Accuracy+20 Attack+20", '"Dbl.Atk."+10'}
        }
    }
    sets.WeaponSkill["Sonic Thrust"] = sets.WeaponSkill["Camlann's Torment"]

    sets.WeaponSkill["Leg Sweep"] = {
        head = "Flam. Zucchetto +2",
        body = "Flamma Korazin +2",
        hands = "Flam. Manopolas +2",
        legs = "Flamma Dirs +2",
        feet = "Flam. Gambieras +2",
        neck = "Dgn. Collar +2",
        waist = "Fotia Belt",
        left_ear = {
            name = "Moonshade Earring",
            augments = {"Attack+4", "TP Bonus +250"}
        },
        right_ear = "Digni. Earring",
        left_ring = "Regal Ring",
        right_ring = "Niqmaddu Ring",
        back = {
            name = "Brigantia's Mantle",
            augments = {"STR+20", "Accuracy+20 Attack+20", '"Dbl.Atk."+10'}
        }
    }
end

function precast(spell, action)
    if "Trust" == spell.type then
        return
    end

    if (spell.english == "Spectral Jig" or spell.english == "Sneak") and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        return
    end

    debug("No set for " .. spell.type .. "." .. spell.english)
end

function aftercast(spell, action)
    status_change(player.status)
end

function status_change(new, old)
    if _G["status_change_" .. new:lower()] and not _G["status_change_" .. new:lower()]() then
        return
    end

    if (sets[new]) then
        equip(sets[new])
    end
end

function status_change_engaged()
    equip(sets.Engaged)

    if DT then
        equip(sets.PDT)
    end
end

function buff_change(name, gain, buff_details)
    debug(name .. " " .. (gain and "on" or "off"))
end

function debug(s)
    send_command("@input /echo " .. s)
end

function self_command(command)
    command = command:lower()

    if "dt" == command then
        DT = not DT

        windower.add_to_chat(123, "DT: " .. (DT and "on" or "off"))

        status_change(player.status, player.status)

        return
    end
end
