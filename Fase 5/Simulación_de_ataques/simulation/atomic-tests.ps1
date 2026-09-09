# Requiere: Invoke-AtomicRedTeam
# Install-Module -Name invoke-atomicredteam,powershell-yaml -Scope CurrentUser
Import-Module Invoke-AtomicRedTeam

# T1059.001 - PowerShell malicioso
Invoke-AtomicTest T1059.001 -TestNumbers 1 -GetPrereqs
Invoke-AtomicTest T1059.001 -TestNumbers 1

# T1003.001 - Credential Dumping simulado (defensivo: registro solo)
Invoke-AtomicTest T1003.001 -TestNumbers 1 -CheckPrereqs

Write-Host "[*] Verifica las alertas en Wazuh Dashboard → Security Events"
