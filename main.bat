cls
@ECHO OFF
title Folder qua_non_entri_senza_password
if EXIST "non_si_sbircia" goto UNLOCK
if NOT EXIST qua_non_entri_senza_password goto CREARE

:CONFERMARE
echo Bloccare(Y/N)
set/p "cho=>>>"
if %cho%==Y goto LOCK
if %cho%==y goto LOCK
if %cho%==n goto END
if %cho%==N goto END
goto CONFERMARE

:LOCK
ren qua_non_entri_senza_password "non_si_sbircia"
attrib +h +s "non_si_sbircia"
goto End

:UNLOCK
echo Password:
set/p "pass=>>>"
if NOT %pass%== *** goto UNLOCK
attrib -h -s "non_si_sbircia"
ren "non_si_sbircia" qua_non_entri_senza_password
goto End

:CREARE
md qua_non_entri_senza_password
goto End

:End