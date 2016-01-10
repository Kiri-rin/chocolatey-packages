$packageArgs = @{
  packageName   = 'pcsx2'
  fileType      = 'exe'
  url           = 'http://pcsx2.net/download/releases/windows/finish/6-windows/133-pcsx2-1-4-0-standalone-installer.html'
  silentArgs    = '/verysilent'
}

Install-ChocolateyPackage @packageArgs