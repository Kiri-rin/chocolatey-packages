$packageName   = 'miranda-ng'
$fileType      = 'exe'
$silentArgs    = '/verysilent'
$file          = "$env:ProgramFiles\Miranda NG\Uninstall\unins000.exe"

Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $file