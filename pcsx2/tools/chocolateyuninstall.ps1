function GetInstallDir {
    $regPath = "HKCU:\SOFTWARE\PCSX2";
    if (Test-Path $regPath) {
        $regVal = Get-ItemProperty -Path $regPath -Name Install_Dir;
        if (Test-Path $regVal.Install_Dir) {
            return $regVal.Install_Dir;
        }
    }
    return "$env:ProgramFiles (x86)\PCSX2 1.4.0";
}

$packageName   = 'pcsx2'
$fileType      = 'exe'
$silentArgs    = '/S'
$file          = GetInstallDir + "\Uninst-pcsx2 1.4.0.exe"

Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $file