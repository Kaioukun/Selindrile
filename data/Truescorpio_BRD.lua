function get_sets()
	debug("Andromida>> <3")
	
	sets.status = {}
    -- Idle Sets --
    sets.status.Idle = {}

    sets.status.Resting = {}

    -- Melee --
    sets.status.Engaged = {}

    -- JA Sets --
    sets.JobAbility = {}
    sets.JobAbility.Nightingale = {
        feet = "Bihu Slippers +3"
    }
    sets.JobAbility.Troubadour = {
        body = "Bihu Justaucorps +3"
    }
    sets.JobAbility["Soul Voice"] = {
        legs = "Bihu cannions +2"
	}
	
    -- WS Sets --
    sets.WeaponSkill = {}
    -- sets.WeaponSkill["Wasp Sting"] = {}
    -- sets.WeaponSkill["Gust Slash"] = {}
    -- sets.WeaponSkill["Shadowstitch"] = {}
    -- sets.WeaponSkill["Viper Bite"] = {}
    -- sets.WeaponSkill["Cyclone"] = {}
    -- sets.WeaponSkill["Energy Steal"] = {}
    -- sets.WeaponSkill["Energy Drain"] = {}
    -- sets.WeaponSkill["Evisceration"] = {}
    -- sets.WeaponSkill["Aeolian Edge"] = {}
    -- sets.WeaponSkill["Exenterator"] = {}
    -- sets.WeaponSkill["Mercy Stroke"] = {}
    -- sets.WeaponSkill["Rudra's Storm"] = {}
    -- sets.WeaponSkill["Mordant Rime"] = {}

    -- Song precast Set --
    sets.precast = {
        --equipable = true,
    }

    sets.precast.BardSong = {
        equipable = true,
        range = "Gjallarhorn"
    }

    sets.precast.BardSong["Honor March"] = set_combine(sets.precast.BardSong, {
        range = "Marsyas"
    })
    sets.precast.BardSong["Knight's Minne"] = {
        range = "Terpander"
    }
    sets.precast.BardSong["Knight's Minne II"] = sets.precast.BardSong["Knight's Minne"]

    -- Cure precast Set --
    sets.precast.Cure = {}

    sets.precast["Cure II"] = sets.precast.Cure
    sets.precast["Cure III"] = sets.precast.Cure
    sets.precast["Cure IV"] = sets.precast.Cure
    sets.precast.Curaga = sets.precast.Cure
    sets.precast["Curaga II"] = sets.precast.Cure

    sets.midcast = {}

    -- Song Debuff Set --
    sets.midcast.Singing = {
        --equipable = true,
    }

    -- Song Buff Set --
    sets.midcast.Singing.Buff = {}

    sets.midcast.Singing.March = set_combine(sets.midcast.Singing.Buff, {
        hands = "Fili manchettes +1"
    })
    sets.midcast.Singing.Minuet = set_combine(sets.midcast.Singing.Buff, {
        body = "Fili hongreline +1"
    })
    sets.midcast.Singing.Madrigal = set_combine(sets.midcast.Singing.Buff, {
        head = "Fili calot +1"
    })
    sets.midcast.Singing.Ballad = set_combine(sets.midcast.Singing.Buff, {
        legs = "Fili rhingrave +1"
    })
    sets.midcast.Singing.Scherzo = set_combine(sets.midcast.Singing.Buff, {
        feet = "Fili cothurnes +1"
    })
    sets.midcast.Singing.Mazurka = set_combine(sets.midcast.Singing.Buff, {
        head = "Nahtirah hat"
    })
    sets.midcast.Singing.Paeon = set_combine(sets.midcast.Singing.Buff, {
        head = "Brioso Roundlet +2"
    })
    sets.midcast.Singing.Finale = set_combine(sets.midcast.Singing.Buff, {})
    sets.midcast.Singing.Lullaby = set_combine(sets.midcast.Singing.Buff, {
        hands = "Brioso cuffs +3"
    })
    sets.midcast.Singing["Honor March"] = set_combine(sets.midcast.Singing.March, {
        range = "Marsyas"
    })

    -- Cure Set --
    sets.midcast.Cure = {}

	sets.midcast["Cure II"] = sets.midcast.Cure
	sets.midcast["Cure III"] = sets.midcast.Cure
	sets.midcast["Cure IV"] = sets.midcast.Cure

    -- Curaga Set --
    sets.midcast.Curaga = {}

	sets.midcast["Curaga II"] = sets.midcast.Curaga

    -- Haste Set --
    sets.midcast.Haste = {}

    -- Cursna Set --
    sets.midcast.Cursna = {}

    -- Stoneskin Set --
    sets.midcast.Stoneskin = set_combine(sets.midcast.Haste)
end

function precast(spell)
    debug("Precast " .. spell.name)
    if incapacitated() then
        return
    end

    if (spell.english == "Spectral Jig" or spell.english == "Sneak") and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if hook_method("precast", spell) then
        debug("Precast hook controlling")
        return
    end

    if sets.precast[spell.type] and sets.precast[spell.type][spell.english] then
        debug("Equiping precast." .. spell.type .. "." .. spell.english)
        equip(sets.precast[spell.type][spell.english])
        return
    end

    if sets.precast[spell.type] and sets.precast[spell.type].equipable then
        debug("Equiping precast." .. spell.type)
        equip(sets.precast[spell.type])
        return
    end

    debug("No set for precast." .. spell.type .. "." .. spell.english)
end

function is_magic(spell)
	return spell.type:endswith("Magic") 
		or spell.type == "BardSong" 
		or spell.type == "Ninjutsu" 
		or spell.type == "Trust"
end

function midcast(spell)
    if incapacitated() then
        return
    end

    if hook_method("midcast", spell) then
        return
    end

    if sets.midcast[spell.skill] and sets.midcast[spell.skill][spell.english] then
        equip(sets.midcast[spell.skill][spell.english])

        return
    end

    if sets.midcast[spell.skill] and sets.midcast[spell.skill].equipable then
        equip(sets.midcast[spell.skill])

        return
    end

    debug("No set for midcast." .. spell.skill .. "." .. spell.english)
end

hook = {}

hook.status = {}

hook.precast = {}
hook.precast.Singing = function(spell)
    if buffactive.nightingale then
        debug("Nightingale")
        song_equip(spell)
        return true
    end

    return false
end

hook.midcast = {}
hook.midcast.Singing = function(spell)
    if spell.target.type == "MONSTER" then
        return false
    end

    if "Daurdabla" == player.equipment.range then
        equip(sets.status.Idle)
        debug("midcast: Dummy Song")
        return true
    end

	song_equip(spell)
	return true
end

function hook_method(prefix, spell)
    debug("Hook: " .. prefix .. "." .. spell.skill .. "." .. spell.english)

	if not hook[prefix] and not hook[prefix][spell.skill] then
		return false
	end

	if type(hook[prefix][spell.skill]) == "function" then
		return hook[prefix][spell.skill](spell)
    end

	if hook[prefix][spell.skill][spell.english] then
		return hook[prefix][spell.skill][spell.english](spell)
	end

	return false
end

function aftercast(spell)
    status_change(player.status, player.status)
end

function status_change(new, old)
    if incapacitated() then
        return
    end

    if hook.status[new] and hook.status[new](new, old) then
        return
    end

    if sets.status[new] then
        equip(sets.status[new])
    end
end

incapacitated_states = T {"stun", "petrification", "terror", "sleep"}
function incapacitated()
    if incapacitated_states:find(function(value)
        return buffactive[value] or false
    end) then
        equip(sets.Idle)
        return true
    end
end

song_set_names = {'Finale', 'Lullaby', 'March', 'Minuet', 'Madrigal', 'Ballad', 'Scherzo', 'Mazurka', 'Paeon'}
function song_equip(spell)
    for _, song in ipairs(song_set_names) do
        if string.find(spell.english, song) then
            if sets.midcast.Singing[song] then
                equip(sets.midcast.Singing[song])
                debug('midcast: ' .. song)
                return
            end
        end
    end

    equip(sets.midcast.Singing.Buff)
end

function debug(s)
    print(s)
end
