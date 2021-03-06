local ITEM = Clockwork.item:New("blueprint_base");

ITEM.name = "Shotgun Blueprint";
ITEM.model = "models/weapons/w_shotgun.mdl";
ITEM.weight = 0.8;

ITEM.category = "Weapon Blueprints"
ITEM.crafting = true;
ITEM.description = "Requirements: \nx1 Broken Shotgun \nx2 Refined Metal \nx1 Box of Screws \nx1 Screw Driver";

-- A function to check for the required materials for a craft.
function ITEM:HasMaterials(player)
	return (
		player:HasItemByID("broken_shotgun") and
		player:HasItemByID("refined_metal") and (table.Count(player:GetItemsByID("refined_metal")) >= 2) and
		player:HasItemByID("box_of_screws") and
		player:HasItemByID("screw_driver")
	)
end;

-- A function to take the required materials for a craft.
function ITEM:TakeMaterials(player)
	return (
		player:TakeItem(player:FindItemByID("broken_shotgun")) and
		player:TakeItem(player:FindItemByID("refined_metal")) and
		player:TakeItem(player:FindItemByID("refined_metal")) and
		player:TakeItem(player:FindItemByID("box_of_screws"))
	)
end;

-- A function to give a player a crafted item.
function ITEM:GiveCraft(player)
	return (
		player:GiveItem(Clockwork.item:CreateInstance("weapon_shotgun"))
	)
end;

ITEM:Register();