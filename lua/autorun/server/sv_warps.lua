local AllowedGroups = {
"superadmin",
"admin"
-- add any other ranks here. Just dont forget a comma on the line before it. Works for ULX and ServerGuard
}

local function SendCommand(ply, text) 
    x = 1684 -- Type "cl_showpos 1" in your game console, And in order, Replace x, y and z with the cordinates you got.
    y = -5247 -- These Cordinates bring you to the big admin area in rp_downtown_tits_v1
    z = -108
    
    if ( string.lower( text ) == "/sit" ) then
        if table.HasValue( AllowedGroups, ply:GetUserGroup() ) then
            ply:SetPos( Vector(x, y, z) )
			      return ""
		    end
    end
end
hook.Add("PlayerSay", "SendCommandHook", SendCommand)
