---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Zoë.
--- DateTime: 08/04/2022 16:19
---

local events

function events:ADDON_LOADED(AddonName)
    if AddonName == "SFOShouts" then
        print("SFOShouts Loaded");
    end
end

function events:PLAYER_REGEN_DISABLED()
    SFOShouts.utils.wait(0.01, pcall, SFOShouts.Frame.utils.getDetails);
    SFOShouts.utils.wait(0.01, pcall, SFOShouts.Frame.utils.getSkada);
    SFOShouts.utils.wait(0.02, SFOShouts.utils.changeMacro);
end

function events:PLAYER_REGEN_ENABLED()
    SFOShouts.currentBoss = "None";
end

SFOShouts.Frame:SetScript(
        "OnEvent",
        function(self, event, ...)
            events[event](self, ...);
        end
);

for event, _ in pairs(events) do
    SFOShouts.Frame:RegisterEvent(event);
end

SFOShouts.events = events;