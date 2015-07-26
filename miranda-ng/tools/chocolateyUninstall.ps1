$packageArgs = @{
  packageName   = 'miranda-ng'
  fileType      = 'exe'
  validExitCodes= @(0)
  unpath        = "$Env:ProgramFiles\Miranda NG\Uninstall\unins000.exe"
  silentArgs    = '/verysilent'
}

try {
  Uninstall-ChocolateyPackage @packageArgs
  Write-ChocolateySuccess $packageName
} 
catch {
  Write-ChocolateyFailure $packageName $($_.Exception.Message)
  throw
}