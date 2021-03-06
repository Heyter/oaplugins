local PLUGIN = PLUGIN;

-- Called when screen space effects should be rendered.
function PLUGIN:RenderScreenspaceEffects()
	local nvActive = Clockwork.Client:GetSharedVar("nvActive");
	local modulation = {1, 1, 1};
	
	if (nvActive) then
		modulation = {0, 1, 0};
		
		local colorModify = {};
			colorModify["$pp_colour_brightness"] = 0.1;
			colorModify["$pp_colour_contrast"] = 0.9;
			colorModify["$pp_colour_colour"] = 0.1;
			colorModify["$pp_colour_addr"] = -0.05;
			colorModify["$pp_colour_addg"] = 0.1;
			colorModify["$pp_colour_addb"] = -0.05;
			colorModify["$pp_colour_mulr"] = 0;
			colorModify["$pp_colour_mulg"] = 5;
			colorModify["$pp_colour_mulb"] = 0;
		DrawColorModify(colorModify);
	end;
end;