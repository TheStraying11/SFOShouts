---
--- Generated by EmmyLua(https://github.com/EmmyLua)
--- Created by Zoë.
--- DateTime: 08/04/2022 16:21
---

local macros = {};

function macros.None(cmd)
    print("[SFOShouts]: No Supported Boss Engaged");
end

function macros.VigilantGuardian(cmd)
    print("[SFOShouts]: No shout for vigilant guardian");
end

function macros.SkolextheInsatiableRavener(cmd)
    SendChatMessage("STACK FOR BURROW", "RAID_WARNING");
end

function macros.ArtificerXyMox(cmd)
    SendChatMessage("FOCUS ACOLYTE", "RAID_WARNING");
end

function macros.DausegnetheFallenOracle(cmd)
    print("[SFOShouts]: No shout for Dausegne");
end

function macros.PrototypePantheon(cmd)
    SendChatMessage("FOCUS: "..UnitName("target"):upper(), "RAID_WARNING");
    SetRaidTarget("target", 8);
end

function macros.LihuvimPrincipalArchitect(cmd)
    SendChatMessage("FOCUS: "..UnitName("target"):upper(), "RAID_WARNING");
    SetRaidTarget("target", 8);
end

function macros.HalondrustheReclaimer(cmd)
    SendChatMessage("GET INFRONT OF ORB", "RAID_WARNING");
end

function macros.AnduinWrynn(cmd)
    if cmd == "1" then
        SendChatMessage("STACK IN BARRIER", "RAID_WARNING")
    elseif cmd == "2" then
        SendChatMessage("SPREAD", "RAID_WARNING")
    elseif cmd == "3" then
        SendChatMessage("STACK ON FALLEN KING", "RAID_WARNING")
    end
end

function macros.Rygelon(cmd)

end

function macros.LordsofDread(cmd)

end

function macros.TheJailer(cmd)

end

SFOShouts.macros = macros