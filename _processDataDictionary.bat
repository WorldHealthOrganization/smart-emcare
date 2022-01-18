@ECHO off
SET tooling_jar=tooling-1.4.1-SNAPSHOT-jar-with-dependencies.jar
SET input_cache_path=%~dp0input-cache
SET datadictionary_directory=input/l2
REM the next 3 lines need to be edited for ANC
SET datadictionary_filename=%datadictionary_directory%\WHO-EmCare-CoreDataElements.xlsx
REM datadictionary_filename=%datadictionary_directory%\WHO-ANC.xlsx
REM datadictionary_filename=%datadictionary_directory%\Em Care - Stage 1 - Core Data DictionaryMarcoRafael_v2.xlsx

SET datadictionary_sheetname=EmCare.A. Registration,EmCare.B6. Measurements,EmCare.B7. LTI DangerSigns
SET scope=EmCare
SET tooling=%input_cache_path%\%tooling_jar%
SET upper_path=%%~dpx

if EXIST "%tooling%" (
	ECHO "%datadictionary_sheetname%"
	JAVA -jar "%tooling%" -ProcessAcceleratorKit -s="%scope%" -pts="%datadictionary_filename%" -dep="%datadictionary_sheetname%" -op=./output -c="./processor_dak_conf.json"
) ELSE (
	if EXIST "%tooling%" (
		JAVA -jar $tooling -ProcessAcceleratorKit -s=$scope -pts=./input/l2/"$datadictionary_filename" -dep="$datadictionary_sheetname" -op=.
	) ELSE (
		ECHO [91m ProcessAcceloratorKit NOT FOUND in input-cache or parent folder.  Please run _updateCQFTooling.  Aborting...
		ECHO [0m
    )
)
