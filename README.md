dotfiles-windows
==========
A collection of PowerShell files for Windows and developer-minded Windows configuration defaults.

## Using Git and the export script
You can clone the repository wherever you want.  The export script will copy the files to your PowerShell Profile folder.
```posh
git clone https://github.com/PhilMurwin/dotfiles-windows.git; cd dotfiles-windows; . .\Export.ps1
```

To update your settings, cd into your local dotfiles-windows repository within PowerShell and then:
```posh
. .\Export.ps1
```

Note: You must have your execution policy set to unrestricted (or at least in bypass) for this to work: Set-ExecutionPolicy Unrestricted

## Import existing configurations
The import script will copy existing dotfiles to this repo for comparison and/or inclusion if you've forked the repo for your own purposes.
```posh
. .\Import.ps1
```