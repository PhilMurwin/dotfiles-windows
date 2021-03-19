# Import Dot Files from the computer (compare them before checking in)
$profileDir = Split-Path -parent $profile
$wslDir = "$env:localappdata\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState"

Copy-Item -Path $profileDir/*.ps1 -Destination ./powershell
Copy-Item -Path $wslDir/settings.json -Destination ./windows-terminal/settings.json
# Home/Profile dir dot files
Copy-Item -Path $home/.bashrc -Destination ./home/.bashrc
Copy-Item -Path $home/.gitconfig -Destination ./home/.gitconfig
Copy-Item -Path $home/.mytheme.omp.json -Destination ./home/.mytheme.omp.json
Copy-Item -Path $home/.profile -Destination ./home/.profile
Copy-Item -Path $home/.wslconfig -Destination ./home/.wslconfig

Remove-Variable profileDir
Remove-Variable wslDir

