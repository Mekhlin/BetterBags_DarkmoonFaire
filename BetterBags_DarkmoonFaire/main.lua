local addon = LibStub("AceAddon-3.0"):GetAddon("BetterBags")
local categories = addon:GetModule("Categories")
local categoryName = "Darkmoon Faire"

local darkmoonItems = {
    -- Artifacts
    71953, -- Fallen Adventurer's Journal
    71951, -- Banner of the Fallen
    71952, -- Captured Insignia
    71635, -- Imbued Crystal
    71636, -- Monstrous Egg
    71637, -- Mysterious Grimoire
    71638, -- Ornate Weapon
    71716, -- Soothsayer's Runes
    71715,  -- A Treatise on Strategy

    -- Cosmetics
    116052, -- Nobleman's Coat
    116133, -- Nobleman's Pantaloons
    116134, -- Noble's Fancy Boots
    116136, -- Noblewoman's Skirt
    116137  -- Noblewoman's Finery
}

categories:RegisterCategoryFunction("DarkmoonFaireCategoryFilter", function(data)
    for _, itemID in ipairs(darkmoonItems) do
        if itemID == data.itemInfo.itemID then
            return categoryName
        end
    end

    if data.itemInfo.itemName == nil then
        return nil
    end

    if string.find(data.itemInfo.itemName, "Darkmoon") then
        return categoryName
    end

	return nil
end)
