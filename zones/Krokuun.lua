local myname, ns = ...

ns.map_spellids[830] = true

ns.RegisterPoints(830, { -- Krokuun
    [48505890] = {quest=48886, criteria=37594}, -- Lost Krokul Chest
    [51257624] = {quest=48884, criteria=37592, note="Requires Lightforge Warframe. Jump on the rubble."}, -- Krokuul Emergency Cache
    [55907420] = {quest=49156, criteria=37959, note="Requires Shroud of Arcane Echoes"}, -- Precious Augari Keepsakes
    [62803730] = {quest=48885, criteria=37593, loot={151246}, note="Climb up behind the tower"}, -- Legion Tower Chest
    [75246960] = {quest=49154, criteria=37958, note="Requires Shroud of Arcane Echoes. Stealth before opening."}, -- Long-Lost Augari Treasure
}, {
    achievement=12074,
})

-- Junk:
local LEGION_SUPPLIES = "Legion War Supplies"
ns.RegisterPoints(830, { -- Krokuun
    [72293223] = {quest=48339, label="Eredar War Supplies"},
    [52856280] = {quest=48339, label="Eredar War Supplies"},
    [61406640] = {quest=48339, label="Eredar War Supplies"},
    [43505520] = {quest=48339, label="Eredar War Supplies"},

    [48603090] = {quest=47999, label="Eredar War Supplies"},
    [59544417] = {quest=47999, label="Eredar War Supplies"},
    [61573519] = {quest=47999, label="Eredar War Supplies"},
    [62803810] = {quest=47999, label="Eredar War Supplies"},
    [66802490] = {quest=47999, label="Eredar War Supplies"},
    [62394178] = {quest=47999, label="Eredar War Supplies"},

    [67606990] = {quest=48000, label="Eredar War Supplies", note="Up on the ridge"},
    [69406280] = {quest=48000, label="Eredar War Supplies"},
    [75006420] = {quest=48000, label="Eredar War Supplies"},
    [71426162] = {quest=48000, label=LEGION_SUPPLIES},

    [46508520] = {quest=47997, label="Eredar War Supplies"},
    [40617531] = {quest=47997, label=LEGION_SUPPLIES},

    [64203910] = {quest=48885, label=LEGION_SUPPLIES, note="Requires Light's Judgement. Blow the pile of ruble with the ability"},

    [47705940] = {quest=48886, label=LEGION_SUPPLIES, note="Requires Light's Judgement. Blow the pile of ruble with the ability"},

    [32047451] = {quest=48336, label=LEGION_SUPPLIES},
    [35475618] = {quest=48336, label=LEGION_SUPPLIES},
    [37007430] = {quest=48336, label=LEGION_SUPPLIES},
    [41335836] = {quest=48336, label=LEGION_SUPPLIES},

    [36396765] = {quest=48336, label=LEGION_SUPPLIES},

    [56675875] = {quest=47752, label=LEGION_SUPPLIES},
    [55605240] = {quest=47752, label=LEGION_SUPPLIES},
    [53305110] = {quest=47752, label=LEGION_SUPPLIES},
    [52025959] = {quest=47752, label=LEGION_SUPPLIES},

    [58207179] = {quest=47753, label=LEGION_SUPPLIES},
    [59377345] = {quest=47753, label=LEGION_SUPPLIES},
    [58607990] = {quest=47753, label=LEGION_SUPPLIES},
}, {
    junk = true,
})

-- Rares

ns.RegisterPoints(830, { -- Krokuun
    [33007600] = {quest=48562, npc=122912, criteria=37644}, -- Commander Sathrenael
    [38145920] = {quest=48563, npc=122911, criteria=37643, loot={153299}, note="Either go through the Xenedar, or climb up from 42, 57.1"}, -- Commander Vecaya
    [41707020] = {quest=48666, npc=125820, criteria=37650}, -- Imp Mother Laglath
    [50301730] = {quest=48561, npc=125824, criteria=37646, loot={153316}}, -- Khazaduum
    [44505870] = {quest=48564, npc=124775, criteria=37642, loot={153255}}, -- Commander Endaxis
    [53403090] = {quest=48565, npc=123464, criteria=37641, loot={{153124, toy=true}}}, -- Sister Subversia
    [55508020] = {quest=48628, npc=123689, criteria=37655, loot={153329}}, -- Talestra the Vile
    [58007480] = {quest=48627, npc=120393, criteria=37659}, -- Siegemaster Voraan
    [60802080] = {quest=48629, npc=125388, criteria=37652, loot={153114}}, -- Vagath the Betrayed
    [69605750] = {quest=48664, npc=124804, criteria=37653, loot={153263}}, -- Tereck the Selector
    [69708050] = {quest=48665, npc=125479, criteria=37651}, -- Tar Spitter
    [70503370] = {quest=48667, npc=126419, criteria=37645, loot={153190}}, -- Naroua
}, {
    achievement=12078,
})
