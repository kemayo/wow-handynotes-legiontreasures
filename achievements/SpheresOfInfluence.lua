local myname, ns = ...

local sphere = {
	achievement=12067, -- Spheres of Influence
	atlas="Vehicle-TempleofKotmogu-OrangeBall",
	label="{spell:253754:Orb of Life}",
	note=BLUE_FONT_COLOR:WrapTextInColorCode("Appears after the encounter; each spawns after you collect the previous one and despawns after a short time"),
	minimap=true,
}

ns.RegisterPoints(913, { -- Antorus: Elarian Sanctuary
	[49354039] = {note="First.", route={49354039, 81625119, 33377826, 33562878, 77269857}},
	[81625119] = {note="Second."},
	[33377826] = {note="Third; underneath Eonar's platform."},
	[33562878] = {note="Fourth; on the supports under the bridge."},
	[77269857] = {note="Fifth; chain-glide around the rocks to the balcony."},
}, sphere)

ns.RegisterPoints(912, { -- Antorus: Elunaria
	[31335599] = {note="Fifth; chain-glide around the rocks", route={31335599, 0}},
}, sphere)
