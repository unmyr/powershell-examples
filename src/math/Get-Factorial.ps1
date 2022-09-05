function Get-Factorial([BigInt]$n) {
    if ($n -eq 0) {
        return 1
    }
    if ($n -ge 1) {
        return $n * (Get-Factorial($n - 1))
    } else {
        NaN
    }
}
