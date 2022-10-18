SET ST_IDE_PATH=<PATH TO IDE e.g. C:\ST\STM32CubeIDE_x.y.z\STM32CubeIDE>
SET TOOLCHAIN_PATH=<PATH TO TOOLCHAIN e.g. C:\ST\STM32CubeIDE_x.y.z\STM32CubeIDE\lugins\com.st.stm32cube.ide.mcu.externaltools.cubeprogrammer.win32_w.x.y.z\tools\bin>
SET SOURCE_PATH=%1%
SET IDE=%ST_IDE_PATH%\stm32cubeide.exe

call %ST_IDE_PATH%\headless-build.bat -data "%SOURCE_PATH%" -remove %SOURCE_PATH%\Projects\b_u585i_iot02a_ntz
call %ST_IDE_PATH%\headless-build.bat -data "%SOURCE_PATH%" -import %SOURCE_PATH%\Projects\b_u585i_iot02a_ntz
call %ST_IDE_PATH%\headless-build.bat -data %SOURCE_PATH% -build \"b_u585i_iot02a_ntz/Debug\""
exit 0