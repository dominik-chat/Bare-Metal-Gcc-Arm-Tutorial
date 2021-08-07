call clean

for /r %%i in (*.s) do (
	echo %%~nxi
	call compile %%~nxi
)

for /r %%i in (*.c) do (
	echo %%~nxi
	call compile %%~nxi
)

call link

call hex
