# Supprime le fond d'écran actuel
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name Wallpaper -Value ""
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name WallpaperStyle -Value "0"
Set-ItemProperty -Path "HKCU:\Control Panel\Desktop" -Name TileWallpaper -Value "0"

# Définit la couleur de fond en noir (RGB 0 0 0)
Set-ItemProperty -Path "HKCU:\Control Panel\Colors" -Name Background -Value "0 0 0"

# Rafraîchit les paramètres
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
