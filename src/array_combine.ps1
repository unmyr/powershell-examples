$column1 = @(1, 2, 3)
$column2 = @(4, 5, 6)

0..($column1.Length - 1) | `
  Select-Object `
@{n = "Id"; e = { $_ } }, `
@{n = "Column1"; e = { $column1[$_] } }, `
@{n = "Column2"; e = { $column2[$_] } }


0..($column1.Length - 1) | ForEach-Object { @{
    Id      = $_
    Column1 = $column1[$_]
    Column2 = $column2[$_]
  } } | Select-Object Id, Column1, Column2
