@echo off
setlocal

:: Ask the user for the Ultimate Alliance game folder path
set /p gameFolder="Enter the Ultimate Alliance game folder path: "

:: Check if the provided folder exists
if not exist "%gameFolder%" (
    echo The folder "%gameFolder%" does not exist.
    pause
    exit /b 1
)

:: Navigate to the data/fightstyles folder
set fightstylesFolder=%gameFolder%\data\fightstyles
if exist "%fightstylesFolder%\interact_swimming.xmlb" (
    ren "%fightstylesFolder%\interact_swimming.xmlb" interact_swimming1.xmlb
    echo Renamed interact_swimming.xmlb to interact_swimming1.xmlb in %fightstylesFolder%
) else (
    echo File interact_swimming.xmlb not found in %fightstylesFolder%
)

:: Navigate to the actors folder
set actorsFolder=%gameFolder%\actors
if exist "%actorsFolder%\interact_swimming.igb" (
    ren "%actorsFolder%\interact_swimming.igb" interact_swimming1.igb
    echo Renamed interact_swimming.igb to interact_swimming1.igb in %actorsFolder%
) else (
    echo File interact_swimming.igb not found in %actorsFolder%
)

pause
endlocal
