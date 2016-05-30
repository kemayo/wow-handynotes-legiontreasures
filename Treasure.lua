local myname, ns = ...

ns.points = {
    --[[ structure:
    [mapFile] = { -- "_terrain1" etc will be stripped from attempts to fetch this
        [coord] = {
            label=[string], -- label: text that'll be the label, optional
            item=[id], -- itemid
            quest=[id], -- will be checked, for whether character already has it
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
        [35735415] = {quest=38677, item=140310, label="Treasure Chest"}, -- treasure chest on the wreck
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
