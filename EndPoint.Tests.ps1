Import-Module $PSScriptRoot\EndPoint.psm1 -force
$Path = './TestScript.ps1'
Describe 'New-ConfigurationScript' {
    New-ConfigurationScript -Cmdlet 'Get-Help' -Application 'ping' -Script 'Test.ps1' -Alias 'cls' -Path $Path
    
    It 'Should create a script in the indicated path'{
        $Path | Should Exist
    }
    
    It 'Should include a line that matches the cmdlets' {
        $Path | Should contain "\[string\[\]\]\`$PublicCmdlets = 'Get-Help'"
    }
    
    It 'Should include line that includes applications assigned to variable'{
        $Path | Should contain "\[string\[\]\]\`$Application = 'ping'"
    }

    
    It 'Should include line that includes alias assigned to variable'{
       $Path | Should contain "\[string\[\]\]\`$PublicAliases = 'cls'"
    }

    
    It 'Should include line that includes scripts assigned to variable'{
        $Path | Should contain "\[string\[\]\]\`$PublicScripts = 'Test.ps1'"
    }

    Remove-Item $Path
}

#Really not sure how to write tests for this