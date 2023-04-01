$TempFile = New-TemporaryFile
Write-Host $TempFile.FullName
Invoke-WebRequest -Uri https://httpbin.org/get -OutFile $TempFile
Get-Content -Path $TempFile
Remove-Item -Path $TempFile
