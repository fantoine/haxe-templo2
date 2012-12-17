@echo off

cd templo/bin

:: Remove old compiled files
if exist temploc2.n (move temploc2.n temploc2.n.old)
if exist temploc2.exe (move temploc2.exe temploc2.exe.old)

:: Compile temploc
nekoml -p ..\templo-2.4.2 -p ..\neko-1.8.2\src -p ..\neko-1.8.2\src\core templo/Main.nml templo/Ast.nml templo/Checker.nml templo/Compare.nml templo/Lexer.nml templo/Neko.nml templo/Parser.nml templo/Php.nml
nekoc -link temploc2.n templo/Main templo/Ast templo/Checker templo/Compare templo/Lexer templo/Neko templo/Parser templo/Php

if exist temploc2.n (
	:: Generate exe file
	nekotools boot temploc2.n

	if exist temploc2.exe (
		if exist "C:\Motion-Twin\Haxe" (
			:: Move exe file to haxe folder
			if exist "C:\Motion-Twin\Haxe\temploc2.exe" (
				move C:\Motion-Twin\Haxe\temploc2.exe C:\Motion-Twin\Haxe\temploc2.exe.old
			)
			move temploc2.exe C:\Motion-Twin\Haxe\temploc2.exe
		)
	)
)

pause