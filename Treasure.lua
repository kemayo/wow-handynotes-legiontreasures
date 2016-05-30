local myname, ns = ...

local ORDER = 1220; -- order resources currency
local ARTIFACT = 'ARTIFACT'

ns.points = {
    --[[ structure:
    [mapFile] = { -- "_terrain1" etc will be stripped from attempts to fetch this
        [coord] = {
            label=[string], -- label: text that'll be the label, optional
            item=[id], -- itemid
            quest=[id], -- will be checked, for whether character already has it
            currency=[id], -- currencyid
            achievement=[id], -- will be shown in the tooltip
            junk=[bool], -- doesn't count for achievement
            npc=[id], -- related npc id, used to display names in tooltip
            note=[string], -- some text which might be helpful
        },
    },
    --]]
    ["Azsuna"] = {

    },
    ["Helheim"] = {

    },
    ["HighMountain"] = {

    },
    ["MardumtheShatteredAbyss"] = {

    },
    ["Stormheim"] = {
        [27335749] = {quest=38529, currency=ARTIFACT, label="Treasure Chest", note="Cave entrance @ 31.4, 57.1"},
        [31105600] = {quest=38676, currency=ORDER, label="Small Treasure Chest"},
        [32054719] = {quest=43196, currency=ARTIFACT, label="Treasure Chest"},
        [35735415] = {quest=38677, currency=ARTIFACT, item=140310, label="Treasure Chest"}, -- treasure chest on the wreck
        [41744604] = {quest=38488, currency=ARTIFACT, label="Small Treasure Chest"},
        [42616579] = {quest=38474, currency=ARTIFACT, label="Treasure Chest"},
        [46768040] = {quest=38481, currency=ARTIFACT, label="Treasure Chest", note="Requires: Stormforged Grapple Launcher"},
        [48137421] = {quest=38476, currency=ARTIFACT, label="Small Treasure Chest"},
        [50314100] = {quest=38483, currency=ARTIFACT, label="Small Treasure Chest"},
        [55004716] = {quest=40095, currency=ARTIFACT, label="Treasure Chest"},
        [57946321] = {quest=40090, currency=ARTIFACT, label="Small Treasure Chest"},
        [60834273] = {quest=40094, currency=ARTIFACT, label="Small Treasure Chest", note="Requires: Stormforged Grapple Launcher"},
        [61404440] = {quest=40093, currency=ARTIFACT, label="Small Treasure Chest"},
        [61836289] = {quest=40089, currency=ARTIFACT, label="Treasure Chest"},
        [67935774] = {quest=40083, currency=ARTIFACT, label="Small Treasure Chest"},
        [69144478] = {quest=38637, currency=ARTIFACT, label="Small Treasure Chest"},
        [73334150] = {quest=40085, currency=ARTIFACT, label="Small Treasure Chest"},
    },
    ["Suramar"] = {

    },
    ["ThunderTotem"] = {

    },
    ["ThunderTotemInterior"] = {

    },
    ["Valsharah"] = {

    },
    ["VaultOfTheWardensDH"] = {

    },
}
