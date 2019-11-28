# ChocoInitWin.ps1
# A simple Powershell script to make setting up my Windows 10 environment quicker.

$execPol = Get-ExecutionPolicy

# ExecutionPolicy must not be Restricted so let's check it and set it correctly if needed
if ($execPol -ne "Bypass") {
    Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression
}

# Check to see if there were any errors with the install
if ($? == False) {
    throw
}

# Create an array of software to install
$instList = @("wmiexplorer", "bitwarden", "powertoys", "vscode", "geekuninstaller", "git", "github-desktop", "cmder", "sysinternals", "spacesniffer", "firefox", "googlechrome", "hashtab", "ditto", "vcredist2010", "vcredist2012", "vcdredist2013", "vcredist2015")

$Progress = @{
    Activity = 'Installing packages via Chocolatey:'
    CurrentOperation = "Installing $instList[$i]:"
    PercentComplete = 0
}


# Iterate through the array and install with 'choco install <name_in_array> -y'
foreach ($item in $instList) {
    $i++
    [int]$percentage = ($i / $instList.Count)*100 
    cinst $instList[$i] -noop | Out-Null # -noop is here for testing
}