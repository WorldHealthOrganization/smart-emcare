@ECHO off
SET tooling_jar=tooling-1.3.1-SNAPSHOT-jar-with-dependencies.jar
SET input_cache_path=%~dp0input-cache
SET decisiontables_directory=input/l2

SET decisiontables_filename=%decisiontables_directory%\WHO-EmCare-DecisionTables.xlsx


SET decisiontables_sheetname=EmCare.DT.01 Registration 
SET scope=EmCare.DT
SET tooling=%input_cache_path%\%tooling_jar%
SET upper_path=%%~dpx

REM javaOPTION NOT YET SUPPORTED -dep="%decisiontables_sheetname%"
if EXIST "%tooling%" (
	ECHO "%decisiontables_sheetname%"
	JAVA -jar "%tooling%" -ProcessDecisionTables -dtpf="%scope%" -pts="%decisiontables_filename%"  -op=./output

) ELSE (
	ECHO [91m DecisionTable NOT FOUND in input-cache.  Please run _updateCQFTooling.  Aborting...
	ECHO [0m
)

