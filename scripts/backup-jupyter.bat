@echo off
SETLOCAL ENABLEDELAYEDEXPANSION


REM First parameter: Directory for the backup
REM Second parameter: Namespace


:loop
IF NOT "%1"=="" (
    IF "%1"=="-d" (
        SET backupdir=%2
        SHIFT
    )
    IF "%1"=="-n" (
        SET namespace=%2
        SHIFT
    )
    SHIFT
    GOTO :loop
)

if not defined backupdir set backupdir=backup
if not defined namespace set namespace=jhub

set backupdirstamped=%backupdir%/%date:~6,4%%date:~3,2%%date:~0,2%_%hour%%time:~3,2%%time:~6,2%
echo Backup will be done in directory: %backupdirstamped%
echo Namespace will be: %namespace%


for /f "delims= " %%x in ('kubectl get pods -n %namespace%') do (
	set pod=%%x
	set prefix=!pod:~0,7!
	if "!prefix!"=="jupyter" (
		echo Copying pod !pod!...
		@echo on
		kubectl cp %namespace%/!pod!:/home/jovyan %backupdirstamped%/!pod!
		@echo off
		
	) else (
		REM echo !pod! is not a user pod
	)
)

REM kubectl cp jhub/jupyter-teacher1:home/jovyan backup