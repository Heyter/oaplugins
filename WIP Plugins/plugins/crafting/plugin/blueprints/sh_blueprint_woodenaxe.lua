/**
local ITEM = Clockwork.item:New("blueprint_base");

ITEM.name = "Wooden Axe Blueprint";
ITEM.model = "";
ITEM.weight = 1.5;

ITEM.category = "Weapons"
ITEM.crafting = true;
ITEM.description = "Requirements: \nx1 Wooden Pole \nx1 Refined Metal";

-- A function to check for the required materials for a craft.
function ITEM:HasMaterials(player)
	return (
		player:HasItemByID("Wooden pole") and
		player:HasItemByID("Refined metal")
	)
end;

-- A function to take the required materials for a craft.
function ITEM:TakeMaterials(player)
	return (
		player:TakeItem(player:FindItemByID("wooden_pole")) and
		player:TakeItem(player:FindItemByID("refined_metal"))
	)
end;

-- A function to give a player a crafted item.
function ITEM:GiveCraft(player)
	return (
		player:GiveItem(Clockwork.item:CreateInstance("wooden_axe"))
	)
end;

ITEM:Register();
**/