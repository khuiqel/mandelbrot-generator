setlocal

@REM "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"
@REM "Debug/mandelbrot.exe" 6 -2 1 -1.25 1.25 3000 2500 test.png

@set OUT_DIR=Debug
@set OUT_EXE=mandelbrot
@set INCLUDES=/I"C:\Program Files\ImageMagick-7.1.2-Q16-HDRI\include"
@set SOURCES=main.cpp enkiTS/TaskScheduler.cpp
@set LIBS="C:\Program Files\ImageMagick-7.1.2-Q16-HDRI\lib\CORE_RL_Magick++_.lib"
@set DEFINES=/DMANDELBROT_ITER_SMALL_VAL=32 /DMANDELBROT_ITER_INCR=32

if not exist "%OUT_DIR%" (
	mkdir "%OUT_DIR%"
)

cl /std:c++20 /nologo /O2 %DEFINES% /MD /MP /utf-8 %INCLUDES% %SOURCES% /Fe%OUT_DIR%\%OUT_EXE%.exe /Fo%OUT_DIR%\ /link %LIBS%

endlocal
