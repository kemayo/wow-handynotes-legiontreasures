local myname, ns = ...

-- Higher Dimensional Learning

ns.RegisterPoints(630, { -- Azsuna
    [68115116] = { criteria=32196, hide_before=ns.conditions.DayOfWeek(0), }, -- ch 1, Sunday
    [55257153] = { criteria=32197, hide_before=ns.conditions.DayOfWeek(1), note="On top of the tower, have fun with that", }, -- ch 2, Monday
    [33371118] = { criteria=32198, hide_before=ns.conditions.DayOfWeek(2), }, -- ch 3, Tuesday
    [58351229] = { criteria=32199, hide_before=ns.conditions.DayOfWeek(3), note="Portal @ 58.72, 14.17", }, -- ch 4, Wednesday
    [53142199] = { criteria=32200, hide_before=ns.conditions.DayOfWeek(4), note="Path @ 52.00, 17.63", }, -- ch 5, Thursday
    [61114626] = { criteria=32201, hide_before=ns.conditions.DayOfWeek(5), }, -- ch 6, Friday
    [55674820] = { criteria=32202, hide_before=ns.conditions.DayOfWeek(6), note="On top of the tower, have fun with that", }, -- ch 7, Saturday
}, {
    achievement=11175,
    atlas="minortalents-icon-book",
    scale=1.2,
})

local RIFT = {
    label="{spell:223805:Advanced Dimensional Rifting} destination",
    note="Use your {item:140493:Adept's Guide to Dimensional Rifting} to be teleported here",
    scale=1.2,
    atlas="MagePortalAlliance",
    requires=ns.conditions.Achievement(11175, false, true),
    parent=true,
    group="riftportals",
}

ns.RegisterPoints(ns.ANTORANWASTES, {
    [65314323] = { hide_before=ns.conditions.DayOfWeek(0), }, -- Sunday
}, RIFT)
ns.RegisterPoints(ns.VALSHARAH, {
    [59205382] = { hide_before=ns.conditions.DayOfWeek(1), }, -- Monday
}, RIFT)
ns.RegisterPoints(ns.SURAMAR, {
    [50626620] = { hide_before=ns.conditions.DayOfWeek(2), }, -- Tuesday
}, RIFT)
ns.RegisterPoints(ns.AZSUNA, {
    [35107126] = { hide_before=ns.conditions.DayOfWeek(3), }, -- Wednesday
}, RIFT)
ns.RegisterPoints(ns.HIGHMOUNTAIN, {
    [49925965] = { hide_before=ns.conditions.DayOfWeek(4), }, -- Thursday
}, RIFT)
ns.RegisterPoints(ns.STORMHEIM, {
    [54476108] = { hide_before=ns.conditions.DayOfWeek(5), }, -- Friday
}, RIFT)
ns.RegisterPoints(ns.BROKENSHORE, {
    [61902980] = { hide_before=ns.conditions.DayOfWeek(6), }, -- Saturday
}, RIFT)
