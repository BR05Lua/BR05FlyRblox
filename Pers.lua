local queue_on_teleport = syn and syn.queue_on_teleport or queue_on_teleport

if queue_on_teleport then
    local TeleportCheck = false
    game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
        if not TeleportCheck then
            TeleportCheck = true
            queue_on_teleport([[

                loadstring(game:HttpGet("https://raw.githubusercontent.com/BR05Lua/BR05FlyRblox/refs/heads/main/.lua"))()
            ]])
        end
    end)
    
    if syn and syn.is_in_teleport then
        queue_on_teleport([[
            -- Same script as above
            loadstring(game:HttpGet("https://raw.githubusercontent.com/BR05Lua/BR05FlyRblox/refs/heads/main/.lua"))()
        ]])
    end
else
    warn("Your exploit doesn't support queue_on_teleport")
end
