$packageArgs = @{
  packageName   = 'pcsx2'
  fileType      = 'exe'
  url           = 'https://github.com/Kiri-rin/chocolatey-packages/raw/master/pcsx2/bin/pcsx2-1.4.0-setup.exe'
  silentArgs    = '/S'
}

Install-ChocolateyPackage @packageArgs