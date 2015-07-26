$packageName   = 'miranda-ng'
$fileType      = 'exe'
$silentArgs    = '/verysilent'
$file          = "$env:ProgramFiles\Miranda NG\Uninstall\unins000.exe"
$validExitCodes= @(0)

try {
  Uninstall-ChocolateyPackage $packageName $fileType $silentArgs $file $validExitCodes
} 
catch {
  throw $_.Exception
}