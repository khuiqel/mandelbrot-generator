setlocal

@REM "C:\Program Files\Microsoft Visual Studio\2022\Community\VC\Auxiliary\Build\vcvars64.bat"

@set OUT_DIR=Debug
@set OUT_EXE=mandelbrot
@set INCLUDES=/I"C:\Program Files\ImageMagick-7.1.2-Q16-HDRI\include"
@set SOURCES=main.cpp enkiTS/TaskScheduler.cpp
@set LIBS="C:\Program Files\ImageMagick-7.1.2-Q16-HDRI\lib\CORE_RL_Magick++_.lib"
@set DEFINES=

if not exist "%OUT_DIR%" (
	mkdir "%OUT_DIR%"
)

cl /std:c++20 /nologo /O2 /fp:fast %DEFINES% /MD /MP /utf-8 %INCLUDES% %SOURCES% /Fe%OUT_DIR%\%OUT_EXE%.exe /Fo%OUT_DIR%\ /link %LIBS%

endlocal
