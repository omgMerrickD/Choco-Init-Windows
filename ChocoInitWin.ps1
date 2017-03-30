# ChocoInitWin.ps1
# A simple Powershell script to make setting up my Windows 10 environment quicker.

# Need to ensure the ExecutionPolicy is properly set
Set-ExecutionPolicy AllSigned

# Chocolatey needs to be installed
iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# should probably have some checks in here to see if everything went ok before proceeding... hmm.

# Install packages with Chocolatey
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