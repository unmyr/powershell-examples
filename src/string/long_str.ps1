# Example of long string
$keyName = 'Apple'
$long_str = -join @(
    "SELECT *"
    " FROM fruits_menu"
    " WHERE name='$keyName'"
)
Write-Host($long_str)
