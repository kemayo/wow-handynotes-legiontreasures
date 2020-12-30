local myname, ns = ...

local pebble = {quest=46952, loot={147420}, note="Show to Dog in your Draenor garrison", hide_before=30526, upcoming=false, atlas="islands-azeritechest",scale=1.2,}
ns.RegisterPoints(627, { -- Dalaran
    [28466450] = {quest=41929, loot={7676}, label="Desmond's Lockbox", note="Locked"},
    [47404120] = {quest=45365, loot={143534}, toy=true, note="On the table on the second floor of the Legerdemain Lounge", level=10},
    -- Dog pebble, questid is for showing Dog the pebble, not looting it
    [38102920] = pebble,
    [42104440] = pebble,
    [41005320] = pebble,
    [46205390] = pebble,
    [49406940] = pebble,
    [51706220] = pebble,
    [54505320] = pebble,
    [54304080] = pebble,
    [47702920] = pebble,
    [44601820] = pebble,
})
