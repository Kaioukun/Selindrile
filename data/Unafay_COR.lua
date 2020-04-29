function get_sets()
	sets.Idle = {
		main="",
		sub="",
        head="Meghanada Visor +1",
        body="Meg. Cuirie +2",
        hands="Meg. Gloves +1",
        legs="Meg. Chausses +1",
        feet="Herculean boots",
        neck="Bathy choker",
        waist="",
        ear1="Genmei earring",
        ear2="Telos earring",
        left_ring="Patricius Ring", 
        right_ring="Defending ring",
        back="Moonbeam cape",
    }

    sets.Engaged = {
		head="Meghanada visor +1",
        body="Meg. Cuirie +2",
        hands="Herculean gloves",
        legs="Samnuha Tights",
        feet="Herculean boots",
        neck="",
        ear1="Telos earring",
        ear2="",
        ring1="",
        ring2="",
        back="",
        waist="Reiki yotai",
    }

    sets.Misc = {}
    sets.Misc.Ranged = {
        head="Meghanada Visor +1",
        body="Meg. Cuirie +2",
        hands="",
        legs="Meg. Chausses +1",
        feet="Meg. Jam. +1",
        neck="Iqabi Necklace",
        ear1="",
        ear2="",
        left_ring="",
        right_ring="",
        back="",
    }

    sets.WeaponSkill = {
        head="Meghanada Visor +1",
        body="Meg. Cuirie +2",
        hands="Mummu Wrists +1",
        legs="Meg. Chausses +2",
        feet="Herculean Boots",
        neck="",
        waist="",
        ear1="Ishvara Earring",
        ear2="Moonshade Earring",
        leftring="Ilabrat Ring",
        right_ring="Apate Ring",
        back="Buquwik Cape",
    }
    sets.WeaponSkill["Savage Blade"] = {
        head="Meghanada Visor +1",
        body="Herculean Vest",
        hands="Meg. Gloves +1",
        legs="Meg. Chausses +2",
        feet="Herculean Boots", 
        neck="",
        waist="",
        ear1="Ishvara Earring",
        ear2="",
        left_ring="",
        right_ring="",
        back="",
    }

    sets.WeaponSkill["Last Stand"] = {
        head="Dampening Tam",
        body="Samnuha coat",
        hands="Floral gauntlets",
        legs="Meg. Chausses +1",
        feet="Meg. jambeau +1", 
        neck="Gaudryi necklace",
        waist="Elanid belt",
        ear1="",
        ear2="", 
        left_ring="",
        right_ring="",
        back="Thall mantle",
    }
    sets.WeaponSkill["Leaden Salute"] = {
        range="",
		head="Meghanada visor +1",
        body="Samnuha coat",
        hands="Leyline gloves",
        legs="Meg. Chausses +1",
        feet="Meg. Jam. +1",
        neck="Sanctity Necklace",
        waist="Eschan Stone",
        ear1="Friomisi Earring",
        ear2="Hecate's earring",
        left_ring="Weatherspoon Ring",
        right_ring="Acumen Ring",
        back="Gunslinger's Cape",
    }

    sets.CorsairRoll = {
        head="Lanun Tricorne +1",
        body="Meg. Cuirie +2",
        hands="Chasseur's Gants +1",
        legs="Meghanada chausses +2",
        feet="Lanun Bottes +1", 
        neck="Regal Necklace",
        ear1="Genmei Earring", 
        ear2="Etiolation Earring", 
        ring1="Patricius ring", 
        ring2="Defending Ring", 
        back="Moonbeam cape",
        waist="Elanid belt", 
        }
		
	sets.Quickdraw = {
		Range="Doomsday",
		ammo="",
		head="Herculean Helm",
		body="Lanun Frac +1",
		hands="Leyline gloves",
		legs="Laksa. Trews +2",
		feet="Lanun Bottes +1",
		neck="Comm. Charm +1",
		waist="Eschan Stone",
		left_ear="Crematio earring",
		right_ear="Friomisi Earring",
		left_ring="Shiva ring +1",
		right_ring="Dingir Ring",
		back="Camulus's Mantle",}
		
		
	sets.JA = {}	
	sets.JA['Wild Card'] = {feet="Lanun Bottes +1"}
	sets.JA['Random Deal'] = {body="Lanun Frac +1"}
	sets.JA['Snake Eye'] = {legs="Lanun Trews +1"}

	sets.PhantomRoll = {
		main="",
		head="Lanun Tricorne +1",
		hands="Chasseur's Gants +1",
		back="Camulus's Mantle",
		neck="Regal Necklace",
		Ring2="Luzaf's Ring",
		Ring1="Barataria Ring",
		range="Compensator"}
	sets.PhantomRoll.Tactician = set_combine(sets.PhantomRoll, {body="Chasseur's Frac +1"})
	sets.PhantomRoll.Allies = set_combine(sets.PhantomRoll, {hands="Chasseur's Gants +1"})
	sets.PhantomRoll.Coursers = set_combine(sets.PhantomRoll, {feet="Chass. Bottes +1"})
	sets.PhantomRoll.Blitzer = set_combine(sets.PhantomRoll, {head="Chasseur's Tricorne +1"})
	sets.PhantomRoll.Caster = set_combine(sets.PhantomRoll, {legs="Chasseur's Culottes +1"})	
	
		
end

function precast(spell, action)
    if sets[spell.type] and sets[spell.type][spell.english] then
        equip(sets[spell.type][spell.english])
        debug(spell.type .. '.' .. spell.english)
        return
    elseif sets[spell.type] then
        equip(sets[spell.type])
        debug(spell.type)
        return
    end
    
    debug('No set for ' .. spell.type .. '.' .. spell.english)
end

function aftercast(spell,action)
	status_change(player.status)
end

function status_change(new, old)
    if (sets[new]) then
        equip(sets[new])
        debug(new);
    end
end

function debug(s)
	send_command('@input /echo ' .. s)
end