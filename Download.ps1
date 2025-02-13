# Download Visual C++ Redistributable 80 to 140

$vcredistPath = Join-Path -Path $PSScriptRoot -ChildPath VCRedist
if (-not (Test-Path -Path $vcredistPath)) {
    New-Item -Path $vcredistPath -ItemType Directory | Out-Null
}

$webClient = New-Object -TypeName System.Net.WebClient
$csvPath = Join-Path -Path $PSScriptRoot -ChildPath VCRedist.csv
Import-Csv -Path $csvPath | ForEach-Object {
    $url = $_.Url
    $name = $_.Name
    $hash = $_.Hash
    $downloadPath = Join-Path -Path $vcredistPath -ChildPath $name
    if (-not (Test-Path -Path $downloadPath)) {
        Write-Output -InputObject "Downloading $name"
        $webClient.DownloadFile($url, $downloadPath)
        $actualHash = Get-FileHash -Path $downloadPath -Algorithm SHA256
        if ($actualHash.Hash -ne $hash) {
            Write-Output -InputObject "Hash mismatch for $name, removing file"
            Remove-Item -Path $downloadPath
        }
    } else {
        Write-Output -InputObject "Skipping $name, already exists"
    }
}
