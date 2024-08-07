local myname, ns = ...

local KOSUMOTH = {
    group="kosumoth",
    minimap=true,
}

local function texCoordInGrid(W, H, n, cropx, cropy)
    cropx = cropx or 0
    cropy = cropy or cropx
    local xgrid = 1/W
    local ygrid = 1/H
    local x = math.fmod(n, W) - 1
    local y = math.floor(n / W)
    local xcrop, ycrop = xgrid * cropx, ygrid * cropy
    return
        (x * xgrid) + xcrop, -- left
        ((x + 1) * xgrid) - xcrop, -- right
        (y * ygrid) + ycrop, -- top
        ((y + 1) * ygrid) - ycrop -- bottom
end

local orb = function(quest, previousquest, number, note)
    local point = {
        quest=quest,
        hide_before=ns.conditions.QuestComplete(previousquest),
    }
    -- 1-31 UI-HUD-Calendar-[num]-Mouseover (1-31)
    -- 1-25 INTERFACE/WorldMap/UI-QuestPoi-NumberIcons (1-25)
    -- 0-9 INTERFACE/Timer/BigTimerNumbers
    -- 0-9 CounterBar_GetNumberCoord + INTERFACE/UNITPOWERBARALT/MoguGold_Counter_Numbers (also Material, Alliance, Horde, Darkmoon)
    -- if number < 10 then
    --     point.texture = ns.atlas_texture("services-number-" .. number, nil, 0.25)
    -- else
    --     point.texture = ns.atlas_texture("UI-HUD-Calendar-" .. number .. "-Mouseover", nil, 0.25)
    -- end

    -- 8x4 grid in the bottom-half of the texture, 1-8, 9-16, 17-24, 25 and some circles
    local l, r, t, b = texCoordInGrid(8, 8, number, 0.33)
    point.texture = {
        icon = [[Interface/WorldMap/UI-QuestPoi-NumberIcons]],
        tCoordLeft = l, tCoordRight = r,
        tCoordTop = 0.5 + t, tCoordBottom = 0.5 + b,
        r = 1, g = 0.5, b = 1,
    }
    point.scale = 1.3

    -- local l, r, t, b = texCoordInGrid(4, 3, number + 1, 0.2, 0)
    -- point.texture = {
    --     icon = [[INTERFACE/Timer/BigTimerNumbers]],
    --     tCoordLeft = l, tCoordRight = r, tCoordTop = t, tCoordBottom = b,
    -- }
    -- point.scale = 1.2

    -- -- local l, r, t, b = CounterBar_GetNumberCoord(math.fmod(number, 10))
    -- local l, r, t, b = texCoordInGrid(8, 2, math.fmod(number + 1, 10), -0.1, 0)
    -- point.texture = {
    --     icon = [[INTERFACE/UNITPOWERBARALT/Alliance_Counter_Numbers]],
    --     tCoordLeft = l, tCoordRight = r, tCoordTop = t, tCoordBottom = b,
    -- }
    -- point.scale = 1.2

    point.label = "Orb " .. number
    point.note = note

    return point
end

ns.RegisterPoints(619, { -- Broken Isles overview
    -- broken shore
    [49507310] = orb(43733, 43732, 4),
    [50207160] = orb(43761, 43760, 10),
    -- azsuna
    [31105470] = orb(43730, 43728, 1),
    [37604760] = orb(43734, 43733, 5),
    [36605190] = orb(43737, 43736, 8),
    -- stormheim
    [53804290] = orb(43731, 43730, 2),
    [67261490] = orb(43735, 43734, 6, "Underwater cave, near a shark"),
    -- valsharah
    [31404110] = orb(43732, 43731, 3),
    -- highmountain
    [49301530] = orb(43736, 43735, 7),
    -- eye of azshara
    [49209070] = orb(43760, 43737, 9),
}, KOSUMOTH)
ns.RegisterPoints(646, { -- BrokenShore
    -- Drak'thul, talking to him first triggers 43715, subsequent dialogs trigger 43725, 43757, 43729, 43728, then we have to go away
    [37007100] = {
        quest=43715,
        label="{npc:102695:Drak'thul}",
        note="Talk to him until he tells you to go away",
        atlas="quest-important-available",
    },
    [37017101] = {
        quest=43728,
        hide_before=ns.conditions.QuestComplete(43715),
        label="{npc:102695:Drak'thul}",
        note="Now go get the Weathered Relic, then talk to him again until he tells you to go away. Once he does, go find the 10 orbs across the Broken Isles, in order from 1 to 10.",
        atlas="quest-important-available",
        route={37017101, 58545405},
    },
    [58545405] = {
        quest=43725, -- questid is for talking to DT after you have it
        label="Cave for Weathered Relic",
        hide_before=ns.conditions.QuestComplete(43715),
        atlas="FlightMaster_Cave-Taxi_Frame_Gray",
        loot={139783}, -- Weathered Relic
        route=37017101,
    },
    [29167857] = orb(43733, 43732, 4),
    [37057105] = orb(43761, 43760, 10),
}, KOSUMOTH)
ns.RegisterPoints(630, { -- Azsuna
    [37963741] = orb(43730, 43728, 1),
    [59371313] = orb(43734, 43733, 5),
    [54022618] = orb(43737, 43736, 8),
}, KOSUMOTH)
ns.RegisterPoints(634, { -- Stormheim
    [32927590] = orb(43731, 43730, 2),
    [76000300] = orb(43735, 43734, 6, "Swim north from here..."),
}, KOSUMOTH)
ns.RegisterPoints(680, { -- Suramar
    [63603250] = orb(43731, 43730, 2),
}, KOSUMOTH)
ns.RegisterPoints(641, { -- Val'sharah
    [41518118] = orb(43732, 43731, 3),
}, KOSUMOTH)
ns.RegisterPoints(650, { -- Highmountain
    [55843847] = orb(43736, 43735, 7),
}, KOSUMOTH)
ns.RegisterPoints(790, { -- Eye of Azshara
    [79528931] = orb(43760, 43737, 9),
    [46005200] = { -- Kosumoth
        quest=45479,
        npc=111573,
        hide_before=ns.conditions.QuestComplete(43761),
        loot={
            {138201, mount=838}, -- Fathom Dweller
            {140261, pet=1926}, -- Hungering Claw
        },
        note="Loot is from the world quest, which cycles between rewards every two weeks",
        parent=true,
    },
}, KOSUMOTH)
