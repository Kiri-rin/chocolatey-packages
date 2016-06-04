function GetInstallDir {
	$defPath = Join-Path "$env:ProgramFiles (x86)" "PCSX2 1.4.0";
	$regPath = "HKCU:\SOFTWARE\PCSX2";
    if (Test-Path $regPath) {
        $regVal = Get-ItemProperty -Path $regPath -Name Install_Dir;
        if (Test-Path $regVal.Install_Dir) {
            return $regVal.Install_Dir;
        }
    }
    return $defPath;
}

$installDir = GetInstallDir
Uninstall-ChocolateyPackage 'pcsx2' 'exe' '/S' "$(Join-Path $installDir 'Uninst-pcsx2 1.4.0.exe')"