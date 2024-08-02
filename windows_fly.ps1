#
winget install Transmission.Transmission Valve.Steam Discord.Discord Logitech.GHUB Yandex.Browser Nvidia.GeForceExperience Microsoft.VisualStudioCode SomePythonThings.WingetUIStore fastfetch
#
winget remove Microsoft.OneDrive MSIX\Microsoft.WindowsNotepad_11.2112.32.0_x64__8wekyb3d8bbwe MSIX\Microsoft.WindowsCalculator_10.2103.8.0_x64__8wekyb3d8bbwe MSIX\Microsoft.WindowsSoundRecorder_1.0.42.0_x64__8wekyb3d8bbwe MSIX\Microsoft.WindowsMaps_1.0.39.0_x64__8wekyb3d8bbwe MSIX\A025C540.Yandex.Music_4.54.8517.0_x64__vfvw9svesycw6 MSIX\Microsoft.Todos_0.54.42772.0_x64__8wekyb3d8bbwe MSIX\Microsoft.OneDriveSync_24141.714.3.0_neutral__8wekyb3d8bbwe MSIX\Microsoft.Paint_11.2201.22.0_x64__8wekyb3d8bbwe MSIX\Microsoft.PowerAutomateDesktop_1.0.219.0_x64__8wekyb3d8bbwe 
#fastfetch
New-Item -Path "c:\ProgramData\" -Name "fastfetch" -ItemType "directory"
Move-Item -Path config.jsonc -Destination C:\ProgramData\fastfetch\config.jsonc
#
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name AppsUseLightTheme -Value 0 -Type Dword -Force
Set-ItemProperty -Path HKCU:\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize -Name SystemUsesLightTheme -Value 0 -Type Dword -Force
$Path="HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced"
Set-ItemProperty -Path $Path -Name "HideIcons" -Value 1
Get-Process "explorer"| Stop-Process
