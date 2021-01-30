function get_sets()
	debug("Andromida>> <3")
	
	sets.status = {}
    -- Idle Sets --
    sets.status.Idle = {
        main = "Sangoma",
        range = "",
        sub = "Genmei Shield",
        head = "Ayanmo zucchetto +2",
        neck = "Bathy choker",
        ear1 = "Mendicant's Earring",
        ear2 = "Etiolation earring",
        body = "Ayanmo corazza +2",
        hands = "Ayanmo manopolas +2",
        ring1 = "Patricius Ring",
        ring2 = "Defending ring",
        back = "Moonbeam cape",
        waist = "Porous rope",
        legs = "Ayanmo cosciales +2",
        feet = "Ayanmo gambieras +2"
    }

    sets.status.Resting = set_combine(sets.Idle, {
        ear1 = "Moonshade earring",
        body = "Witching robe",
        ring1 = "Stikini ring +1",
        ring2 = "Stikini ring",
        legs = "Assiduity pants +1"
    })

    -- Melee --
    sets.status.Engaged = {
        main = "Carnwenhan",
        sub = "",
        range = "Gjallarhorn",
        head = "Aya. Zucchetto +2",
        body = "Reiki osode",
        hands = "Aya. Manopolas +2",
        legs = "Aya. Cosciales +2",
        feet = "Aya. Gambieras +1",
        neck = "Bard's Charm +1",
        waist = "Sarissapho. Belt",
        left_ear = "Telos Earring",
        right_ear = "Mache Earring",
        left_ring = "Ilabrat Ring",
        right_ring = "Petrov Ring",
        back = "Laic Mantle"
    }

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
        equipable = true,
        main = "Felibre's Dague",
        sub = "Genmei Shield",
        range = "Gjallarhorn",
        head = "Nahtirah Hat",
        body = "Inyanga Jubbah +2",
        hands = "Gende. Gages +1",
        legs = "Chironic Hose",
        feet = "Volte Boots",
        neck = "Orunmila's Torque",
        waist = "Witful Belt",
        left_ear = "Loquac. Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Prolix Ring",
        right_ring = "Weather. Ring",
        back = "Swith Cape +1"
    }

    sets.precast.BardSong = {
        main = "Felibre's dague",
        head = "Fili Calot +1",
        neck = "Moonbow Whistle +1",
        ear1 = "Loquac. Earring",
        ear2 = "Enchanter Earring +1",
        body = "Inyanga jubbah +2",
        hands = "Marduk's dastanas +1",
        ring1 = "Prolix Ring",
        ring2 = "Weatherspoon ring",
        back = "Swith Cape +1",
        waist = "Witful Belt",
        legs = "Doyen pants",
        feet = "Bihu slippers +3"
    }

    -- Cure precast Set --
    sets.precast.Cure = {
        main = "Carnwenhan",
        sub = "Genbu's Shied",
        range = "Gjallarhorn",
        head = "Vanya Hood",
        body = "Kaykaus Bliaut",
        hands = "Revealer's Mitts",
        legs = "Doyen pants",
        feet = "Kaykaus Boots",
        neck = "Bard's Charm +1",
        waist = "Luminary Sash",
        left_ear = "Mendi. Earring",
        right_ear = "Beatific Earring",
        left_ring = "Karka Ring",
        right_ring = "Ephedra Ring",
        back = "Pahtli Cape"
    }
    sets.precast["Cure II"] = sets.precast.Cure
    sets.precast["Cure III"] = sets.precast.Cure
    sets.precast["Cure IV"] = sets.precast.Cure
    sets.precast.Curaga = sets.precast.Cure
    sets.precast["Curaga II"] = sets.precast.Cure

    sets.midcast = {}

    -- Song Debuff Set --
    sets.midcast.BardSong = {
        equipable = true,
        main = "Carnwenhan",
        sub = "Ammurapi shield",
        range = "",
        head = "Bihu Roundlet +2",
        neck = "Moonbow Whistle +1",
        ear1 = "Enchanter earring +1",
        ear2 = "Dignitary's earring",
        body = "Brioso justaucorps +3",
        hands = "Leyline gloves",
        ring1 = "Stikini ring +1",
        ring2 = "Stikini ring",
        back = "Rhapsode's cape",
        waist = "Luminary sash",
        legs = "Brioso cannions +2",
        feet = "Brioso slippers +3"
    }

    -- Song Buff Set --
    sets.midcast.BardSong.Buff = {
        main = "Carnwenhan",
        range = "",
        head = "Fili calot +1",
        neck = "Moonbow Whistle +1",
        ear1 = "Musical Earring",
        ear2 = "Aoidos' Earring",
        body = "Fili hongreline +1",
        hands = "Fili manchettes +1",
        ring1 = "Dawnsoul ring",
        back = "Kumbira cape",
        waist = "Ovate rope",
        legs = "Inyanga Shalwar +2",
        feet = "Brioso Slippers +3"
    }

    sets.midcast.BardSong.March = set_combine(sets.midcast.BardSong.Buff, {
        hands = "Fili manchettes +1"
    })
    sets.midcast.BardSong.Minuet = set_combine(sets.midcast.BardSong.Buff, {
        body = "Fili hongreline +1"
    })
    sets.midcast.BardSong.Madrigal = set_combine(sets.midcast.BardSong.Buff, {
        head = "Fili calot +1"
    })
    sets.midcast.BardSong.Ballad = set_combine(sets.midcast.BardSong.Buff, {
        legs = "Fili rhingrave +1"
    })
    sets.midcast.BardSong.Scherzo = set_combine(sets.midcast.BardSong.Buff, {
        feet = "Fili cothurnes +1"
    })
    sets.midcast.BardSong.Mazurka = set_combine(sets.midcast.BardSong.Buff, {
        head = "Nahtirah hat"
    })
    sets.midcast.BardSong.Paeon = set_combine(sets.midcast.BardSong.Buff, {
        head = "Brioso Roundlet +2"
    })
    sets.midcast.BardSong.Finale = set_combine(sets.midcast.BardSong.Buff, {})
    sets.midcast.BardSong.Lullaby = set_combine(sets.midcast.BardSong.Buff, {
        hands = "Brioso cuffs +3"
    })

    -- Cure Set --
    sets.midcast.Cure = {
        main = "Serenity",
        sub = "Achaq grip",
        head = {
            name = "Vanya Hood",
            augments = {'MP+50', '"Cure" potency +7%', 'Enmity-6'}
        },
        neck = "Colossus's torque",
        ear1 = "Loquac. Earring",
        ear2 = "Beatific earring",
        body = "Kaykaus bliaut",
        hands = "Revealer's mitts",
        ring1 = "Ephedra ring",
        ring2 = "Sirona's ring",
        back = "Pahtli cape",
        waist = "Cascade belt",
        legs = "Kaykaus tights",
        feet = "Medium's sabots"
	}
	sets.midcast["Cure II"] = sets.midcast.Cure
	sets.midcast["Cure III"] = sets.midcast.Cure
	sets.midcast["Cure IV"] = sets.midcast.Cure

    -- Curaga Set --
    sets.midcast.Curaga = {
        main = "Serenity",
        sub = {
            name = "Genbu's Shield",
            augments = {'"Cure" potency +4%', '"Cure" spellcasting time -8%'}
        },
        range = "Gjallarhorn",
        head = {
            name = "Vanya Hood",
            augments = {'MP+50', '"Cure" potency +7%', 'Enmity-6'}
        },
        body = "Kaykaus Bliaut",
        hands = "Revealer's Mitts",
        legs = "Doyen pants",
        feet = "Kaykaus Boots",
        neck = "Bard's Charm +1",
        waist = "Luminary Sash",
        left_ear = "Mendi. Earring",
        right_ear = "Beatific Earring",
        left_ring = "Karka Ring",
        right_ring = "Ephedra Ring",
        back = "Pahtli Cape"
	}
	sets.midcast["Curaga II"] = sets.midcast.Curaga

    -- Haste Set --
    sets.midcast.Haste = set_combine(sets.precast.FastCast, {
        head = "Nahtirah Hat",
        neck = "Moonbow Whistle +1",
        ear1 = "Loquac. Earring",
        hands = "Gendewitha Gages +1",
        ring1 = "Prolix Ring",
        ring2 = "Weatherspoon ring",
        back = "Swith Cape +1",
        waist = "Witful belt",
        legs = "Bihu Cannions +2",
        feet = "Brioso Slippers +3"
    })

    -- Cursna Set --
    sets.midcast.Cursna = {
        main = "Queller rod",
        sub = "Sors shield",
        ammo = "Incantor Stone",
        head = "Vanya hood",
        neck = "Malison medallion",
        ear1 = "Nourishing earring",
        ear2 = "Glorious earring",
        hands = "Fanatic gloves",
        ring1 = "Haoma's ring",
        ring2 = "Haoma's ring",
        back = "Alaunus's cape",
        waist = "Channeler's stone",
        feet = "Gende. Galosh. +1"
    }

    -- Stoneskin Set --
    sets.midcast.Stoneskin = set_combine(sets.midcast.Haste)
end

function precast(spell)
    if incapacitated() then
        return
    end

    if (spell.english == "Spectral Jig" or spell.english == "Sneak") and buffactive.Sneak then
        cast_delay(0.2)
        send_command("cancel Sneak")
    end

    if hook_method("precast", spell) then
        return
    end

    if sets.precast[spell.type] and sets.precast[spell.type][spell.english] then
        equip(sets.precast[spell.type][spell.english])
        return
    end

    if sets.precast[spell.type] and sets.precast[spell.type].equipable then
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
hook.precast.BardSong = function(spell)
    if buffactive.nightingale then
        song_equip(spell)
        return true
    end
end

hook.midcast = {}
hook.midcast.BardSong = function(spell)
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
            if sets.midcast.BardSong[song] then
                equip(sets.midcast[song])
                debug('midcast: ' .. song)
                return
            end
        end
    end

    equip(sets.midcast.BardSong.Buff)
end

function debug(s)
    send_command('@input /echo ' .. s)
end
