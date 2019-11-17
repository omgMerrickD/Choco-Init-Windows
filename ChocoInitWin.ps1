# ChocoInitWin.ps1
# A simple Powershell script to make setting up my Windows 10 environment quicker.

$execPol = Get-ExecutionPolicy

# ExecutionPolicy must not be Restricted so let's check it and set it correctly if needed
if ($execPol -ne "Bypass") {
    Set-ExecutionPolicy Bypass -Scope Process -Force; iwr https://chocolatey.org/install.ps1 -UseBasicParsing | iex
}

# Check to see if there were any errors with the install
if ($? == False) {
    throw
}

# Install packages with Chocolatey
Write-Host "Installing packages..."

# Consider supressing output here and possibly adding a progress bar

cinst powershell-core -y
cinst bitwarden -y
cinst powertoys -y
cinst vscode -y
cinst firefox -y
cinst GeekUninstaller -y
cinst putty -y
cinst peazip -y
cinst git -y
cinst github-desktop -y
cinst cmder -y
cinst sysinternals -y
cinst spacesniffer -y
cinst hashtab -y
cinst ditto -y
cinst vcredist2010 -y
cinst vcredist2012 -y
cinst vcredist2013 -y
cinst vcredist2015 -y