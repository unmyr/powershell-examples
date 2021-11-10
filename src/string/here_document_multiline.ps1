# The way to have a here document, without newlines at the top and bottom.

$option = '<script src="app.js"></script>'

$singleLineText = @"
<!DOCTYPE html>
<html>
<head>
  <title>Test</title>
  <meta charset=`"utf-8`">
  <meta name=`"viewport`" content=`"width=device-width, initial-scale=1`">
  $option
</head>
<body>
</body>
</html>
"@
Write-Host($singleLineText)
