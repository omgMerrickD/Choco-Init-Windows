# ChocoInitWin.ps1
# A simple Powershell script to make setting up my Windows 10 environment quicker.

# ExecutionPolicy must not be Restricted.  Check via Get-ExecutionPolicy and set via Set-ExecutionPolicy Bypass

# Install Chocolatey
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Check to see if there were any errors with the install
if ($? == False) {
    throw
}

# Install packages with Chocolatey
Write-Host "Installing packages..."

# Considering supressing output here and possibly adding a progress bar

cinst putty -y
cinst peazip -y
cinst git -y
cinst cmder -y
cinst ChocolateyGUI -y
cinst googledrive -y
cinst malwarebytes -y
cinst slack -y
cinst sysinternals -y
cinst xming -y
cinst vcredist2010 -y
cinst vcredist2012 -y
cinst vcredist2013 -y
cinst vcredist2015 -y