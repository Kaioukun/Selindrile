function get_sets()
    sets.Idle = {
        head="Mummu Bonnet +1",
        body="Malignance Tabard",
        hands="Mummu Wrists +1",
        legs="Malignance Tights",
        feet="Mummu Gamash. +1",
        neck="Asperity Necklace",
        waist="Windbuffet Belt",
        left_ear="Suppanomimi",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Epona's Ring",
        back={ 
            name="Toutatis's Cape", 
            augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%'},
        }
    }

    sets.Engaged = {
        head="Mummu Bonnet +1",
        body="Malignance Tabard",
        hands="Mummu Wrists +1",
        legs="Malignance Tights",
        feet="Mummu Gamash. +1",
        neck="Asperity Necklace",
        waist="Windbuffet Belt",
        left_ear="Suppanomimi",
        right_ear="Brutal Earring",
        left_ring="Rajas Ring",
        right_ring="Epona's Ring",
        back={ 
            name="Toutatis's Cape", 
            augments={'DEX+20','Accuracy+20 Attack+20','DEX+10','Weapon skill damage +10%'},
        }
    }

    TH = false
    sets.TH = {
        hands = "Asn. Armlets +2",
        feet = "Raider's Poulaines +2",
        waist = "Chaac Belt"
    }

    sets.WeaponSkill = {}

    sets.JobAbility = {}
    sets.JobAbility["Assassin's Charge"] = {}
    sets.JobAbility.Despoil = {
        legs = "Raid. Culottes +1",
        feet = "Raid. Poulaines +2"
    }
    sets.JobAbility.Flee = {
        feet = "Pillager's Poulaines"
    }
    sets.JobAbility.Hide = {
        body = "Pillager's Vest"
    }
    sets.JobAbility["Perfect Dodge"] = {}
    sets.JobAbility.Steal = {
        hands = "Rogue's Armlets",
        legs = "Assassin's Culottes",
        feet = "Pillager's Poulaines"
    }

    sets.BardSong = sets.TH
end

function precast(spell, action)
    if "Trust" == spell.type then
        return
    end

    if spell.english == "Spectral Jig" and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        return
    end

    if sets[spell.type] then
        equip(sets[spell.type])

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

    if TH then
        equip(sets.TH)
    end
end

function self_command(command)
    command = command:lower()

    if "dt" == command then
        DT = not DT

        windower.add_to_chat(123, "DT: " .. (DT and "on" or "off"))
        screen_notices()

        status_change(player.status, player.status)

        return
    end

    if "th" == command then
        TH = not TH

        windower.add_to_chat(123, "TH: " .. (TH and "on" or "off"))
        screen_notices()

        status_change(player.status, player.status)

        return
    end

    if "koc" == command then
        for party_index, ally_party in ipairs(alliance) do
            for player_index, _player in ipairs(ally_party) do
                print(_player.name)
            end
        end
    -- windower.ffxi.get_mob_by_name(name)
    end
end

function screen_notices()
    window:clear()

    local text = ""

    if TH then
        text = text .. "TH "
    end

    if DT then
        text = text .. "DT "
    end

    window:append(text:trim())
    window:show()
end

function buff_change(name, gain, buff_details)
    -- if not gain and name:endswith("Roll") then
    --     send_command('@input /t Ajirha ' .. name .. ' off')
    -- end
end

function debug(s)
    send_command("@input /echo " .. s)
end
