try {
    # TempFileCollection manages your temp files and deletes them when it is disposed.
    $tempFiles = [CodeDom.Compiler.TempFileCollection]::new()

    # TempFileCollection doesn't create your temp files for you, you gotta do that yourself.
    $tempFile = New-TemporaryFile

    # and you gotta remember to tell TempFileCollection about this new file.
    $tempFiles.AddFile($tempFile.FullName, $false)

    # now you can use $tempFile
    Write-Host $tempFile.FullName
    Invoke-WebRequest -Uri https://httpbin.org/get -OutFile $tempFile
    Get-Content -Path $tempFile
}
finally {
    # when you dispose the TempFileCollection, it will delete all the files you added to it.
    if ($null -ne $tempFiles) {
        $tempFiles.Dispose()  # Deletes all temp files
    }
}