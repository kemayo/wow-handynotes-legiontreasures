local myname, ns = ...

local HandyNotes = LibStub("AceAddon-3.0"):GetAddon("HandyNotes")
local HL = LibStub("AceAddon-3.0"):NewAddon(myname, "AceEvent-3.0")
-- local L = LibStub("AceLocale-3.0"):GetLocale(myname, true)
ns.HL = HL

local debugf = tekDebug and tekDebug:GetFrame(myname:gsub("HandyNotes_", ""))
local function Debug(...) if debugf then debugf:AddMessage(string.join(", ", tostringall(...))) end end
ns.Debug = Debug

local next = next
local GameTooltip = GameTooltip
local WorldMapTooltip = WorldMapTooltip
local HandyNotes = HandyNotes
local GetItemInfo = GetItemInfo
local GetAchievementInfo = GetAchievementInfo
local GetAchievementCriteriaInfo = GetAchievementCriteriaInfo
local GetCurrencyInfo = GetCurrencyInfo

local ARTIFACT_LABEL = '|cffff8000' .. ARTIFACT_POWER .. '|r'

local cache_tooltip = CreateFrame("GameTooltip", "HNLegionTreasuresTooltip")
cache_tooltip:AddFontStrings(
    cache_tooltip:CreateFontString("$parentTextLeft1", nil, "GameTooltipText"),
    cache_tooltip:CreateFontString("$parentTextRight1", nil, "GameTooltipText")
)
local name_cache = {}
local function mob_name(id)
    if not name_cache[id] then
        -- this doesn't work with just clearlines and the setowner outside of this, and I'm not sure why
        cache_tooltip:SetOwner(WorldFrame, "ANCHOR_NONE")
        cache_tooltip:SetHyperlink(("unit:Creature-0-0-0-0-%d"):format(id))
        if cache_tooltip:IsShown() then
            name_cache[id] = HNLegionTreasuresTooltipTextLeft1:GetText()
        end
    end
    return name_cache[id]
end

local default_texture, npc_texture, follower_texture
local icon_cache = {}
local trimmed_icon = function(texture)
    if not icon_cache[texture] then
        icon_cache[texture] = {
            icon = texture,
            tCoordLeft = 0.1,
            tCoordRight = 0.9,
            tCoordTop = 0.1,
            tCoordBottom = 0.9,
        }
    end
    return icon_cache[texture]
end
local function work_out_label(point)
    local fallback
    if point.label then
        return point.label
    end
    if point.item then
        local _, link, _, _, _, _, _, _, _, texture = GetItemInfo(point.item)
        if link then
            return link
        end
        fallback = 'item:'..point.item
    end
    if point.npc then
        local name = mob_name(point.npc)
        if name then
            return name
        end
        fallback = 'npc:'..point.npc
    end
    if point.currency then
        if point.currency == 'ARTIFACT' then
            return ARTIFACT_LABEL
        end
        local name, _, texture = GetCurrencyInfo(point.currency)
        if name then
            return name
        end
    end
    return UNKNOWN
end
local function work_out_texture(point)
    if point.item and ns.db.icon_item then
        local texture = select(10, GetItemInfo(point.item))
        if texture then
            return trimmed_icon(texture)
        end
    end
    if point.currency then
        if point.currency == 'ARTIFACT' then
            local texture = select(10, GetAchievementInfo(11144))
            if texture then
                return trimmed_icon(texture)
            end
        else
            local texture = select(3, GetCurrencyInfo(point.currency))
            if texture then
                return trimmed_icon(texture)
            end
        end
    end
    if point.achievement then
        local texture = select(10, GetAchievementInfo(point.achievement))
        if texture then
            return trimmed_icon(texture)
        end
    end
    if point.follower then
        if not follower_texture then
            local texture, _, _, left, right, top, bottom = GetAtlasInfo("GreenCross")
            follower_texture = {
                icon = texture,
                tCoordLeft = left,
                tCoordRight = right,
                tCoordTop = top,
                tCoordBottom = bottom,
            }
        end
        return follower_texture
    end
    if point.npc then
        if not npc_texture then
            local texture, _, _, left, right, top, bottom = GetAtlasInfo("DungeonSkull")
            npc_texture = {
                icon = texture,
                tCoordLeft = left,
                tCoordRight = right,
                tCoordTop = top,
                tCoordBottom = bottom,
            }
        end
        return npc_texture
    end
    if not default_texture then
        local texture, _, _, left, right, top, bottom = GetAtlasInfo("VignetteLoot")
        default_texture = {
            icon = texture,
            tCoordLeft = left,
            tCoordRight = right,
            tCoordTop = top,
            tCoordBottom = bottom,
        }
    end
    return default_texture
end
local get_point_info = function(point)
    if point then
        local label = work_out_label(point)
        local icon = work_out_texture(point)
        local category = "treasure"
        if point.npc then
            category = "npc"
        elseif point.junk then
            category = "junk"
        end
        return label, icon, category, point.quest, point.faction
    end
end
local get_point_info_by_coord = function(mapFile, coord)
    mapFile = string.gsub(mapFile, "_terrain%d+$", "")
    return get_point_info(ns.points[mapFile] and ns.points[mapFile][coord])
end

local function handle_tooltip(tooltip, point)
    if point then
        -- major:
        if point.label then
            tooltip:AddLine(point.label)
        elseif point.item then
            if ns.db.tooltip_item or IsLeftShiftKeyDown() then
                tooltip:SetHyperlink(("item:%d"):format(point.item))
            else
                local link = select(2, GetItemInfo(point.item))
                tooltip:AddLine(link)
            end
        elseif point.follower then
            local follower = C_Garrison.GetFollowerInfo(point.follower)
            if follower then
                local quality = BAG_ITEM_QUALITY_COLORS[follower.quality]
                tooltip:AddLine(follower.name, quality.r, quality.g, quality.b)
                tooltip:AddDoubleLine(follower.className, UNIT_LEVEL_TEMPLATE:format(follower.level))
                tooltip:AddLine(REWARD_FOLLOWER, 0, 1, 0)
            else
                tooltip:AddLine(UNKNOWN, 1, 0, 0)
            end
        elseif point.npc then
            tooltip:SetHyperlink(("unit:Creature-0-0-0-0-%d"):format(point.npc))
        end

        if point.item and point.npc then
            tooltip:AddDoubleLine(CREATURE, mob_name(point.npc) or point.npc)
        end
        if point.currency then
            local name
            if point.currency == 'ARTIFACT' then
                name = ARTIFACT_LABEL
            else
                name = GetCurrencyInfo(point.currency)
            end
            tooltip:AddDoubleLine(CURRENCY, name or point.currency)
        end
        if point.achievement then
            local _, name = GetAchievementInfo(point.achievement)
            tooltip:AddDoubleLine(BATTLE_PET_SOURCE_6, name or point.achievement)
        end
        if point.note then
            tooltip:AddLine(point.note, nil, nil, nil, true)
        end
        if ns.db.tooltip_questid then
            tooltip:AddDoubleLine("QuestID", point.quest or UNKNOWN)
        end
    else
        tooltip:SetText(UNKNOWN)
    end
    tooltip:Show()
end
local handle_tooltip_by_coord = function(tooltip, mapFile, coord)
    mapFile = string.gsub(mapFile, "_terrain%d+$", "")
    return handle_tooltip(tooltip, ns.points[mapFile] and ns.points[mapFile][coord])
end

---------------------------------------------------------
-- Plugin Handlers to HandyNotes
local HLHandler = {}
local info = {}

function HLHandler:OnEnter(mapFile, coord)
    local tooltip = self:GetParent() == WorldMapButton and WorldMapTooltip or GameTooltip
    if ( self:GetCenter() > UIParent:GetCenter() ) then -- compare X coordinate
        tooltip:SetOwner(self, "ANCHOR_LEFT")
    else
        tooltip:SetOwner(self, "ANCHOR_RIGHT")
    end
    handle_tooltip_by_coord(tooltip, mapFile, coord)
end

local function createWaypoint(button, mapFile, coord)
    if TomTom then
        local mapId = HandyNotes:GetMapFiletoMapID(mapFile)
        local x, y = HandyNotes:getXY(coord)
        TomTom:AddMFWaypoint(mapId, nil, x, y, {
            title = get_point_info_by_coord(mapFile, coord),
            persistent = nil,
            minimap = true,
            world = true
        })
    end
end

local function hideNode(button, mapFile, coord)
    ns.hidden[mapFile][coord] = true
    HL:Refresh()
end

local function closeAllDropdowns()
    CloseDropDownMenus(1)
end

do
    local currentZone, currentCoord
    local function generateMenu(button, level)
        if (not level) then return end
        wipe(info)
        if (level == 1) then
            -- Create the title of the menu
            info.isTitle      = 1
            info.text         = "HandyNotes - " .. myname:gsub("HandyNotes_", "")
            info.notCheckable = 1
            UIDropDownMenu_AddButton(info, level)
            wipe(info)

            if TomTom then
                -- Waypoint menu item
                info.text = "Create waypoint"
                info.notCheckable = 1
                info.func = createWaypoint
                info.arg1 = currentZone
                info.arg2 = currentCoord
                UIDropDownMenu_AddButton(info, level)
                wipe(info)
            end

            -- Hide menu item
            info.text         = "Hide node"
            info.notCheckable = 1
            info.func         = hideNode
            info.arg1         = currentZone
            info.arg2         = currentCoord
            UIDropDownMenu_AddButton(info, level)
            wipe(info)

            -- Close menu item
            info.text         = "Close"
            info.func         = closeAllDropdowns
            info.notCheckable = 1
            UIDropDownMenu_AddButton(info, level)
            wipe(info)
        end
    end
    local HL_Dropdown = CreateFrame("Frame", myname.."DropdownMenu")
    HL_Dropdown.displayMode = "MENU"
    HL_Dropdown.initialize = generateMenu

    function HLHandler:OnClick(button, down, mapFile, coord)
        if button == "RightButton" and not down then
            currentZone = string.gsub(mapFile, "_terrain%d+$", "")
            currentCoord = coord
            ToggleDropDownMenu(1, nil, HL_Dropdown, self, 0, 0)
        end
    end
end

function HLHandler:OnLeave(mapFile, coord)
    if self:GetParent() == WorldMapButton then
        WorldMapTooltip:Hide()
    else
        GameTooltip:Hide()
    end
end

do
    -- This is a custom iterator we use to iterate over every node in a given zone
    local currentLevel, currentZone
    local function iter(t, prestate)
        if not t then return nil end
        local state, value = next(t, prestate)
        while state do -- Have we reached the end of this zone?
            if value and ns.should_show_point(state, value, currentZone, currentLevel) then
            -- Debug("iter step", state, icon, ns.db.icon_scale, ns.db.icon_alpha, category, quest)
                local label, icon = get_point_info(value)
                return state, nil, icon, ns.db.icon_scale, ns.db.icon_alpha
            end
            state, value = next(t, state) -- Get next data
        end
        return nil, nil, nil, nil
    end
    function HLHandler:GetNodes(mapFile, minimap, level)
        Debug("GetNodes", mapFile, minimap, level)
        currentLevel = level
        mapFile = string.gsub(mapFile, "_terrain%d+$", "")
        currentZone = mapFile
        return iter, ns.points[mapFile], nil
    end
end

---------------------------------------------------------
-- Addon initialization, enabling and disabling

function HL:OnInitialize()
    -- Set up our database
    self.db = LibStub("AceDB-3.0"):New(myname.."DB", ns.defaults)
    ns.db = self.db.profile
    ns.hidden = self.db.char.hidden
    -- Initialize our database with HandyNotes
    HandyNotes:RegisterPluginDB(myname:gsub("HandyNotes_", ""), HLHandler, ns.options)

    -- watch for LOOT_CLOSED
    self:RegisterEvent("LOOT_CLOSED")
end

function HL:Refresh()
    self:SendMessage("HandyNotes_NotifyUpdate", myname:gsub("HandyNotes_", ""))
end

function HL:LOOT_CLOSED()
    self:Refresh()
end
