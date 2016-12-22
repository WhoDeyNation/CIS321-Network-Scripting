<#
.SYNOPSIS
    This template script and this is where you would type a 
synopsis of the command.

.Description
    This is a template script and this is where you would type a
more detailed description of the command.

.Example
    This is a template script and this is where you would type your
first example of how to use this command.

.Example
    THis is a template script and this is where you would type your
second example of how to use this command.

#>

#Written by Aaron S Platek on 12/20/2016

#Intialization
$count=22
$computerNames = "DC1", "W8-Client"
$totalHotFices = 0
$hotfixesinstalled = 0
$lastname = "Smith"
$Firstname = "Joseph"
$network = "10.10.1"
$hostip="1"
$ipAddress = ""
$username = ""
$computers = ""
$servers - ""
$computerList = @()

#Functions
#This section Contains Function definitions

#Main Body
#Using arithmetic and assignment operators
$count = $count + 10
$count++
$count = $count*5
$count -= 20
$count = $count/2
$count.GetType()

$totalhotfixes = 122
$hotfixPercent = $hotfixesinstalled/$totalHotfixes

#Using string and assignment operators
$username = $firstname + "." + $lastname
$username.GetType()
$username = $firstname.Substring(0,1) + $lastname
$username.Length

$ipAddress = $netwrok + $hostip
$ipAddress = $network + 100 + $hostip
$ipAddress = $network + (100 + $hostip)

#using string and array assignment operators

$computerNames.GetType()
$computerNames = $computerNames + "W-7-Client"
$computerNames.Length
$workstations = $computerNames[1,2]
$servers = $computerNames[0]
$computers = $computerNames -Join "."
$computerList = $computers -split "."

Write-Host "The following computers are servers: $servers"
Write-Host "The Following computers are workstations: $workstations"

$newComputer = Read-Host -prompt "Type a computer name"
$computerNames += $newcomputer
$computerNames
 

