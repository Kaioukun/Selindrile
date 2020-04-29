-- Local Settings, setting the zones prior to use
toau_zones = S{"Leujaoam Sanctum","Mamool Ja Training Grounds","Lebros Cavern","Periqia","Ilrusi Atoll",
        "Nyzul Isle","Bhaflau Remnants","Arrapago Remnants","Silver Sea Remnants","Zhayolm Remnants"}

naSpells = S{"Paralyna","Silena","Viruna","Erase","Stona","Blindna","Poisona"}

resSpells = S{"Barstonra","Barwatera","Baraera","Barfira","Barblizzara","Barthundra",
	"Barstone","Barwater","Baraero","Barfire","Barblizzard","Barthunder"}
ST_Cure_Spells = S{"Cure","Cure II","Cure III","Cure IV","Cure V","Cure VI"}
MT_Cure_Spells = S{"Curaga","Curaga II","Curaga III","Curaga IV","Curaga V"}
FC_Spells = S{"Haste","Utsusemi: Ichi","Utsusemi: Ni","Refresh","Flurry"}
Regen_Spells = S{"Regen","Regen II","Regen III","Regen IV"}
Holy_Spells = S{"Banish","Banish II","Banish III","Banishga","Banishga II","Holy","Holy II"}
Gear_Debug = 0

-- Start Functions here
-- Gear Sets
function get_sets()
		
	sets.aftercast_Idle_refresh = 
		{main="Bolelabunga",
		sub="Genbu's Shield",
		ammo="Homiliary",
		head="Vanya Hood",
		neck="Loricate torque",
		ear1="Moonshade earring",
		ear2="Etiolation Earring",
		body="Piety briault +3",
		hands="Ayanmo manopolas +2",
		ring1="Patricius ring",
		ring2="Defending Ring",
		back="Moonbeam cape",
		waist="Luminary sash",
		legs="Assiduity pants +1",
		feet="Ayanmo gambieras +2"}
	
	sets.aftercast_Move = sets.aftercast_Idle_refresh

	sets.aftercast_Idle = sets.aftercast_Idle_refresh
		
	sets.precast_FastCast = 
		{main="Sucellus",
		sub="Genbu shield",
		ammo="Incantor Stone",
		head="Nahtirah hat",
		neck="Cleric's torque +1",
		ear1="Loquac. Earring",
		ear2="Etiolation Earring",
		body="Inyanga jubbah +2",
		hands="Gendewitha gages +1",
		ring1="Kishar Ring",
		ring2="Weatherspoon Ring",
		back="Alaunus's cape",
		waist="Witful belt",
		legs="Ayanmo cosciales +2",
		feet="Regal pumps +1"}
	
	sets.precast_Haste = 
		{main="Bolelabunga",
		sub="Genbu shield",
		ammo="Incantor Stone",		
		head="Nahtirah hat",
		neck="Cleric's torque +1",
		ear1="Roundel earring",
		ear2="Etiolation Earring",
		body="Inyanga jubbah +2",
		hands="",
		ring1="Sangoma Ring",
		ring2="Prolix Ring",
		back="Ogapeopo cape",
		waist="Witful belt",
		legs="Artsieq hose",
		feet=""}
		
	sets.midcast_Haste = 
		{main="Bolelabunga",
		sub="Genbu shield",
		ammo="",
		head="",
		neck="",
		ear1="",
		ear2="Etiolation Earring",
		body="Artsieq jubbah",
		hands="Dynasty mitts",
		ring1="Sangoma Ring",
		ring2="Prolix Ring",
		back="",
		waist="",
		legs="",
		feet=""}
	
	sets.precast_Devotion = {}

	sets.Resting = 
		{main="Boonwell staff",
		sub="",
		ammo="Homiliary",
		head="Befouled crown",
		neck="",
		ear1="",
		ear2="Moonshade Earring",
		body="Piety briault +3",
		hands="",
		ring1="Stikini ring +1",
		ring2="Stikini ring",
		back="",
		waist="Cleric's belt",
		legs="Assiduity Pants +1",
		feet=""}
	
	sets.midcast_EnfeeblingMagic = 
		{main="Gada", 
		sub="Ammurapi shield",
		ammo="Homiliary",
		head="Befouled crown",
		body="Theo. Briault +3",
		hands="Lurid mitts",
		legs="Th. Pant. +3",
		feet="Theophany duckbills +3",
		neck="Incanter's torque",
		waist="Luminary Sash",
		left_ear="Digni. Earring",
		right_ear="Enchntr. Earring +1",
		left_ring="Stikini Ring +1",
		right_ring="Globidonta Ring",
		back="Altruistic Cape",
}
	
	sets.midcast_BarSpells_Solace = 
		{main="Beneficus",
		sub="Ammurapi shield",
		ammo="Incantor Stone",
		head="Ebers Cap +1",
		body="Ebers Bliaud +1",
		hands="Ebers Mitts +1",
		legs={ name="Piety Pantaln. +3", augments={'Enhances "Shellra V" effect',}},
		feet={ name="Piety Duckbills +3", augments={'Enhances "Protectra V" effect',}},
		neck="Incanter's Torque",
		waist="Cascade Belt",
		left_ear="Andoaa Earring",
		right_ear="Etiolation Earring",
		left_ring="Stikini Ring +1",
		right_ring="Stikini Ring",
		back="Fi follet cape +1",}
		
	sets.midcast_Barspells_noSolace = sets.midcast_BarSpells_Solace

	sets.midcast_EnhancingMagic = 
		{main="Gada",
		sub="Ammurapi shield",
		ammo="Incantor Stone",
		head="Telchine cap",
		neck="Incanter's torque",
		ear1="Andoaa earring",
		ear2="",
		body="Telchine chasuble",
		hands="Telchine gloves",
		ring1="Stikini ring +1",
		ring2="Prolix Ring",
		back="Fi follet cape +1",
		waist="Cascade belt",
		legs="Piety pantaloons +3",
		feet="Telchine pigaches"}
	
	sets.midcast_MAB = 
		{main="Venabulum",
		sub="Mephitis grip",
		ammo="Dosis tathlum",
		head="Buremte Hat",
		neck="Cleric's torque +1",
		ear1="Friomisi Earring",
		ear2="Crematio Earring",
		body="Vanir cotehardie",
		hands="Otomi gloves",
		ring1="Sangoma ring",
		ring2="Acumen ring",
		back="Toro cape",
		waist="Sekhmet corset",
		legs="Artsieq hose",
		feet="Umbani boots"}
		
	sets.midcast_Regen = 
		{main="Gada",
		sub="Ammurapi shield",
		ammo="Incantor Stone",
		head="Telchine cap",
		body={ name="Piety Briault +3", augments={'Enhances "Benediction" effect',}},
		hands="Ebers Mitts +1",
		legs="Th. Pant. +3",
		feet={ name="Telchine Pigaches", augments={'Enh. Mag. eff. dur. +9',}},
		neck="Incanter's Torque",
		waist="Cascade belt",
		left_ear="Enchntr. Earring +1",
		right_ear="Etiolation Earring",
		left_ring="Stikini Ring +1",
		right_ring="Prolix Ring",
		back="Fi Follet Cape +1",
}
	
	sets.midcast_Protectra = 
		{feet="Piety Duckbills +3"}
		
	sets.midcast_Shellra = 
		{legs="Piety Pantaloons +2"}
	
	sets.midcast_Auspice = {feet="Piety Duckbills +3"}
		
	sets.precast_cure =  
		{main="Queller Rod", 
		sub="Genbu's Shield",
		ammo="Incanter stone",
		head="",
		body="Inyanga jubbah +2",
		hands="Theophany mitts +2",
		legs="Nabu's shalwar",
		feet="Kaykaus Boots",
		neck="Clr. Torque +1",
		waist="Witful Belt",
		left_ear="Nourish. Earring",
		right_ear="Mendi. Earring",
		left_ring="Weatherspoon ring",
		right_ring="Kishar Ring",
		back="Alaunus's Cape",}
	
	sets.midcast_Cure = 
		{main="Queller rod",
		sub="Genbu's shield",
		ammo="Oreiad's Tathlum",
		head="Vanya Hood",
		neck="Cleric's torque +1",
		ear1="Nourishing earring",
		ear2="Glorious earring",
		body="Theophany briault +3",
		hands="Theophany mitts +2",
		ring1="Stikini ring +1",
		ring2="Sirona's Ring",
		back="Solemnity cape",
		waist="Cascade belt",
		legs="Ebers pantaloons +1",
		feet="Regal pumps +1"}
	
	sets.midcast_Curaga = 
		{main="Queller rod",
		sub="Sors shield",
		ammo="Incantor Stone",	
		head="Vanya hood",
		neck="Cleric's torque +1",
		ear1="Nourishing earring",
		ear2="Glorious earring",
		body="Theophany briault +3",
		hands="Piety mitts +1",
		ring1="Lebeche ring",
		ring2="Persis ring",
		back="Mending Cape",
		waist="Channeler's stone",
		legs="Ebers pantaloons +1",
		feet="Piety duckbills +3"}
		
	sets.midcast_Stoneskin = sets.midcast_EnhancingMagic
	
	sets.midcast_DebuffRemoval = 
		{main="Yagrush",
		sub="Genbu shield",
		ammo="Incantor Stone",
		head="Ebers cap +1",
		neck="Cleric's torque +1",
		ear1="Roundel earring",
		ear2="Etiolation Earring",
		body="Witching robe",
		hands="Ebers mitts +1",
		ring1="Ephedra ring",
		ring2="Prolix Ring",
		back="Mending cape",
		waist="",
		legs="Ebers pantaloons +1",
		feet=""}

	sets.midcast_Cursna = 
		{main="Queller rod",
		sub="Sors shield",
		ammo="Incantor Stone",	
		head="Vanya hood",
		neck="Malison medallion",
		ear1="Nourishing earring",
		ear2="Glorious earring",
		body="Ebers bliaud +1",
		hands="Fanatic gloves",
		ring1="Haoma's ring",
		ring2="Haoma's ring",
		back="Alaunus's cape",
		waist="Channeler's stone",
		legs="Theophany pantaloons +3",
		feet="Gende. Galosh. +1"}
		
		
		
		
	sets.Obi = {}
	sets.Obi.Fire = {waist='Karin Obi',back='Twilight Cape'}
	sets.Obi.Earth = {waist='Dorin Obi',back='Twilight Cape'}
	sets.Obi.Water = {waist='Suirin Obi',back='Twilight Cape'}
	sets.Obi.Wind = {waist='Furin Obi',back='Twilight Cape'}
	sets.Obi.Ice = {waist='Hyorin Obi',back='Twilight Cape'}
	sets.Obi.Thunder = {waist='Rairin Obi',back='Twilight Cape'}
	sets.Obi.Light = {waist='Korin Obi',back='Twilight Cape'}
	sets.Obi.Dark = {waist='Anrin Obi',back='Twilight Cape'}
	
	sets.staves = {}
	
	sets.staves.damage = {}
	
	sets.staves.accuracy = {}
	sets.staves.damage.Thunder = {}


end

-- --- Precast ---

function precast(spell)	
	--if buffactive['Nightingale'] then
	--	equip(sets.midcast.whatever)
	--else
	--	equip(sets.precast.whatever)
	--end	
	if ST_Cure_Spells:contains(spell.name) then
		equip(sets.precast_Cure)
		--send_command('@input /echo Cure Precast Set')
	elseif MT_Cure_Spells:contains(spell.name) then
		equip(sets.precast_Cure)
		--send_command('@input /echo Cure Precast Set')
	elseif naSpells:contains(spell.name) then
		equip(sets.precast_FastCast)
		--send_command('@input /echo NA Precast Set')
	elseif FC_Spells:contains(spell.name) then
		equip(sets.precast_Haste)
		--send_command('@input /echo Haste Precast Set')
	elseif spell.name == 'Impact' then
		equip({body="Twilight cloak"})
	else
		equip(sets.precast_FastCast)
		--send_command('@input /echo Precast Set')
	end
end
-- --- MidCast ---
function midcast(spell)
	if ST_Cure_Spells:contains(spell.name) then 
		equip(sets.midcast_Cure)
		send_command('@input /echo ST Cure Set')
	elseif MT_Cure_Spells:contains(spell.name) then
		equip(sets.midcast_Curaga)
		send_command('@input /echo MT Cure Set')
	elseif naSpells:contains(spell.name) then
		equip(sets.midcast_DebuffRemoval)
		send_command('@input /echo NA Cure Set')
	elseif Regen_Spells:contains(spell.name) then
		equip(sets.midcast_Regen)
		send_command('@input /echo Regen Set')
	elseif spell.name == 'Cursna' then
		equip(sets.midcast_Cursna)
	elseif spell.skill == 'Enfeebling Magic' then
		equip(sets.midcast_EnfeeblingMagic)
		send_command('@input /echo Enfeebling Set')
	elseif spell.skill == 'Enhancing Magic' then		
		if resSpells:contains(spell.name) then					
			equip(sets.midcast_BarSpells_Solace)
				send_command('@input /echo Barspell Set')
		elseif spell.name == 'Haste' then
			equip(sets.midcast_Haste)
		else
			equip(sets.midcast_EnhancingMagic)
				send_command('@input /echo Enhancing Set')
		end	
	elseif Holy_Spells:contains(spell.name) then
		equip(sets.midcast_MAB)
		send_command('@input /echo Holy Nuke Set')
			
	elseif spell.skill == 'Elemental Magic' then
		if spell.name == 'Impact' then
			equip(sets.midcast_Impact)
			send_command('@input /echo Impact Set')	
		else
			equip(sets.midcast_MAB)
			send_command('@input /echo Elemental Set')	
		end
	else
		equip(sets.midcast_Haste)
	end		
end		

-- --- Aftercast ---

function aftercast(spell)
	if Gear_Debug == 0 then
			equip(sets.aftercast_Idle)	
			send_command('@input /echo Idle Set')
	else
	end
end

-- Status Change - ie. Resting

function status_change(new,tab)
	if new == 'Resting' then
		equip(sets['Resting'])
	else
		equip(sets['aftercast_Idle'])
	end
end


-- Self Commands -- ie. Defender 

function self_command(command)	
	if command == 'equip Idle set' then				
		equip(sets.aftercast_Idle_refresh)	
    elseif command == 'change debug mode' then
		if Gear_Debug == 1 then
			Gear_Debug = 0
			send_command('@input /echo Debug Mode Set to 0')
		else
			Gear_Debug = 1
			send_command('@input /echo Debug Mode Set to 1')
		end
	end
end

-- This function is user defined, but never called by GearSwap itself. It's just a user function that's only called from user functions. I wanted to check the weather and equip a weather-based set for some spells, so it made sense to make a function for it instead of replicating the conditional in multiple places.

function weathercheck(spell_element,set)
	if spell_element == world.weather_element or spell_element == world.day_element then
		equip(set,sets['Obi_'..spell_element])
	else
		equip(set)
	end
end
