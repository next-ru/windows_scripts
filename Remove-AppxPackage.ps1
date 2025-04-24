$appsToKeep = @(
    "Microsoft.WindowsCalculator",
    "Microsoft.WindowsAlarms",
    "Microsoft.DesktopAppInstaller",
    "Microsoft.StorePurchaseApp",
    "NVIDIACorp.NVIDIAControlPanel",
    "Microsoft.Windows.Photos",
    "5319275A.WhatsAppDesktop",
    "Microsoft.WindowsStore",
    "Microsoft.LanguageExperiencePackru-RU"
)

$allApps = Get-AppxPackage

foreach ($app in $allApps) {
    if ($app.Name -notin $appsToKeep) {
        Remove-AppxPackage -Package $app.PackageFullName
    }
}
