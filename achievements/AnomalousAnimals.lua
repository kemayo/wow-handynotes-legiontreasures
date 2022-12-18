local myname, ns = ...

local animal = {
	achievement=12088, -- Anomalous Animals of Argus
	atlas="WildBattlePet",
}

ns.RegisterPoints(ns.KROKUUN, {
	[66607240] = {criteria=37719}, -- Ruinhoof
	[51606380] = {criteria=37720}, -- Foulclaw
	[43005200] = {criteria=37721}, -- Baneglow
	[58202980] = {criteria=37722}, -- Retch
	[29605800] = {criteria=37723}, -- Deathscreech
	[39606640] = {criteria=37724}, -- Gnasher
}, animal)

ns.RegisterPoints(ns.EREDATH, {
	[67604400] = {criteria=37725}, -- Bucky
	[69805200] = {criteria=37726}, -- Snozz
	[60007100] = {criteria=37727}, -- Gloamwing
	[35805400] = {criteria=37728}, -- Shadeflicker
	[31803140] = {criteria=37729}, -- Corrupted Blood of Argus
	[74403620] = {criteria=37730}, -- Mar'cuus
}, animal)

ns.RegisterPoints(ns.ANTORANWASTES, {
	[51604140] = {criteria=37731}, -- Watcher
	[56605420] = {criteria=37732}, -- Bloat
	[56002860] = {criteria=37733}, -- Earseeker
	[64006580] = {criteria=37734}, -- Pilfer
	[76607380] = {criteria=37735}, -- Minixis
	[59804000] = {criteria=37736}, -- One-of-Many
}, animal)
