# EndPoint

[![Join the chat at https://gitter.im/matthewhatch/EndPoint](https://badges.gitter.im/Join%20Chat.svg)](https://gitter.im/matthewhatch/EndPoint?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

##SYNOPSIS
    Script Generator for Configuration Scripts

##DESCRIPTION
    Generates a script to be used to secure a custom Powershell Endpoint by limiting the commands that can be run

##PARAMETER Cmdlet
    Cmdlets that you would like to be available on the endpoint

##PARAMETER Application
    Applications that you would like to be available on the endpoint

##PARAMETER Alias
    Alias that you would like to be available on the endpoint

##PARAMETER Script
    Scripts that you would like to be available on the endpoint

##PARAMETER Path
    Output path where the script will be written
	
##Example
```powershell
New-ConfigurationScript `
    -Cmdlet Get-Process,Get-Service,Get-ChildItem `
    -Alias dir -Script './somescript.ps1' `
    -Path 'C:\Path\To\Config\Script\Configuration.ps1'
 ```   