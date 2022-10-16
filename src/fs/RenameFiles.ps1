$sourceDir = "C:\path to dir"
1..3 | ForEach-Object { New-Item -path (Join-Path $sourceDir "apple - n$_.txt") }
1..3 | ForEach-Object { New-Item -path (Join-Path $sourceDir "banana - n$_.txt") }

# tag::rename-files[]
Get-ChildItem -File $sourceDir | ForEach-Object {
  if ($_.Name -match '^(apple - n)([0-9])(?![0-9])(.*)$') {
    $_.MoveTo((Join-Path $_.Directory ($Matches.1 + "0" + $Matches.2 + $Matches.3)))
  }
}
# end::rename-files[]

Write-Host "INFO: Rename succeeded."
Get-ChildItem -File $sourceDir | Format-Table

(Get-ChildItem -File $sourceDir -Filter "apple - n*") | ForEach-Object { $_.Delete() } | Out-Null
(Get-ChildItem -File $sourceDir -Filter "banana - n*") | ForEach-Object { $_.Delete() } | Out-Null