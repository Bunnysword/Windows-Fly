#Winget
winget install Transmission.Transmission Valve.Steam Discord.Discord Logitech.GHUB Yandex.Browser Nvidia.GeForceExperience Microsoft.VisualStudioCode SomePythonThings.WingetUIStore fastfetch

#theme AppsUseLightTheme SystemUsesLightTheme
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0 -Type Dword -Force
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0 -Type Dword -Force

#fastfetch
New-Item -Path "c:\ProgramData\" -Name "fastfetch" -ItemType "directory"
Move-Item -Path config.jsonc -Destination C:\ProgramData\fastfetch\config.jsonc