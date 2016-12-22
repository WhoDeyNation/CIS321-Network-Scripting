<#
.SYNOPSIS
    This is a script to inventory computer system hardware and software

.Description
    This is a template script and this is where you would type a
more detailed description of the command.

Get-Inventory.ps1
    This example starts the program and displats a menu with options for inventorying computer systems

#>

#Written by Aaron S Platek on 12/20/2016

#Intialization
$menu_choice = ""
$menu = @"
                Inventory System Menu
================================================
            A-Installed Software Inventory
            B-Basic Hardware Inventory
                       X - Exit
================================================
"@

#Functions
#This section Contains Function definitions

#Main Body
$menu
$menu_choice = Read-Host -Prompt "Choose a menu option"
if ( $menu_choice -eq "A" )
        {
            Write-Host "Inventorying installed Software..."
            Write-Host "This code is not yet implemented."
        }
    ElseIf ( $menu_choice -eq "B" )
        {
            Write-Host "Inventory installed Hardware..."
            Write-Host "This code is not yet implemented."
        }
    ElseIf ( $menu_choice -eq "X" )
        {
            $sure = Read-Host -Prompt "Are you sure you want to exit? (Y)"
            if ($sure -eq "Y")
        {
            Write-Host "This I can do."
            Write-Host "Exiting..."
        }
        Else
        {
            Write-host "Not Exiting :)"
        }
    }

