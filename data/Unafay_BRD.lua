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
        head = "Oracle's Cap",
        body = "Oracle's Robe",
        hands = "Oracle's Gloves",
        legs = "Volte Brais",
        feet = "Avocat Pigaches",
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
        head = "Fili Calot +1",
        neck = "Moonbow Whistle +1",
        ear1 = "Loquac. Earring",
        ear2 = "Enchanter Earring +1",
        body = "Inyanga jubbah +2",
        hands = "Marduk's dastanas +1",
        ring1 = "Prolix Ring",
        ring2 = "Weatherspoon ring",
        back = "Intarabus cape",
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
        left_ear = "Enchanter earring +1", -- 2
        right_ear = "Etiolation Earring", -- 1
        left_ring = "Kishar Ring", -- 4
        right_ring = "Weather. Ring", -- 5
        back = {
            name = "Intarabus's Cape",
            augments = {'"Fast Cast"+10'}
        }
    }

    -- Cure Precast Set --
    sets.Precast.Cure = {
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

    sets.Midcast = {}

    -- Song Debuff Set --
    sets.Midcast.Wind = {
        main = "Carnwenhan",
        sub = "Ammurapi shield",
        range = "",
        head = "Cath palug crown",
        neck = "Moonbow Whistle +1",
        ear1 = "Regal earring",
        ear2 = "Dignitary's earring",
        body = "Brioso justaucorps +3",
        hands = "Brioso cuffs +3",
        ring1 = "Stikini ring +1",
        ring2 = "Stikini ring +1",
        back = "Intarabus's cape",
        waist = "Luminary sash",
        legs = "Brioso cannions +3",
        feet = "Brioso slippers +3"
    }

    -- Song Buff Set --
    sets.Midcast.WindBuff = {
        main = "Carnwenhan",
        range = "",
        head = "Fili calot +1",
        neck = "Moonbow Whistle +1",
        ear1 = "",
        ear2 = "Aoidos' Earring",
        body = "Fili hongreline +1",
        hands = "Fili manchettes +1",
        ring1 = "Dawnsoul ring",
        back = "Kumbira cape",
        waist = "Ovate rope",
        legs = "Inyanga Shalwar +2",
        feet = "Brioso Slippers +3"
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
        head = "Cath palug crown"
    }
    sets.Midcast.Paeon = {
        head = "Brioso Roundlet +3"
    }
    sets.Midcast.Finale = {}
    sets.Midcast.Lullaby = {
        hands = "Brioso cuffs +3"
    }

    -- Cure Set --
    sets.Midcast.Cure = {
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

    -- Curaga Set --
    sets.Midcast.Curaga = {
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
        legs = "Bihu Cannions +2",
        feet = "Brioso Slippers +3"
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
        main = "Carnwenhan",
        sub = "Taming Sari",
        range = "Linos",
        head = "Volte tiara",
        body = "Ashera harness",
        hands = "Volte mittens",
        legs = "Volte tights",
        feet = "Volte spats",
        neck = "Bard's Charm +1",
        waist = "Windbuffet belt +1",
        left_ear = "Telos Earring",
        right_ear = "Balder earring +1",
        left_ring = "Chirich ring +1",
        right_ring = "Petrov Ring",
        back = "Intarabus's cape"
    }

    sets.WeaponSkill = {}
    sets.WeaponSkill["Rudra's Storm"] = {
        main = "Carnwenhan",
        sub = "Taming Sari",
        range = "Linos",
        head = "Volte tiara",
        body = "Ashera harness",
        hands = "Volte mittens",
        legs = "Aya. Cosciales +2",
        feet = "Aya. Gambieras +2",
        neck = "Bard's Charm +1",
        waist = "Windbuffet belt +1",
        left_ear = "Telos Earring",
        right_ear = "Balder earring +1",
        left_ring = "Chirich ring +1",
        right_ring = "Petrov Ring",
        back = "Intarabus's cape"
    }
    sets.WeaponSkill["Mordant Rime"] = {
        main = "Carnwenhan",
        sub = {
            name = "Taming Sari",
            augments = {'STR+10', 'DEX+10', 'DMG:+15', '"Treasure Hunter"+1'}
        },
        range = {
            name = "Linos",
            augments = {'Accuracy+15 Attack+15', '"Dbl.Atk."+3', 'Quadruple Attack +2'}
        },
        head = {
            name = "Bihu Roundlet +3",
            augments = {'Enhances "Con Anima" effect'}
        },
        body = {
            name = "Bihu Jstcorps. +3",
            augments = {'Enhances "Troubadour" effect'}
        },
        hands = {
            name = "Bihu Cuffs +3",
            augments = {'Enhances "Con Brio" effect'}
        },
        legs = {
            name = "Bihu Cannions +3",
            augments = {'Enhances "Soul Voice" effect'}
        },
        feet = {
            name = "Bihu Slippers +3",
            augments = {'Enhances "Nightingale" effect'}
        },
        neck = {
            name = "Bard's Charm +1",
            augments = {'Path: A'}
        },
        waist = "Kentarch Belt",
        left_ear = "Regal Earring",
        right_ear = "Telos Earring",
        left_ring = "Metamorph Ring",
        right_ring = "Dawnsoul Ring",
        back = {
            name = "Intarabus's Cape",
            augments = {'CHR+20', 'Accuracy+20 Attack+20', 'Mag. Acc.+5', 'Weapon skill damage +10%'}
        }
    }
    sets.WeaponSkill["Savage Blade"] = {
        main = "Carnwenhan",
        sub = "Taming Sari",
        range = "Linos",
        head = "Volte tiara",
        body = "Ashera harness",
        hands = "Volte mittens",
        legs = "Aya. Cosciales +2",
        feet = "Aya. Gambieras +2",
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
    elseif sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])

        return
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
