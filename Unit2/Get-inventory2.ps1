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
$computers = "DC1", "W7-Client", "W8-Client"
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
While ($menu_choice -ne "X")
{

    $menu

    $menu_choice = Read-Host -Prompt "Choose a menu option"

switch ($menu_choice)
{
    'A' {
            Write-Host "Inventory installed Software..."
            for ($i=0; $i -lt $computers.length; $lt++)
            {
            $computers[$i]
            Get-WmiObject Win32_ComputerSystemProduct -ComputerName $computers[$i]
        }
        Read-Host -Prompt "Press Enter to COntinue..."
        }
    'B' {

            Write-Host "Inventory installed Hardware..."
            foreach ($computer in $computers)
                {
                    Get-WmiObject -Class Win32_Processor -ComputerName $computer
                    Get-WmiObject -Class Win32_PhysicallyMemory -ComputerName $computers
                    Get-WmiObject -Class Win32_LogicalDisk -ComputerName $computer
                
                }
                Read-Host -Prompt "Press Enter to continue..."
        }

    'X' {
                Write-Host "Not-Exiting :)"
        }
    Default {Write-Host "Please choose a menu option"}
    }
    Start-Sleep -Seconds 1 # Sleep for 1 Second

}

