Import-Module Pester

BeforeAll {
  . $PSCommandPath.Replace('.Tests.ps1','.ps1')
}

Describe "Factorial" {
    It "1! = 1" { Get-Factorial(1) | Should -Be 1 }
    It "2! = 2" { Get-Factorial(2) | Should -Be 2 }
    It "3! = 6" { Get-Factorial(3) | Should -Be 6 }
    It "4! = 24" { Get-Factorial(4) | Should -Be 24 }
}
