local ITEM = Clockwork.item:New();

ITEM.name = "Broken Shotgun";
ITEM.value = "Valuable";
ITEM.model = "models/weapons/w_shotgun.mdl";
ITEM.weight = 4;
ITEM.category = "Materials";
ITEM.description = "A small pistol coated in a dull grey.";

-- Called when a player drops the item.
function ITEM:OnDrop(player, position) end;

ITEM:Register();