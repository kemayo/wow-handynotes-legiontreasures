# Changelog

## Changes in v40

* Show where using the Adept's Guide to Dimensional Rifting will take you each day

## Changes in v39

* A few minor Suramar data improvements
* Don't error when drawing an impossibly short route segment on the minimap, as could happen with some grapple points

## Changes in v38

* Bring in systems improvements from [my War Within plugin](https://www.curseforge.com/wow/addons/handynotes-war-within), notably:
    * You can click on points to highlight them and their related points and routes
    * Better pre-caching of data so that the first time you open the map it's less likely to be missing transmog information
    * Lootless NPCs will no longer show with the only-transmog-available color
    * Tightened up the wording of the right-click menu
    * Fixed a bug when mousing over some of the Blizzard provided world map vignettes that I'm adding loot to

## Changes in v37

* Bring in systems improvements from [my War Within plugin](https://www.curseforge.com/wow/addons/handynotes-war-within), notably:
    * Redesign of the settings and menus
    * Filters for rares and treasure so you can choose to show only "notable" ones, which you can configure
    * Color the rare icons to show whether they've got any of those notable things on them -- purple for unknown transmog, blue for more exclusive things
    * Setting for whether to track transmog by shared appearance, or from the specific item (the previous behavior)
    * Support for MapPinEnhanced when setting waypoints

## Changes in v36

Consolidate data from my other Legion-related HandyNotes plugins to here:
* Higher Dimensional Learning
* Kosumoth
* Long Forgotten Hippogryph
* Suramar Leylines
* Suramar Telemancy
* Withered Army Training

## Changes in v35

* Update for 11.0.0
* Minor data improvements on Argus

## Changes in v34

* Update for 10.2.0
* Fix Matron Foluna's areaPOI
* Bring in updates to the handler code from [HandyNotes: Dragonflight Treasures](https://www.curseforge.com/wow/addons/handynotes-dragonflight-treasures):
    * Avoid some possible tooltip errors with other addons
    * Minimap routes should respect display settings
    * New config "only show notable NPCs": enable and rares will only be shown if they've got something for you (achievements or transmogs)

## Changes in v33

* Update for 10.0.5
* Add the Argus world bosses
* Desmond's Lockbox in Dalaran should be restricted to Rogues
* Prevent errors from incompletely-updated tooltip addons

## Changes in v32

* Add the locations for the Anomalous Animals of Argus achievement
* Bring in updates to the handler code from [HandyNotes: Dragonflight Treasures](https://www.curseforge.com/wow/addons/handynotes-dragonflight-treasures):
    * Avoid some unusual errors when checking achievement criteria
    * Use Blizzard waypoints if they're available and TomTom isn't installed
    * New menu item: make a waypoint for all related points
    * Routes can now appear on the minimap

## Changes in v31

* Updated for 10.0.2

## Changes in v30.1

* Fix an error with GetPlayerAuraBySpellID

## Changes in v30

* Updated for 10.0.0

## Changes in v29

* Use LibUIDropDownMenu-4.0 to avoid the taint mess of UIDropDownMenu
* Just use the TOC title for the tooltips
* Show a tooltip on the map icon
* Don't create the point dropdown until it's needed
* Label for criteria=true case should show achievement name

## Changes in v28

* Updated for 9.2.7

## Changes in v27

* Some cosmetic items were incorrectly saying they wouldn't drop for anyone

## Changes in v26
* Updated for 9.2.5, fixing errors about C_TransmogCollection
* Bring in updates to the handler code from [HandyNotes: Shadowlands Treasures](https://www.curseforge.com/wow/addons/handynotes-shadowlands-treasures):
    * Better labels for tooltip loot, showing item types
    * Option for loot only for your current character
    * Show more information about loading-items in tooltips if possible
    * Register the overlay in Krowi_WorldMapButtons-1.3 if it's present
    * Include Taintless

## Changes in v25
* Fixed a few Argus points, made them show on the minimap
* Bring in updates to the handler code from [HandyNotes: Shadowlands Treasures](https://www.curseforge.com/wow/addons/handynotes-shadowlands-treasures):
    * Paths will now highlight their associated route when you mouse over them
    * Minor performance improvement: code checking whether you could learn an appearance from an item wasn't caching negative results and so was running more than it needed to
    * You can hide all points related to an achievement from the right-click menu

## Changes in v24
* Pull in a lot of handler changes from [HandyNotes: Shadowlands Treasures](https://www.curseforge.com/wow/addons/handynotes-shadowlands-treasures)
* Add missed loot and fix a few loot errors (mostly legendaries that had crept in)
* Add some missed rares to Antoran Wastes, and mark Orix the All-Seer
* Two of the Marius and Tehd encounters in Azsuna had the wrong achievement criteria

## Changes in v23
* Update for 9.2

## Changes in v22
* Update for 9.1
* Datamined for missing drops

## Changes in v21
* Added a bunch of missing achievement data, mostly around rares
* Pick up fixes and improvements from [HandyNotes: Shadowlands Treasures](https://www.curseforge.com/wow/addons/handynotes-shadowlands-treasures):
    * Treasures/Rares which drop collectable loot can be told to count as complete if you've got their drop
    * Treasures/Rares which are part of an achievement can be told to count as complete if you've got the achievement, regardless of their quest status
    * Changed how tooltips anchor on the map

## Changes in v20
* Made dog's pebble in Dalaran less obtrusive
* Pick up fixes and improvements from [HandyNotes: Shadowlands Treasures](https://www.curseforge.com/wow/addons/handynotes-shadowlands-treasures):
    * You can now toggle off the button on the world map

## Changes in v19
* Pick up fixes and improvements from [HandyNotes: Shadowlands Treasures](https://www.curseforge.com/wow/addons/handynotes-shadowlands-treasures)

## Changes in v18
* Bumped TOC for 9.0.2
* Options for showing/hiding points in particular zones
* Optimize some checks by using GetPlayerAuraBySpellID

## Changes in v17
* Updated for Shadowlands

## Changes in v16
* Migrate to the new uiMapId system finally; fixes various areas which were showing icons on the wrong level of a map
* Clean up some Demon Hunter starting experience treasures

## Changes in v15
* Updated for 8.1.5's tooltip changes.

## Changes in v14

* Flagged all the non-achievement Argus treasure chests as junk, and hid them by default
* New config options: show/hide icons on the world map or minimap, and show/hide treasure
* Achievement criteria based labels display better
* Fixed some world map tooltip issues
* Fixed TomTom right click integration

## Changed in v13

* Updated for 8.0.1
* Left-click on rares to open up the group finder searching for them by name (thanks znf)
* Many more treasures in Argus (thanks znf)
* Missing from Azsuna
* You know what, Broken Shore too. Bit out of order, but there we go.

## Changed in v12

* TOC for 7.3
* Rares on Argus, still mostly missing treasures
* Include Dog's pebble in Dalaran, if you've done the quests to have Dog available in your garrison
* Missing chest in Val'sharah
* Missing chest in Highmountain

## Changed in v11

* TOC for 7.2
* Added the Wand of Simulated Life in Dalaran
* Added post-Snowblind battle treasure in Highmountain
* Darkpens treasures were mixed up
* Watchman's Rock chest in Stormheim explained better

## Changed in v10

* Don't show minimap icons if you have the treasure map buff for that zone active.
* Missing items in Val'sharah and Azsuna.
* Missing rare in Azsuna: The Muscle.

## Changed in v9

* TOC for 7.1.
* Include Emerald Winds, even though it's not technically a treasure.
* Some helpful notes clarifying positions.
* Missing Suramar treasure.

## Changed in v8

* Added more treasures to Suramar.
* More entrances in Highmountain, also finally all the parts of the slow fall toy.
* Fixed some treasures in Val'sharah, and noted some places where phasing requirements exist.
* Fixed the Temple of Fal'adora marker on the Suramar surface so it won't vanish until you've gotten both the treasures below it.

## Changed in v7

* Tweaked the rare icon size.
* Highmountain got a number of cave entrances marked.
* Added more notes / fixes. (Thanks to: LaoTseu, Victaliaa. Ssateneth, DKong27)

## Changed in v6

* Added rares to all zones, because I got tired of people complaining and it's not like I don't have the dataset available from [SilverDragon](https://mods.curse.com/addons/WoW/silver-dragon).
* Added more Highmountain grapple points.
* Made grapple point icon more visible.

## Changed in v5

* Show item previews in an attached tooltip rather than squeezing them into the main tooltip.
* Change the item-icon setting default to false, and have it affect achievement icons and currency icons as well. Makes for a more legible map, on the whole.
* Given their rarity in this expansion, give nodes with an actual item a special icon.
* Separate nodes added for cave entrances / grapple points leading to treasures.
* Fixes in Stormheim.

## Changed in v4

* Fixes to treasures in Azsuna, Val'sharah, and Stormheim.
* Debug option for bug reporters: "show quest id".

## Changed in v3

* Lots of new treasures in: Stormheim, Suramar
* A few missing treasures in: Azsuna, Highmountain, Val'sharah
* Fixed Demon Hunter starting vault treasures to only display on the correct floors.

## Changed in v2

* Fix the default icons, since Blizzard changed ObjectIconsAtlas around.

## Changed in v1

* Initial dataset: limited coverage of all Legion zones.
* Special handling for artifact-power as a fake currency, rather than just adding in a random power item.

## Changed in v0.1

* Initial framework for display.
