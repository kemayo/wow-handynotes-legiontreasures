local myname, ns = ...

ns.map_spellids[885] = true

ns.RegisterPoints(885, { -- Antoran Wastes
    [49135934] = {quest=49020, criteria=37698, note="Behind the waterfall"}, -- Legion Treasure Hoard
    [52102720] = {quest=49019, criteria=37697, note="Requires Light's Judgement"}, -- Fel-Bound Chest
    [57346366] = {quest=49159, criteria=37960, note="Requires Shroud of Arcane Echoes"}, -- Missing Augari Chest
    [58906140] = {quest=49017, criteria=37695, note="Requires Lightforged Warframe"}, -- Forgotten Legion Supplies
    [65903980] = {quest=49018, criteria=37696, note="Requires Light's Judgement"}, -- Ancient Legion War Cache
    [75705260] = {quest=49021, criteria=37699}, -- Timeworn Fel Chest
}, {
    achievement=12074,
})

-- Junk:
ns.RegisterPoints(885, { -- Antoran Wastes
    [57836485] = {quest=48382},
    [60897052] = {quest=48382},
    [62106933] = {quest=48382},
    [64475836] = {quest=48382},
    [67516988] = {quest=48382},
    [69406320] = {quest=48382},

    [56393555] = {quest=48383},
    [51693779] = {quest=48383},
    [59883581] = {quest=48383},
    [58403090] = {quest=48383},
    [55103930] = {quest=48383},

    [59101940] = {quest=48384},
    [66581711] = {quest=48384},
    [64062748] = {quest=48384},

    [57735890] = {quest=48385},
    [55925384] = {quest=48385},
    [48225455] = {quest=48385},

    [72404210] = {quest=48387},
    [66603641] = {quest=48387},
    [68903340] = {quest=48387},
    [69503966] = {quest=48387},

    [55991401] = {quest=48388},
    [59581389] = {quest=48388},
    [55402040] = {quest=48388},
    [54202800] = {quest=48388},

    [65225180] = {quest=48389, note="In the cave"},
    [60344695] = {quest=48389},
    [64315036] = {quest=48389, note="In the cave"},
    [60684104] = {quest=48389},
    [65484091] = {quest=48389},

    [73306850] = {quest=48390},
    [76465651] = {quest=48390}, -- Verify me...
    [76565823] = {quest=48390},
    [78025620] = {quest=48390},

    [65224956] = {quest=48391},
    [68005070] = {quest=48391},
    [69785509] = {quest=48391},
    [63075799] = {quest=48391, note="In the cave"},

    [52102720] = {quest=49019},
    [65204060] = {quest=49018, note="Requires Light's Judgement to be equipped in the Vindicaar Matrix. Blow the pile of ruble with the ability"},
}, {
    label="Legion War Supplies",
    junk=true,
})

-- Rares

ns.RegisterPoints(885, { -- Antoran Wastes
    [50905530] = {quest=48820, npc=127118, criteria=37605}, -- Worldsplitter Skuul
    [52702950] = {quest=48822, npc=127291, criteria=37613}, -- Watcher Aival
    [53103580] = {quest=48810, npc=126199, criteria=37649, loot={{152903, mount=981}}}, -- Vrax'thul
    [54003800] = {quest=48966, npc=127581, criteria=37660, loot={{153195, pet=2136}}, note="Gather bones in Scavenger's Boneyard"}, -- The Many-Faced Devourer
    [55702190] = {quest=48824, npc=127300, criteria=37614, loot={153319}}, -- Void Warden Valsuran
    [56204550] = {quest=49241, npc=122999, criteria=37656}, -- Gar'zoth
    [57403290] = {quest=49240, npc=122947, criteria=37658, loot={153327}}, -- Mistress Il'thendra
    [58001200] = {quest=48968, npc=127703, criteria=37663, note="3 people on the runes to summon; don't interrupt Doom Star"}, -- Doomcaster Suprax
    [60575159] = {quest=48816, npc=127084, criteria=37610, note="Use the portal slightly west from him at 80, 62.4"}, -- Commander Texlaz
    [60674831] = {quest=48815, npc=126946, criteria=37608, loot={151543}}, -- Inquisitor Vethroz
    [60902290] = {quest=48865, npc=127376, criteria=37606}, -- Chief Alchemist Munculus
    [61703720] = {quest=49183, npc=122958, criteria=37657, loot={{152905, mount=979}}}, -- Blistermaw
    [61906430] = {quest=48814, npc=126338, criteria=37616}, -- Wrath-Lord Yarez
    [62405380] = {quest=48813, npc=126254, criteria=37612}, -- Lieutenant Xakaar
    [63102520] = {quest=48821, npc=127288, criteria=37615, loot={{152790, mount=955}}}, -- Houndmaster Kerrax
    [63225754] = {quest=48811, npc=126115, criteria=37648, note="The entrance to the cave is north east from her in the spider area at 66, 54.1"}, -- Ven'orn
    [63902090] = {quest=48809, npc=126040, criteria=37647, note="Entrance to the cave is south east - use the eastern bridge to get there."}, -- Puscilla
    [64304820] = {quest=48812, npc=126208, criteria=37607, loot={153190}}, -- Varga
    [66981777] = {quest=48970, npc=127705, criteria=37665, loot={{153252, pet=2135}}, note="Summon with imp meat"}, -- Mother Rosula
    [73207080] = {quest=48817, npc=127090, criteria=37611, loot={153324}}, -- Admiral Rel'var
    [75605650] = {quest=48818, npc=127096, criteria=37609}, -- All-Seer Xanarian
}, {
    achievement=12078,
})
ns.RegisterPoints(833, { -- Nath'raxas Spire
    [38954032] = {quest=48561, npc=125824, criteria=37646, loot={153316}}, -- Khazaduum
}, {
    achievement=12078,
})
