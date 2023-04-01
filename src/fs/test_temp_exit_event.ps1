$global:TempFile = New-TemporaryFile
Write-Host ("Temporary file created : Path='{0}'" -f $TempFile.FullName)

# Note: Exit action works only when executed like `powershell test_temp_exit_event.ps1`
# - Exit action does not triggered when executed like `path\to\test_temp_exit_event.ps1`.
# - Exit action does not triggered when closing with the x button.
$null = Register-EngineEvent -SourceIdentifier PowerShell.Exiting -SupportEvent -Action {
    Write-Host ("Remove-Item -Path {0} -Force" -f $TempFile.FullName)
    Remove-Item -Path $TempFile -Force
}

# Now you can use $TempFile
Invoke-WebRequest -Uri https://httpbin.org/get -OutFile $TempFile
Get-Content -Path $TempFile

# Event will trigger here and delete the file
