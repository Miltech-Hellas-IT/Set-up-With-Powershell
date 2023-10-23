# Define the path to the new wallpaper image
$wallpaperPath = "D:\Set up with PowerShell\Data\Wallpapper Miltech.jpg"

# Set the wallpaper using reg.exe
reg.exe add "HKCU\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d $wallpaperPath /f
reg.exe add "HKCU\Control Panel\Desktop" /v WallpaperStyle /t REG_SZ /d 2 /f
reg.exe add "HKCU\Control Panel\Desktop" /v TileWallpaper /t REG_SZ /d 0 /f

# Refresh the desktop to apply the new wallpaper
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters