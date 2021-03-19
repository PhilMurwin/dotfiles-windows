#From dotfiles repo
#Clear-Host
Import-Module posh-git
#Set-PoshPrompt -Theme jandedobbeleer
Set-PoshPrompt -Theme C:/Users/pmurwin/.mytheme.omp.json

# [Setup Git Aliases]
## Prevent conflict with built-in aliases
Remove-Alias gl -Force
## Git Log shortcut
function Get-GitLog { git lg $args }
New-Alias -Name gl -Value Get-GitLog -Force -Option AllScope
function Get-GitLog5 { git lg -5 }
New-Alias -Name gl5 -Value Get-GitLog5 -Force -Option AllScope
#alias go2dev="cd /c/dev"
function Set-LocationDev { cd C:\Dev }
New-Alias -Name go2dev -Value Set-LocationDev -Force -Option AllScope
#alias go2src="cd /c/source"
function Set-LocationSource { Set-Location -Path C:\Source -PassThru }
New-Alias -Name go2src -Value Set-LocationSource -Force -Option AllScope
