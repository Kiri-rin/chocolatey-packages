$packageArgs = @{
  packageName   = 'pcsx2'
  fileType      = 'exe'
  url           = 'http://pcsx2.net/download/releases/windows/send/40-windows/118-pcsx2-1-4-0-setup.html'
  silentArgs    = '/S'
}

Install-ChocolateyPackage @packageArgs