# Crée la clé si elle n'existe pas
$regPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System"
if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

# Désactive CMD pour tous les utilisateurs
Set-ItemProperty -Path $regPath -Name "DisableCMD" -Value 1 -Type DWord

# (Optionnel) Appliquer immédiatement
Start-Process -FilePath "gpupdate.exe" -ArgumentList "/force" -NoNewWindow -Wait
