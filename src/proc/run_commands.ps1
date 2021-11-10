$proc = Start-Process ./heavy_command.sh -NoNewWindow -PassThru -ArgumentList 'a','B','c','D','e'
$proc.WaitForExit()