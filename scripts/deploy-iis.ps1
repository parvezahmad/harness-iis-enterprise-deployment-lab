param(
  [string]$Environment,
  [string]$Port
)

$source = "C:\harness-artifacts\myapp"
$target = "C:\apps\iis-lab\$Environment"
$appPool = "myapp-$Environment"
$backup = "C:\apps\iis-lab\backup\$Environment-$(Get-Date -Format yyyyMMdd-HHmmss)"

New-Item -ItemType Directory -Force -Path $backup
Copy-Item "$target\*" $backup -Recurse -Force -ErrorAction SilentlyContinue

Stop-WebAppPool -Name $appPool
Remove-Item "$target\*" -Recurse -Force -ErrorAction SilentlyContinue
Copy-Item "$source\*" $target -Recurse -Force
Start-WebAppPool -Name $appPool

$response = Invoke-WebRequest "http://localhost:$Port" -UseBasicParsing
if ($response.StatusCode -ne 200) {
  throw "Smoke test failed for $Environment"
}

Write-Host "$Environment deployment successful"
