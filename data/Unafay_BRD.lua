function get_sets()
    debug('Rommi>> <3')

    -- Idle Sets --
    sets.Idle = {
        main = "Sangoma",
        sub = "Genmei Shield",
        range = "",
        head = "Bunzi's Hat",
        body = "Bunzi's Robe",
        hands = "Bunzi's Gloves",
        legs = "Bunzi's Pants",
        feet = "Bunzi's Sabots",
        neck = "Bathy Choker",
        waist = "Flume Belt",
        left_ear = "Infused Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Patricius Ring",
        right_ring = "Defending Ring",
        back = "Moonbeam Cape"
    }

    sets.Resting = {
        main = "Boonwell Staff",
        sub = "Oneiros Grip",
        range = "Gjallarhorn",
        head = "",
        body = "",
        hands = "",
        legs = "Volte Brais",
        feet = "",
        neck = "Bathy Choker",
        waist = "Flume Belt",
        left_ear = "Moonshade Earring",
        right_ear = "Etiolation Earring",
        left_ring = "Stikini Ring +1",
        right_ring = "Stikini Ring +1",
        back = "Moonbeam Cape"
    }

    -- JA Sets --
    sets.JA = {}
    sets.JA.Nightingale = {
        feet = "Bihu Slippers +3"
    }
    sets.JA.Troubadour = {
        body = "Bihu Justaucorps +3"
    }
    sets.JA["Soul Voice"] = {
        legs = "Bihu cannions +3"
    }

    -- Song Precast Set --
    sets.Precast = {}
    sets.Precast.SongCast = {
        main = "Felibre's dague",
        head = "Fili Calot +2",
        neck = "Moonbow Whistle +1",
        ear1 = "Loquac. Earring",
        ear2 = "Enchanter's Earring +1",
        body = "Inyanga jubbah +2",
        hands = "Marduk's dastanas +1",
        ring1 = "Prolix Ring",
        ring2 = "Weatherspoon ring",
        back = "Intarabus's cape",
        waist = "Witful Belt",
        legs = "Doyen pants",
        feet = "Bihu slippers +3"
    }

    -- Fastcast Set --
    sets.Precast.FastCast = {
        main = "Kali",
        sub = "Genmei Shield",
        range = "Gjallarhorn",
        head = "Cath palug crown", -- 8
        body = "Inyanga Jubbah +2", -- 14
        hands = "Gende. Gages +1", -- 7
        legs = "Volte brais", -- 8
        feet = "Volte gaiters", -- 6
        neck = "Orunmila's Torque", --
        waist = "Embla sash", -- 5
        left_ear = "Enchanter's earring +1", -- 2
        right_ear = "Etiolation Earring", -- 1
        left_ring = "Kishar Ring", -- 4
        right_ring = "Weather. Ring", -- 5
        back = "Intarabus's Cape"
    }

    -- Cure Precast Set --
    sets.Precast.Cure = {
        main = "Carnwenhan",
        sub = "Genbu's Shield",
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

    sets.Midcast = {}

    -- Song Debuff Set --
    sets.Midcast.Wind = {
		main="Carnwenhan",
		sub="Ammurapi Shield",
		range="Gjallarhorn",
		head="Brioso Roundlet +3",
		body="Brioso Justau. +3",
		hands="Brioso Cuffs +3",
		legs="Brioso Cannions +3",
		feet="Brioso Slippers +3",
		neck="Mnbw. Whistle +1",
		waist="Luminary Sash",
		left_ear="Regal Earring",
		right_ear="Digni. Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring +1",
		back="Intarabus's Cape",
}

    -- Song Buff Set --
    sets.Midcast.WindBuff = {
        main = "Carnwenhan",
        range = "",
        head = "Fili calot +2",
        neck = "Moonbow Whistle +1",
        ear1 = "",
        ear2 = "Aoidos' Earring",
        body = "Fili hongreline +2",
        hands = "Fili manchettes +2",
        ring1 = "Dawnsoul ring",
        back = "Kumbira Cape",
        waist = "Ovate rope",
        legs = "Inyanga Shalwar +2",
        feet = "Brioso Slippers +3"
    }

    sets.Midcast.March = {
        hands = "Fili manchettes +2"
    }
    sets.Midcast.Minuet = {
        body = "Fili hongreline +2"
    }
    sets.Midcast.Madrigal = {
        head = "Fili calot +2"
    }
    sets.Midcast.Ballad = {
        legs = "Fili rhingrave +2"
    }
    sets.Midcast.Scherzo = {
        feet = "Fili cothurnes +2"
    }
    sets.Midcast.Mazurka = {
        head = "Cath palug crown"
    }
    sets.Midcast.Paeon = {
        head = "Brioso Roundlet +3"
    }
    sets.Midcast.Finale = {}
    sets.Midcast.Lullaby = {
        main = "Carnwenhan",
        sub = "Ammurapi Shield",
        range = "Daurdabla",
        head = "Brioso roundlet +3",
        neck = "Moonbow whistle +1",
        ear1 = "Dignitary's earring",
        ear2 = "Regal earring",
        body = "Fili hongreline +2",
        hands = "Brioso cuffs +3",
        ring1 = "Stikini ring +1",
        ring2 = "Stikini ring +1",
        back = "Intarabus's cape",
        waist = "Acuity Belt +1",
        legs = "Inyanga shalwar +2",
        feet = "Brioso slippers +3"
    }

    -- Cure Set --
    sets.Midcast.Cure = {
        main = "Daybreak",
        sub = "Genbu's shield",
        head = "Vanya Hood",
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

    -- Curaga Set --
    sets.Midcast.Curaga = {
        main = "Daybreak",
        sub = "Genbu's Shield",
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

    -- Haste Set --
    sets.Midcast.Haste = set_combine(sets.Precast.FastCast, {
        head = "Cath palug crown",
        neck = "Moonbow Whistle +1",
        ear1 = "Loquac. Earring",
        body = "",
        hands = "Gendewitha Gages +1",
        ring1 = "Prolix Ring",
        ring2 = "Weatherspoon ring",
        back = "Swith Cape +1",
        waist = "Witful belt",
        legs = "Bihu Cannions +3",
        feet = "Brioso Slippers +3"
    })

    -- Cursna Set --
    sets.Midcast.Cursna = {
        main = "Mpaca's staff",
        sub = "Mephitis grip",
        ammo = "Incantor Stone",
        head = "Vanya hood",
        neck = "Malison medallion",
        ear1 = "Nourishing earring",
        ear2 = "Glorious earring",
        body = "Inyanga jubbah +2",
        hands = "Hieros mittens",
        ring1="Haoma's ring",
		ring2="Menelaus's ring",
        back = "Perimede cape",
        waist = "Channeler's stone",
        legs = "Bunzi's Pants",
        feet = "Gende. Galosh. +1"
    }

    -- Stoneskin Set --
    sets.Midcast.Stoneskin = set_combine(sets.Midcast.Haste)

    -- Melee --
    sets.Engaged = {
		main="Naegling",
		sub="Gleti's knife",
		range="Linos",
		head="Nyame helm",
		body="Ashera harness",
		hands="Nyame gauntlets",
		legs="Volte tights",
		feet="Nyame sollerets",
		neck="Bard's charm +1",
		waist="Windbuffet belt +1",
		left_ear="Telos earring",
		right_ear="Balder earring +1",
		left_ring="Chirich Ring +1",
		right_ring="Ilabrat ring",
		back="Intarabus's cape",
}

    sets.WeaponSkill = {}
    sets.WeaponSkill["Rudra's Storm"] = {
        main = "Carnwenhan",
        sub="Gleti's knife",
        range = "Linos",
        head = "Lustratio cap +1",
        body = "Ashera harness",
        hands = "Lustratio mittens +1",
        legs = "Lustratio subligar +1",
        feet = "Lustratio leggings +1",
        neck = "Bard's Charm +1",
        waist = "Kentarch belt",
        left_ear = "Mache earring +1",
        right_ear = "Balder earring +1",
        left_ring = "Ilabrat ring",
        right_ring = "Petrov Ring",
        back = "Intarabus's cape"
    }
    sets.WeaponSkill["Mordant Rime"] = {
        main = "Carnwenhan",
        sub="Gleti's knife",
        range = "Linos",
        head = "Bihu Roundlet +3",
        body = "Bihu Jstcorps. +3",
        hands = "Bihu Cuffs +3",
        legs = "Bihu Cannions +3",
        feet = "Bihu Slippers +3",
        neck = "Bard's Charm +1",
        waist = "Kentarch Belt",
        left_ear = "Regal Earring",
        right_ear = "Telos Earring",
        left_ring = "Carbuncle ring +1",
        right_ring = "Dawnsoul ring",
        back = "Intarabus's cape"
    }
    sets.WeaponSkill["Savage Blade"] = {
        main = "Naegling",
        sub="Gleti's knife",
        range = "Linos",
        head = "Nyame helm",
        body = "Bihu Jstcorps. +3",
        hands = "Nyame gauntlets",
        legs = "Nyame flanchard",
        feet = "Nyame sollerets",
        neck = "Bard's Charm +1",
        waist = "Sailfi belt +1",
        left_ear = "Balder earring +1",
        right_ear = "Ishvara earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Ifrit Ring +1",
        back = "Intarabus's cape"
    }

    sets.WeaponSkill["Aeolian Edge"] = {
        main = "Carnwenhan",
        sub="Gleti's knife",
        range = "Linos",
        head = "",
        body = "Cohort Cloak +1",
        hands = "Nyame gauntlets",
        legs = "Nyame flanchard",
        feet = "Nyame sollerets",
        neck = "Baetyl pendant",
        waist = "Eschan stone",
        left_ear = "Friomisi earring",
        right_ear = "Ishvara earring",
        left_ring = "Epaminondas's Ring",
        right_ring = "Shiva Ring +1",
        back = "Intarabus's cape"
    }

end

function precast(spell, action)
    if spell.type:endswith('Magic') or spell.type == "BardSong" or spell.type == "Ninjutsu" then
        if buffactive.silence then -- Cancel Magic or Ninjutsu or BardSong If You Are Silenced or Out of Range --
            cancel_spell()
            debug(spell.name .. ' Canceled: [Silence has fallen]')
            return
        else
            if spell.type == 'BardSong' then
                if buffactive.nightingale then
                    song_equip(spell)
                    return
                else
                    equip(sets.Precast.SongCast)
                    debug('Precast: Song')
                end
            elseif string.find(spell.english, 'Cur') and spell.english ~= "Cursna" then
                equip(sets.Precast.Cure)
                debug('Precast: Cure')
            else
                equip(sets.Precast.FastCast)
                debug('Precast: Fast Cast')
            end
        end
    elseif spell.english == 'Spectral Jig' and buffactive.Sneak then
        cast_delay(0.2)
        send_command('cancel Sneak')
    elseif spell.type == "JobAbility" then
        if sets.JA[spell.english] then
            equip(sets.JA[spell.english])
            debug('Precast: ' .. spell.english)
        end
    elseif sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        return
    end
end

function aftercast(spell, action)
    status_change(player.status)
end

function status_change(new, old)
    if (sets[new]) then
        equip(sets[new])
    end
end

song_set_names = {'Finale', 'Lullaby', 'March', 'Minuet', 'Madrigal', 'Ballad', 'Scherzo', 'Mazurka', 'Paeon'}
function song_equip(spell)
    if spell.target.type == 'MONSTER' then
        equip(sets.Midcast.Wind)
        debug('Midcast: Wind')
    else
        if 'Daurdabla' == player.equipment.range then
            debug('Midcast: Dummy Song')
            return
        end

        equip(sets.Midcast.WindBuff)
        debug('Midcast: WindBuff')
    end

    for _, song in ipairs(song_set_names) do
        if string.find(spell.english, song) then
            if sets.Midcast[song] then
                equip(sets.Midcast[song])
                debug('Midcast: ' .. song)
                break
            end
        end
    end
end

function debug(s)
    send_command('@input /echo ' .. s)
end

function midcast(spell, action)
    if sets.Midcast[spell.english] then
        equip(sets.Midcast[spell.english])
        debug('Midcast: ' .. spell.english)
        return

    elseif spell.type:endswith('Magic') or spell.type == 'Ninjutsu' or spell.type == "BardSong" then

        if spell.type == "BardSong" then
            song_equip(spell)
        elseif string.find(spell.english, 'Cure') then
            equip(sets.Midcast.Cure)
            debug('Midcast: Cure')
        elseif string.find(spell.english, 'Cura') then
            equip(sets.Midcast.Curaga)
            debug('Midcast: Curaga')
        end

    end
end
