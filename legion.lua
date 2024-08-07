local myname, ns = ...

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
