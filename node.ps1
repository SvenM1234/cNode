Import-Module -Name ".\source\fonctions.ps1"


Write-Output "-------------" | color blue white
Write-Output "|  Hello :) |" | color blue white
Write-Output "-------------" | color blue white
Write-Output "Bienvenue dans votre nouveau projet node.js" | color blue white

$nameProject = Read-Host -Prompt "Comment s'appelle votre projet ?"

# creation dossier projet 
New-Item -Name $nameProject -ItemType "directory"
cd $nameProject
npm init
npm i nodemon
npm i express

New-Item -Name "controller" -ItemType "directory"

