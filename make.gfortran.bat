@ECHO OFF
REM Compile NJOY2016 with source files *.f90 on src subdirectory
REM
REM     Usage: make.gfortran 1>make.gfortran.log 2>&1
REM     Called programs: make from gcc
REM       make input file: Makefile.win.gfortran
REM
    if exist *.o   del *.o
    if exist *.obj del *.obj
    if exist *.mod del *.mod
    if exist *.map del *.map    
    if exist njoy2016.exe          del njoy2016.exe
    if exist njoy2016.gfortran.exe del njoy2016.gfortran.exe
rem
rem make njoy2016
rem
    cd src
    if exist *.o   del *.o
    if exist *.obj del *.obj
    if exist *.mod del *.mod
    if exist *.map del *.map    
    if exist njoy2016.exe          del njoy2016.exe
    if exist njoy2016.gfortran.exe del njoy2016.gfortran.exe      
    if exist njoy_gfortran.exe del njoy_gfortran.exe
    c:\Users\dlope\gcc\bin\make.exe -f ..\Makefile.win.gfortran
    if exist njoy_gfortran.exe echo copying njoy_gfortran.exe to njoy2016.exe
    if exist njoy_gfortran.exe copy njoy_gfortran.exe ..\njoy2016.gfortran.exe
    if exist njoy_gfortran.exe copy njoy_gfortran.exe ..\njoy2016.exe
    if exist njoy_gfortran.exe  del njoy_gfortran.exe
    if exist *.o   del *.o
    if exist *.obj del *.obj
    if exist *.mod del *.mod
    if exist *.map del *.map
    cd ..
:end
