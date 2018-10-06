Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip {
    param([string]$zipfile, [string]$outpath)
    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

$AllProtocols = [System.Net.SecurityProtocolType]'Ssl3,Tls,Tls11,Tls12'
[System.Net.ServicePointManager]::SecurityProtocol = $AllProtocols

$url = "https://windows.php.net/downloads/releases/php-7.2.10-nts-Win32-VC15-x64.zip"
$output = [System.IO.Path]::GetTempPath() + "php.zip"
$phpDir = $env:LOCALAPPDATA + "/php"

Invoke-WebRequest -Uri $url -OutFile $output
New-Item -ItemType directory -Path $phpDir
Unzip $output $phpDir
$env:Path += ";" + $phpDir
[Environment]::SetEnvironmentVariable("Path", $env:Path, [System.EnvironmentVariableTarget]::User)
