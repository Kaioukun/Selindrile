function get_sets()
    debug('Rommi>> <3')
    -- Idle Sets --
    sets.Idle = {
        main = "Carnwenhan",
        sub = "Genbu's Shield",
        head = "Nyame helm",
        neck = "Loricate torque +1",
        ear1 = "Mendicant's Earring",
        ear2 = "Etiolation earring",
        body = "Nyame mail",
        hands = "Nyame gauntlets",
        ring1 = "Dark Ring",
        ring2 = "Defending ring",
        back = "Intarabus cape",
        waist = "Flume belt",
        legs = "Nyame flanchard",
        feet = "Nyame sollerets"
    }

    sets.Resting = {
        main = "Boonwell Staff",
        sub = "",
        range = "Gjallarhorn",
        head = "",
        body = "",
        hands = "",
        legs = "",
        feet = "",
        neck = "Loricate torque +1",
        waist = "Flume Belt",
        left_ear = "Moonshade Earring",
        right_ear = "Etiolation Earring",
        left_ring = "",
        right_ring = "",
        back = "Intarabus Cape"
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
        main = "Kali",
        head = "Fili Calot +1",
        neck = "Loricate torque +1",
        ear1 = "Etiolation earring",
        ear2 = "Enchanter's earring +1",
        body = "Inyanga jubbah +2",
        hands = "Brioso cuffs +2",
        ring1 = "Kishar ring",
        ring2 = "Defending ring",
        back = "Intarabus's cape",
        waist = "Flume belt",
        legs = "Ayanmo cosciales +2",
        feet = "Fili cothurnes +1"
    }

    -- Fastcast Set --
    sets.Precast.FastCast = {
        main = "Kali",
        sub = "Genmei Shield",
        head = "Fili calot +1",
        body = "Inyanga Jubbah +2",
        hands = "Gende. Gages +1",
        legs = "Doyen pants",
        feet = "Bihu slippers +3",
        neck = "Orunmila's Torque",
        waist = "Witful belt",
        left_ear = "Enchanter's earring +1",
        right_ear = "Etiolation Earring",
        left_ring = "Kishar Ring",
        right_ring = "",
        back = ""
    }

    -- Cure Precast Set --
    sets.Precast.Cure = {
        main = "Carnwenhan",
        sub = "Genbu's Shied",
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
        main = "Carnwenhan",
        sub = "Ammurapi shield",
        head = "",
        neck = "Moonbow Whistle +1",
        ear1 = "",
        ear2 = "Dignitary's earring",
        body = "Brioso justaucorps +2",
        hands = "",
        ring1 = "Stikini ring",
        ring2 = "",
        back = "Rhapsode's cape",
        waist = "Luminary sash",
        legs = "Brioso cannions +2",
        feet = "Brioso slippers +2"
    }

    -- Song Buff Set --
    sets.Midcast.WindBuff = {
        main = "Carnwenhan",
        head = "Fili calot +1",
        body = "Fili hongreline +1",
        hands = "Fili manchettes +1",
        legs = "Inyanga Shalwar +2",
        feet = "Brioso Slippers +2",
        neck = "Moonbow Whistle +1",
        waist = "Ovate rope",
        ear1 = "",
        ear2 = "Aoidos' Earring",
        ring1 = "Dawnsoul ring",
        back = "Kumbira cape"

    }

    sets.Midcast.March = {
        hands = "Fili manchettes +1"
    }
    sets.Midcast.Minuet = {
        body = "Fili hongreline +1"
    }
    sets.Midcast.Madrigal = {
        head = "Fili calot +1"
    }
    sets.Midcast.Ballad = {
        legs = "Fili rhingrave +1"
    }
    sets.Midcast.Scherzo = {
        feet = "Fili cothurnes +1"
    }
    sets.Midcast.Mazurka = {
        head = ""
    }
    sets.Midcast.Paeon = {
        head = "Brioso Roundlet +2"
    }
    sets.Midcast.Finale = {}
    sets.Midcast.Lullaby = {
        hands = "Brioso cuffs +2"
    }

    -- Cure Set --
    sets.Midcast.Cure = {
        main = "Daybreak",
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

    -- Curaga Set --
    sets.Midcast.Curaga = {
        main = "Serenity",
        sub = "Genbu's Shield",
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

    -- Haste Set --
    sets.Midcast.Haste = set_combine(sets.Precast.FastCast, {
        head = "Nahtirah Hat",
        neck = "Moonbow Whistle +1",
        ear1 = "Loquac. Earring",
        body = "",
        hands = "Gendewitha Gages +1",
        ring1 = "Prolix Ring",
        ring2 = "Weatherspoon ring",
        back = "Swith Cape +1",
        waist = "Witful belt",
        legs = "Bihu Cannions +3",
        feet = "Brioso Slippers +2"
    })

    -- Cursna Set --
    sets.Midcast.Cursna = {
        main = "Queller rod",
        sub = "Sors shield",
        ammo = "Incantor Stone",
        head = "Vanya hood",
        neck = "Malison medallion",
        ear1 = "Nourishing earring",
        ear2 = "Glorious earring",
        body = "",
        hands = "Fanatic gloves",
        ring1 = "Haoma's ring",
        ring2 = "Haoma's ring",
        back = "Alaunus's cape",
        waist = "Channeler's stone",
        legs = "",
        feet = "Gende. Galosh. +1"
    }

    -- Stoneskin Set --
    sets.Midcast.Stoneskin = set_combine(sets.Midcast.Haste)

    -- Melee --
    sets.TP = {
        sub = "Taming Sari",
        range = "Linos",
        head = "Aya. Zucchetto +2",
        body = "Reiki osode",
        hands = "Volte mittens",
        legs = "Aya. Cosciales +2",
        feet = "Aya. Gambieras +1",
        neck = "Bard's Charm +1",
        waist = "Windbuffet belt +1",
        left_ear = "Telos Earring",
        right_ear = "Balder earring +1",
        left_ring = "Chirich ring +1",
        right_ring = "Petrov Ring",
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
    end
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

function aftercast(spell, action)
    status_change(player.status)
end

function status_change(new, old)
    if new == 'Idle' then
        equip(sets.Idle)
        debug('Aftercast: Idle')
    elseif new == 'Resting' then
        equip(sets.Resting)
        debug('Aftercast: Resting')
    elseif new == 'Engaged' then
        equipSet = sets.TP
        equip(equipSet)
    else
        equipSet = sets.Idle
        if equipSet[IdleArray[IdleIndex]] then
            equipSet = equipSet[IdleArray[IdleIndex]]
        end
        if equipSet[WeaponArray[WeaponIndex]] then
            equipSet = equipSet[WeaponArray[WeaponIndex]]
        end
        equip(equipSet)
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
