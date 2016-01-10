$packageName   = 'pcsx2'
$fileType      = 'exe'
$silentArgs    = '/verysilent'
$file          = "$env:ProgramFiles(x86)\PCSX2 1.4.0\Uninst-pcsx2 1.4.0.exe"

Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $file