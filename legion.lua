local myname, ns = ...

ns.DALARAN = 627
ns.AZSUNA = 630
ns.STORMHEIM = 634
ns.VALSHARAH = 641
ns.BROKENSHORE = 646
ns.HIGHMOUNTAIN = 650
ns.SURAMAR = 680
ns.KROKUUN = 830
ns.ANTORANWASTES = 885
ns.EREDATH = 882

ns.CHEST = 'Treasure Chest'
ns.CHEST_SM = 'Small Treasure Chest'
ns.CHEST_GLIM = 'Glimmering Treasure Chest'

ns.hiddenConfig = {
    groupsHiddenByZone = true,
}

ns.defaultsOverride = {
    show_on_minimap = true,
    groupsHidden = {junk=true, hippogryph=true,},
}

ns.groups["junk"] = "Junk"
ns.groups["hippogryph"] = "{spell:215159:Long Forgotten Hippogryph}"
ns.groups["withered"] = "{questname:43943:Withered Army Training}"
ns.groups["kosumoth"] = "{npc:111573:Kosumoth}"
ns.groups["riftportals"] = "{spell:223805:Advanced Dimensional Rifting}"
