cd "D:\Set up with PowerShell\Apps\"
msiexec.exe /i "D:\Set up with PowerShell\Apps\7zip.msi" /quiet
.\AnyDesk.exe --install "C:\Program Files\AnyDesk" --start-with-win --create-desktop-icon --silent --update-manually
.\Net7Runtimex64.exe /install /quiet /norestartS
msiexec.exe /i "D:\Set up with PowerShell\Apps\vlc.msi" /quiet
msiexec.exe /i "D:\Set up with PowerShell\Apps\Wireshark.msi" /quiet /norestart