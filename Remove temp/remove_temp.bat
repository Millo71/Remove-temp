@echo off

set password=millo

set /p userpass= Inserisci una password: 

if %userpass% == %password% (

color 05

echo                      __    __   __  __   __       ______  __   ______  ______   ______   __        
echo                     /\ "-./  \ /\ \/\ \ /\ \     /\__  _\/\ \ /\__  _\/\  __ \ /\  __ \ /\ \       
echo                     \ \ \-./\ \\ \ \_\ \\ \ \____\/_/\ \/\ \ \\/_/\ \/\ \ \/\ \\ \ \/\ \\ \ \____  
echo                      \ \_\ \ \_\\ \_____\\ \_____\  \ \_\ \ \_\  \ \_\ \ \_____\\ \_____\\ \_____\ 
echo                       \/_/  \/_/ \/_____/ \/_____/   \/_/  \/_/   \/_/  \/_____/ \/_____/ \/_____/ 

echo                                            Accesso eseguito correttamente


echo                       [1] Vuoi eliminare i file temporanei? Premi Invio per continuare o Ctrl+C per annullare.
pause >nul

echo                                       Svuotamento dei file temporanei in corso...
del /q /f %temp%\*
rd /s /q %temp%
mkdir %temp%
pause
echo !!! FILE ELIMINATI !!!

) else (
echo accesso negato
)