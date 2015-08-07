$homePath = Split-Path -Parent $MyInvocation.MyCommand.Path

# Import Math.psm1 module
Import-Module .\Math.psm1 -force

Describe 'Math' {
    Context 'multiply function' {
        It 'should correctly multiply positive numbers' {
            Write-Host "GitHub key: $($env:GitHubKey)"
            $result = multiply -first 4 -second 3
            $result | Should Be 12
        }

        It 'should correctly multiply negative numbers' {
            $result = multiply -first -5 -second 3
            $result | Should Be -15
        }
    }
    
}
