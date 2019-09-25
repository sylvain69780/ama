@echo off
rem set working directory
cd /d %~dp0
echo nant %*
set PAR=%1_%2
if not exist log md log
if not exist tmp md tmp
rem Do some tricks for logging in a file and send mail
call :checkoptions %* || exit /b 1
call :call_ant %*
call :sendmail
exit /b %RC%

:checkoptions
if @%2==@ (
	 nant-0.92\bin\nant.exe -projecthelp
	 exit /b 1
) else (
	exit /b 0
)

:call_ant
	set LOGNAME=log\antlog_%USERNAME%_%PAR%
	call rotate %LOGNAME% || exit /b 1
	echo Trace of this operation in %LOGNAME%.log
	nant-0.92\bin\nant.exe -logfile:%LOGNAME%.log %*
	set RC=%ERRORLEVEL%
	echo ant %* >>"%LOGNAME%.log"
	exit /b %RC%
:sendmail
	if @%RC%==@0 (
		echo SUCCESS
		rem -- tools\blat.exe %LOGNAME%.log -to sylvain.lecourtois@adecco-groupe.fr -f SXTools@adecco-groupe.fr -server smtpmail.lce.adecco.net -subject "SUCCESS : %LOGNAME%"
	) else (
		echo FAILED
		rem -- tools\blat.exe %LOGNAME%.log -to LDAGFMMAINTENANCEASATechnical@adecco.com -f SXTools@adecco-groupe.fr -server localhost -subject "FAILED : %LOGNAME%"
	)
	exit /b 0
