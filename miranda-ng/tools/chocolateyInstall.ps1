$packageArgs = @{
  packageName   = 'miranda-ng'
  fileType      = 'exe'
  url           = 'http://www.miranda-ng.org/distr/stable/miranda-ng-v0.95.5.exe'
  url64bit      = 'http://www.miranda-ng.org/distr/stable/miranda-ng-v0.95.5_x64.exe'
  silentArgs    = '/verysilent'
}

$installPath = "$env:ProgramFiles\Miranda NG"
If (Test-Path "$installPath\*") {
	Uninstall-ChocolateyPackage 'miranda-ng' 'exe' '/verysilent' "$(Join-Path $installPath 'Uninstall\unins000.exe')"
}

Install-ChocolateyPackage @packageArgs