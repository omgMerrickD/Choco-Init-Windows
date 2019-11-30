# ChocoInitWin.ps1
# A simple Powershell script to make setting up my Windows 10 environment quicker.

# $execPol = Get-ExecutionPolicy

# ExecutionPolicy must not be Restricted so let's check it and set it correctly if needed
# if ($execPol -ne "Bypass") {
#     Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-WebRequest https://chocolatey.org/install.ps1 -UseBasicParsing | Invoke-Expression
# }

# # Check to see if there were any errors with the install
# if ($? == False) {
#     throw
# }

<# 
    Create an array of software to install
    TODO: Think about keeping a list separatem like a CSV or text file, and importing at runtime
 #>
$instList = "wmiexplorer", "bitwarden", "powertoys", "vscode", "geekuninstaller", "git", "github-desktop", "cmder", "sysinternals", "spacesniffer", "firefox", "googlechrome", "hashtab","ditto", "vcredist2010", "vcredist2012", "vcdredist2013", "vcredist2015"

# Init progress bar variables
$Progress = @{
    Activity = "Installing packages via Chocolatey:"
    CurrentOperation = "Loading list of packages"
    PercentComplete = 0
}

Write-Progress @Progress
Start-Sleep -Milliseconds 1000

# Iterate through the array and install with 'choco install <name_in_array> -y'
for ($i=0; $i -lt $instList.Count; $i++) {
    $Progress.CurrentOperation = "Installing " + $instList[$i]
    $Progress.PercentComplete = [math]::Round(($i / $instList.Count)*100,0)
    Write-Progress @Progress
    Write-Host ("choco install", $instlist[$i], "-y", "--whatif") -ForegroundColor Green
    # choco install $instList[$i] -y --whatif # --whatif is here for testing
    Start-Sleep -Milliseconds 400
}