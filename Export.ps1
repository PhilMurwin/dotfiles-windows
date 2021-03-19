# Export Dot Files from the repo to the computer (This will overwrite whatever's there)
$profileDir = Split-Path -parent $profile
$wslDir = "$env:localappdata\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"

# Make Dirs that may not be there
New-Item $profileDir -ItemType Directory -Force -ErrorAction SilentlyContinue
New-Item $wslDir -ItemType Directory -Force -ErrorAction SilentlyContinue

Copy-Item -Path ./powershell/*.ps1 -Destination $profileDir -Exclude "bootstrap.ps1"
Copy-Item -Path ./windows-terminal/settings.json -Destination $wslDir
Copy-Item -Path ./home/** -Destination $home -Include **

Remove-Variable profileDir
Remove-Variable wslDir
