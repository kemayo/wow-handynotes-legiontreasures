local myname, ns = ...

ns.map_spellids[680] = 199416

local grapple = ns.nodeMaker{
    label="Grapple start point",
    atlas="MiniMap-DeadArrow", scale=1.2,
}
ns.RegisterPoints(680, { -- Suramar
    [16602974] = {quest=43846, label=ns.CHEST_SM},
    [17275462] = {quest=43844, label=ns.CHEST},
    [19791604] = {quest=43845, label=ns.CHEST_SM, note="Cave entrance @ 19.4, 19.4"},
    [19401940] = ns.path{quest=43845},
    [20605040] = ns.path{quest={43839, 43840, 43747}, label="Falanaar Tunnels"},
    [21425446] = {quest=42842, loot={136269}, label="Kel'danath's Manaflask"},
    [22863574] = ns.path{quest={43838, 43988}, label="Temple of Fal'adora"},
    [23414880] = {quest=43842, label=ns.CHEST_SM},
    [25958548] = {quest=43831, label=ns.CHEST_SM},
    [26354127] = {quest=42827, loot={139890}, label="Ancient Mana Chunk"},
    [26831696] = {quest=43847, label=ns.CHEST_SM},
    [26877073] = {quest=43987, loot={140327}, label="Kyrtos's Research Notes", note="Cave entrance @ 27.3, 72.9"},
    [27307290] = ns.path{quest=43987},
    [29271622] = {quest=43848, label=ns.CHEST},
    [29768817] = {quest=43748, loot={141655}, label="Shimmering Ancient Mana Cluster"},
    [31956249] = {quest=43831, label=ns.CHEST_SM},
    [32317708] = {quest=43834, label=ns.CHEST_SM, note="Inside the Lightbreaker, after quests; portal @ 31.0, 85.1"},
    [31008510] = ns.path{quest=43834},
    [35561209] = {quest=43989, loot={140329}, label="Arcane Power Unit"},
    [38138712] = {quest=43830, label=ns.CHEST_SM},
    [41961919] = {quest=43746, loot={139786}, label="Shimmering Ancient Mana Cluster"},
    [42051968] = {quest=43849, loot={139786}, label=ns.CHEST_GLIM},
    [42577668] = {quest=43870, label=ns.CHEST_SM, note="Upstairs"},
    [44053194] = {quest=43856, loot={139786}, label=ns.CHEST_GLIM, note="Cave entrance behind waterfall @ 42.2, 30.0"},
    [42203000] = ns.path{quest=43856},
    [44302289] = {quest=43850, label=ns.CHEST},
    [44387587] = {quest=43869, label=ns.CHEST_SM},
    [44803100] = {quest=43986, loot={140326}, label="Enchanted Burial Urn", note="Doesn't stand out much; by the bench, upper level"},
    [46552599] = {quest=43744, loot={141655}, label="Shimmering Ancient Mana Cluster"},
    [48117321] = {quest=43865, label=ns.CHEST_SM, note="Grapple to it"},
    [48143399] = {quest=43853, label=ns.CHEST_SM},
    [48288261] = {quest=43866, label=ns.CHEST_SM, note="Grapple from 48.4, 82.2"},
    [48408220] = grapple{quest=43866},
    [48297121] = {quest=44324, label=ns.CHEST, note="Upstairs"},
    [48587217] = {quest=44323, label=ns.CHEST, note="Upstairs"},
    [48957379] = {quest=43867, label=ns.CHEST, note="Upstairs"},
    [49988493] = {quest=43864, label=ns.CHEST_SM, note="Grapple from 50.0, 84.5"},
    [50008450] = grapple{quest=43864},
    [50068061] = {quest=44325, label=ns.CHEST, note="Upstairs"},
    [51503859] = {quest=43855, label=ns.CHEST_SM},
    [51908214] = {quest=43868, label=ns.CHEST},
    [52272989] = {quest=43854, label=ns.CHEST},
    [52733130] = {quest=40767, label="Dusty Coffer"},
    [49503390] = ns.path{quest={43854,40767}},
    [54326033] = {quest=43875, label=ns.CHEST},
    [55685480] = {quest=43871, label=ns.CHEST_SM},
    [57326039] = {quest=43873, label=ns.CHEST},
    [57686197] = {quest=43874, label=ns.CHEST},
    [60356851] = {quest=43876, loot={139786}, label=ns.CHEST_GLIM},
    [61365550] = {quest=43872, label=ns.CHEST},
    [63654911] = {quest=43857, label=ns.CHEST_SM},
    [65814191] = {quest=43743, loot={141655}, label="Shimmering Ancient Mana Cluster", note="At the back of the leyline cave"},
    [67315511] = {quest=43858, label=ns.CHEST},
    [71464975] = {quest=43859, label=ns.CHEST_SM},
    [76886150] = {quest=43860, label=ns.CHEST_SM, note="Underwater, in a sunken ship"},
    [79647289] = {quest=43741, loot={141655}, label="Shimmering Ancient Mana Cluster"},
    [81965745] = {quest=43861, label=ns.CHEST_SM, note="Entrance @ 79.3, 57.4"},
    [79305740] = ns.path{quest=43861},
    [83126933] = {quest=43863, label=ns.CHEST},
    [83975764] = {quest=43862, label=ns.CHEST},
}, {achievement=11260})

ns.RegisterPoints(682, { -- Felsoul Hold, Suramar ("SuramarLegionScar")
    [40502903] = {quest=40902, label=ns.CHEST_SM},
    [54573780] = {quest=43835, label=ns.CHEST_SM},
}, {achievement=11260})
ns.RegisterPoints(684, { -- Temple of Fal'adora, Suramar
    [35525280] = {quest=43988, loot={140328}, label="Volatile Leyline Crystal", note="Downstairs"},
    [38605414] = {quest=43838, label=ns.CHEST_SM, note="Downstairs"},
}, {achievement=11260})
ns.RegisterPoints(685, { -- Falanaar Tunnels, Suramar
    [58307020] = {quest=43840, label=ns.CHEST}, -- also triggered 43839
    [35513253] = {quest=43747, loot={141655}, label="Shimmering Ancient Mana Cluster"},
    [48644258] = {quest=43839, label=ns.CHEST_SM, note="Climb spiderweb"}, -- TODO: verify location
}, {achievement=11260})
ns.RegisterPoints(686, { -- Elor'shan
    [49301730] = {quest=43743, loot={141655}, label="Shimmering Ancient Mana Cluster"},
}, {achievement=11260})

-- Rares

-- Adventurer
ns.RegisterPoints(680, { -- Suramar
    [13555345] = {quest=44124, npc=112802, criteria=33371, loot={140949}}, -- Mar'tura
    [16552655] = {quest=43996, npc=103841, criteria=33348, loot={140401}}, -- Shadowquill
    [18606105] = {quest=43542, npc=110824, criteria=33360, loot={140399}}, -- Tideclaw
    [22155180] = {quest=41319, npc=99792, criteria=33342, loot={121806}}, -- Elfbane
    [24052540] = {quest=43484, npc=105547, criteria=33349, loot={121759}}, -- Rauren
    [24403515] = {quest=44071, npc=112497, criteria=33370, loot={139897}}, -- Maia the White Wolf
    [24554740] = {quest=43449, npc=110577, criteria=33357, loot={140388}}, -- Oreth the Vile
    [26104075] = {quest=42831, npc=109054, criteria=33352, loot={139926}}, -- Shal'an
    [27756545] = {quest=43992, npc=110832, criteria=33361, loot={121747}, note="Portal Key"}, -- Gorgroth
    [33705125] = {quest=43954, npc=111197, criteria=33365, loot={140934}}, -- Anax
    [33801510] = {quest=43717, npc=106351, criteria=33350, loot={140372}}, -- Artificer Lothaire
    [34156100] = {quest=43351, npc=110024, criteria=33354, loot={140386}}, -- Mal'Dreth the Corruptor
    [36203380] = {quest=43718, npc=111329, criteria=33366, loot={140390}}, -- Matron Hagatha
    [38052280] = {quest=43369, npc=110438, criteria=33356, loot={140406}}, -- Siegemaster Aedrin
    [40953280] = {quest=43358, npc=110340, criteria=33355, loot={121739}}, -- Myonix
    [42058005] = {quest=43348, npc=109954, criteria=33353, loot={140405}}, -- Magister Phaedris
    [42155640] = {quest=43580, npc=110870, criteria=33362, loot={121754}}, -- Apothecary Faldren
    [48055635] = {quest=40905, npc=102303, criteria=33372, loot={121735}}, -- Lieutenant Strathmar
    [49607900] = {quest=43603, npc=111007, criteria=33364, loot={140396}}, -- Randril
    [53203020] = {quest=40897, npc=99610, criteria=33341, loot={121755}}, -- Garvrulg
    [54455610] = {quest=43792, npc=111651, criteria=33368, loot={121808}}, -- Degren
    [54806375] = {quest=43794, npc=111649, criteria=33367, loot={139918}}, -- Ambassador D'vwinn
    [61005300] = {quest=43597, npc=110944, criteria=33363, loot={140404}, note="Wanders a bit"}, -- Guardian Thor'el
    [61653960] = {quest=43993, npc=103223, criteria=33346, loot={121737}}, -- Hertha Grimdottir
    [62506370] = {quest=43793, npc=111653, criteria=33369, loot={121810}}, -- Miasu
    [62554810] = {quest=43495, npc=110726, criteria=33359, loot={139969}}, -- Cadraeus
    [65555915] = {quest=43481, npc=110656, criteria=33358, loot={140403}}, -- Arcanist Lylandre
    [66656715] = {quest=43968, npc=107846, criteria=33351, loot={{140314, toy=true}}}, -- Pinchshank
    [67657105] = {quest=41136, npc=103214, criteria=33345, loot={140381}, note="Cave entrance @ 72.4, 68.1"}, -- Har'kess the Insatiable
    [72406810] = ns.path{quest=41136},
    [68155895] = {quest=41135, npc=100864, criteria=33343, loot={139952}, note="Cave entrance @ 69.9, 57.0"}, -- Cora'Kar
    [69905700] = ns.path{quest=41135},
    [75505730] = {quest=44003, npc=103575, criteria=33347, loot={121801}}, -- Reef Lord Raj'his
    [80157000] = {quest=40680, npc=103183, criteria=33344, loot={140019}, note="Wanders along the underwater trench"}, -- Rok'nash
}, {achievement=11265})

ns.RegisterPoints(680, { -- Suramar
    --[67065161] = {quest=99999, npc=, loot={1220}, note="marked as rare but seems to have no questID yet"}, -- Broodmother Shu'malis
    [35256725] = {quest=44675, npc=106526, criteria=333, loot={141866}}, -- Lady Rivantas
    [29405330] = {quest=44676, npc=113368, criteria=333, loot={138839}, note="Cave entrance @ 29.3, 50.7"}, -- Llorian
    [29305070] = ns.path{quest=44676},
    [87856250] = {quest=41786, npc=103827, criteria=333, loot={140384}}, -- King Morgalash
})
