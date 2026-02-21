@echo off
setlocal enabledelayedexpansion

:: Set console colors and title
title Student Bachelor Records System
color 0A

:: Main menu
:main
cls
echo ================================================
echo        STUDENT BACHELOR RECORDS SYSTEM
echo ================================================
echo.
echo 1. Add New Student Record
echo 2. View All Records
echo 3. Search Student
echo 4. Delete All Records
echo 5. Exit
echo.
echo ================================================
set /p choice="Enter your choice (1-5): "

if "%choice%"=="1" goto add_record
if "%choice%"=="2" goto view_records
if "%choice%"=="3" goto search_record
if "%choice%"=="4" goto delete_records
if "%choice%"=="5" goto exit
echo Invalid choice! Please try again.
timeout /t 2 /nobreak >nul
goto main

:add_record
cls
echo ================================================
echo           ADD NEW STUDENT RECORD
echo ================================================
echo.

:: Get student information
set /p student_name="Enter Student Name: "
if "%student_name%"=="" (
    echo Student name cannot be empty!
    timeout /t 2 /nobreak >nul
    goto add_record
)

set /p character_name="Enter Character Name: "
if "%character_name%"=="" (
    echo Character name cannot be empty!
    timeout /t 2 /nobreak >nul
    goto add_record
)


for /f "tokens=2 delims==" %%I in ('wmic os get localdatetime /value') do set datetime=%%I
set date=%datetime:~0,4%-%datetime:~4,2%-%datetime:~6,2%
set time=%datetime:~8,2%:%datetime:~10,2%:%datetime:~12,2%


echo. >> README.md.md
echo --- >> README.md.md
echo **Record Added:** %date% %time% >> README.md.md
echo **Student Name:** %student_name% >> README.md.md
echo **Character Name:** %character_name% >> README.md.md
echo **Status:** Active Bachelor >> README.md.md
echo --- >> README.md.md

echo.
echo ================================================
echo Record added successfully!
echo ================================================
timeout /t 2 /nobreak >nul
goto main

:view_records
cls
echo ================================================
echo            ALL STUDENT RECORDS
echo ================================================
echo.

if not exist README.md.md (
    echo No records found! Please add some records first.
    echo.
    pause
    goto main
)

type README.md.md
echo.
echo ================================================
echo Total Records: 
find /c "**Student Name:**" README.md.md
echo ================================================
pause
goto main

:search_record
cls
echo ================================================
echo            SEARCH STUDENT RECORD
echo ================================================
echo.

if not exist README.md.md (
    echo No records found! Please add some records first.
    echo.
    pause
    goto main
)

set /p search="Enter student name to search: "
if "%search%"=="" (
    echo Search term cannot be empty!
    timeout /t 2 /nobreak >nul
    goto search_record
)

echo.
echo ================================================
echo           SEARCH RESULTS
echo ================================================
echo.

set found=0
for /f "tokens=*" %%a in ('findstr /i "%search%" README.md.md') do (
    set line=%%a
    echo !line!
    set found=1
)

if !found!==0 (
    echo No records found for "%search%"
)

echo.
echo ================================================
pause
goto main

:delete_records
cls
echo ================================================
echo           DELETE ALL RECORDS
echo ================================================
echo.
echo WARNING: This will delete all student records!
echo.
set /p confirm="Are you sure? (Y/N): "

if /i "%confirm%"=="Y" (
    if exist README.md.md (
        del README.md.md
        echo All records have been deleted.
    ) else (
        echo No records to delete.
    )
) else (
    echo Operation cancelled.
)

timeout /t 2 /nobreak >nul
goto main

:exit
cls
echo ================================================
echo        Thank you for using the system!
echo ================================================
echo.
timeout /t 2 /nobreak >nul
exit