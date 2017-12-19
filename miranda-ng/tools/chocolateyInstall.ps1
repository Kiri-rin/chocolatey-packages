$packageName = 'miranda-ng'
$fileType    = 'exe'
$url         = 'https://www.miranda-ng.org/distr/stable/miranda-ng-v0.95.7.exe'
$url64       = 'https://www.miranda-ng.org/distr/stable/miranda-ng-v0.95.7_x64.exe'
$silentArgs  = '/verysilent'
 
[array]$key = Get-UninstallRegistryKey -SoftwareName "Miranda NG"
if ($key) { 
	$installedVersion = $key.DisplayVersion
	if ([version]$installedVersion -ge [version]$env:ChocolateyPackageVersion) {
		Write-Host "$packageName $installedVersion is already installed."
	}
	else {
		Write-Verbose "Uninstalling previous version"
		Uninstall-ChocolateyPackage $packageName $fileType $silentArgs ($key.UninstallString.Replace('"',''))
		Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64
	}
}
else {
	Install-ChocolateyPackage $packageName $fileType $silentArgs $url $url64
}
