local myname, ns = ...

ns.map_spellids[630] = 182958

ns.RegisterPoints(630, { -- Azsuna
    [26254713] = {quest=44105, label=ns.CHEST_SM},
    [34583556] = {quest=44102, label=ns.CHEST_SM},
    [40575767] = {quest=38316, label=ns.CHEST},
    [41393075] = {quest=42292, label=ns.CHEST},
    [42600810] = {quest=38367, label=ns.CHEST_GLIM},
    [43402243] = {quest=42297, label=ns.CHEST_GLIM},
    [44473946] = {quest=37713, label=ns.CHEST_SM},
    [47860773] = {quest=42295, label=ns.CHEST_SM},
    [49384536] = {quest=37828, loot={122681}, label=ns.CHEST},
    [49415800] = {quest=38370, loot={141882}, label=ns.CHEST},
    [49653448] = {quest=37831, label=ns.CHEST_SM},
    [50215029] = {quest=42290, label=ns.CHEST_SM},
    [51502430] = {quest=42289, label=ns.CHEST, note="Leyhollow cave entrance @ 47.8, 23.7"},
    [47802370] = ns.path{quest=42289},
    [52004210] = {quest=42281, label=ns.CHEST_SM},
    [52842059] = {quest=42339, label=ns.CHEST, note="Cave entrance @ 53.9, 22.4; don't wake up the bears"},
    [53902240] = ns.path{quest=42339},
    [53033726] = {quest=37596, label=ns.CHEST_SM},
    [53176444] = {quest=37829, label=ns.CHEST},
    [53504545] = {quest=42283, label=ns.CHEST_SM},
    [53611813] = {quest=44104, label=ns.CHEST_SM},
    [53684396] = {quest=42282, label=ns.CHEST_SM},
    [53834053] = {quest=42284, label=ns.CHEST_SM, note="Inside the Academy"},
    [54313633] = {quest=42287, label=ns.CHEST_SM},
    [54403490] = {quest=42285, label=ns.CHEST_SM, note="Inside the Academy"},
    [54875214] = {quest=44405, label=ns.CHEST_SM},
    [55310505] = {quest=38389, label=ns.CHEST_SM},
    [55362774] = {quest=42288, label=ns.CHEST_SM},
    [55621855] = {quest=40711, label=ns.CHEST, note="Ley Portal inside tower"},
    [55905690] = {quest=38365, label="Disputed Treasure"},
    [56443481] = {quest=38251, loot={132950}, label=ns.CHEST},
    [56892499] = {quest=42338, label=ns.CHEST_SM, note="Cave entrance @ 55.7, 25.4"},
    [55702540] = ns.path{quest=42338},
    [57153106] = {quest=38419, label=ns.CHEST},
    [57901220] = {quest=37958, label=ns.CHEST},
    [58364378] = {quest=37830, label=ns.CHEST_GLIM},
    [58381229] = {quest=37980, label=ns.CHEST, note="Ley Portal @ 58.7, 14.1"},
    [58701410] = ns.path{quest=37980, label="Ley Portal", atlas="MagePortalAlliance"},
    [58645340] = {quest=40752, label=ns.CHEST_SM},
    [59876316] = {quest=42272, label=ns.CHEST_SM},
    [62405840] = {quest=42273, label=ns.CHEST_SM},
    [62814479] = {quest=42294, label=ns.CHEST_SM},
    [63005420] = {quest=42278, label=ns.CHEST_SM, note="Cave entrance @ 64.0, 52.9"},
    [64005290] = ns.path{quest=42278},
    [63231521] = {quest=37832, label=ns.CHEST},
    [63653919] = {quest=42293, label=ns.CHEST_SM},
    [65066978] = {quest=38239, loot={129070}, label="Seemingly Unguarded Treasure", note="Seemingly..."},
    [65462961] = {quest=42958, label=ns.CHEST_SM},
    [66064345] = {quest=40751, label=ns.CHEST_SM},
    [68872973] = {quest=44103, label=ns.CHEST_SM, note="Underwater cave, entrance is on east side of cliff"},
}, {achievement=11256})

ns.RegisterPoints(631, { -- NarthalasAcademy, Azsuna
    [62458451] = {quest=42284, label=ns.CHEST_SM},
    [71212211] = {quest=42285, label=ns.CHEST_SM, note="Door opens after you finish nearby quests"},
}, {achievement=11256})

ns.RegisterPoints(632, { -- OceanusCove, Azsuna
    [69294839] = {quest=37649, label=ns.CHEST_GLIM},
    [45346686] = {quest=42291, label=ns.CHEST_SM},
}, {achievement=11256})

-- Rares

-- Adventurer
ns.RegisterPoints(630, { -- Azsuna
    [28205200] = {quest=42376, npc=107269, criteria=33374, loot={141874}}, -- Inquisitor Tivos
    [32302970] = {quest=38238, npc=91187, criteria=33268, loot={129067}, note="Patrols the beach"}, -- Beacher
    [32604880] = {quest=44108, npc=109504, criteria=33271, loot={129075}}, -- Ragemaw
    [34953390] = {quest=42505, npc=107657, criteria=33372, loot={141868}, note="Walks around the pool"}, -- Arcanist Shal'iman
    [35305030] = {quest=38037, npc=90803, criteria=33264, loot={129083}, note="Cache of Infernals"}, -- Infernal Lord
    [37404320] = {quest=42280, npc=107113, criteria=33374, loot={141875}}, -- Vorthax
    [41054180] = {quest=37537, npc=89016, criteria=33377, loot={129080}}, -- Ravyn-Drath
    [43152815] = {quest=38352, npc=91579, criteria=33402, loot={129056}}, -- Doomlord Kazrok
    [43532458] = {quest=42069, npc=105938, criteria=33401, loot={129087}}, -- Felwing
    [45305780] = {quest=37824, npc=89884, criteria=33258, loot={129090}}, -- Flog the Captain-Eater
    [47203420] = {quest=37726, npc=89650, criteria=33248, loot={129082}}, -- Valiyaka the Stormbringer
    [49105520] = {quest=37909, npc=90164, criteria=33260, loot={129069}, note="Patrols the road"}, -- Warbringer Mox'na (seek and destroy squad)
    [49500880] = {quest=37928, npc=90217, criteria=33261, loot={129061}}, -- Normantis the Deposed
    [50003440] = {quest=37823, npc=89865, criteria=33257, loot={129072}}, -- Mrrgrl the Tidereaver
    [50803160] = {quest=37869, npc=90057, criteria=33259, loot={129084}}, -- Daggerbeak
    [53404400] = {quest=37821, npc=89846, criteria=33250, loot={129066}}, -- Captain Volo'ren
    [55104590] = {quest=42450, npc=107127, criteria=33270, loot={129086}}, -- Brawlgoth
    [56102905] = {quest=38061, npc=90901, criteria=33265, loot={138395}}, -- Pridelord Meowl
    [59304630] = {quest=38212, npc=91100, criteria=33403, loot={129068}, note="Top of the mountain"}, -- Brogozog
    [59601230] = {quest=37932, npc=90244, criteria=33262, loot={129085}, note="Unbound rift"}, -- Arcavellus
    [59705520] = {quest=37822, npc=89850, criteria=33251, loot={129065}}, -- The Oracle
    [61306200] = {quest=38217, npc=91113, criteria=33267, loot={129062}}, -- Tide Behemoth
    [65164000] = {quest=37820, npc=89816, criteria=33249, loot={129091}, note="Horn of the Siren"}, -- Golza the Iron Fin
    [65555680] = {quest=42221, npc=106990, criteria=33269, loot={129073}}, -- Chief Bitterbrine
    [67105140] = {quest=37989, npc=90505, criteria=33263, loot={129064}}, -- Syphonus
    [50465211] = {quest=44081, npc=112636, criteria=33272, loot={140685}, note="Ley Portal @ 60.3, 46.3; kill the stallions"},
    [60304630] = ns.path{quest=44081, criteria=33272, label="Ley Portal", atlas="MagePortalAlliance"},
}, {achievement=11261})

ns.RegisterPoints(630, { -- Azsuna
    [29255365] = {quest=42417, npc=107327, loot={129079}}, -- Bilebrain
    [30784800] = {quest=42286, npc=107136, loot={141873}}, -- Houndmaster Stroxis
    [33404120] = {quest=44670, npc=107105, loot={141869}}, -- Broodmother Lizax
    [52402305] = {quest=38268, npc=91289, loot={129063}}, -- Cailyn Paledoom
    [55476980] = {quest=42699, npc=108255, loot={141877}}, -- Coura, Mistress of Arcana
    [58517882] = {quest=44671, npc=108136, loot={129081}}, -- The Muscle
})
ns.RegisterPoints(633, { -- TempleofaThousandLights
    [62303090] = {quest=42699, npc=108255, loot={141877}}, -- Coura, Mistress of Arcana
})
