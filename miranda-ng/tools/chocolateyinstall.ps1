$packageArgs = @{
  packageName   = 'miranda-ng'
  fileType      = 'exe'
  url           = 'http://www.miranda-ng.org/distr/stable/miranda-ng-v0.95.4.exe'
  url64bit      = 'http://www.miranda-ng.org/distr/stable/miranda-ng-v0.95.4_x64.exe'
  validExitCodes= @(0)
  silentArgs    = '/SILENT'
}

Install-ChocolateyPackage @packageArgs