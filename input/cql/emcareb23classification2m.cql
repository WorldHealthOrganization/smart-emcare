/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcareb23classification2m version '1.0.1.rc12.build.12'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.12' called Base
include emcareobservation version '1.0.1.rc12.build.12' called obs
include emcarevalueset version '1.0.1.rc12.build.12' called val
include emcarezscore version '1.0.1.rc12.build.12' called Z
include emcarecombineddataelements version '1.0.1.rc12.build.12' called C




context Patient


/* 
ageindays : nan
    AgeInDays()
*/
define "ageindays":
    AgeInDays()

/* 
ageinmonths : nan
    AgeInMonths()
*/
define "ageinmonths":
    AgeInMonths()

/* 
measured temperature (second measurement) : nan
    o"Measured Temperature (second measurement)"
*/
define "measured temperature (second measurement)":
    Base.GetObsValue('EmCare.B22.DE50')

/* 
dl-g-cl2-04-08 : nan
    (    ("ageinmonths"<2)
         and ((    "convulsion(s) in this illness"  or "severe chest indrawing"  or "movements" = "movement only when stimulated but then stops" or "movements" = "no movement at all"  or "difficulty with feeding" = "not able to feed at all" or "difficulty with feeding" = "not feeding well")
         or (    "Measured Temperature" in   {v"High", v"Very High"} and  ( "Second Temperature Measurement Not Feasible" = true or "Measured Temperature (second measurement)" != "Normal" ))
         or (    "Measured Temperature" = "Low" and( "Second Temperature Measurement Not Feasible" = true or "Measured Temperature (second measurement)" != "Normal" ))))
     or (    "ageindays"<7 and "Fast Breathing")
*/
define "dl-g-cl2-04-08":
    (    ("ageinmonths"<2)
         and ((    Base.GetObsValue('EmCare.B7.DE03')  or Base.GetObsValue('EmCare.B18S2.DE07')  or Base.HasObsValueCode('EmCare.B18S2.DE08', 'EmCare.B18S2.DE10') or Base.HasObsValueCode('EmCare.B18S2.DE08', 'EmCare.B18S2.DE09')  or Base.HasObsValueCode('EmCare.B18S1.DE02', 'EmCare.B18S1.DE03') or Base.HasObsValueCode('EmCare.B18S1.DE02', 'EmCare.B18S1.DE04'))
         or (    Base.GetObsValue('EmCare.B6.DE01A') in   {val."high", val."very high"} and  ( Base.GetObsValue('EmCare.B22.DE46') = true or "measured temperature (second measurement)" != val."normal" ))
         or (    Base.HasObsValueCode('EmCare.B6.DE01A', 'Low') and( Base.GetObsValue('EmCare.B22.DE46') = true or "measured temperature (second measurement)" != val."normal" ))))
     or (    "ageindays"<7 and Base.GetObsValue('EmCare.B22.DE07'))

/* 
dl-g-cl2-10 : nan
    "Fast Breathing" = "Yes" and "ageinmonths"<2 and "ageindays">=7
*/
define "dl-g-cl2-10":
    Base.GetObsValue('EmCare.B22.DE07') = true and "ageinmonths"<2 and "ageindays">=7

/* 
dl-g-cl2-11 : nan
    "ageinmonths"<2 and ("Umbilicus Red or Pus Draining" or "Skin Pustules")
*/
define "dl-g-cl2-11":
    "ageinmonths"<2 and (Base.GetObsValue('EmCare.B18S2.DE12') or Base.GetObsValue('EmCare.B18S2.DE13'))

/* 
dl-g-cl2-26 : nan
    "ageindays"<7  and "Weight Status" = v"Very Low Weight for Age"
*/
define "dl-g-cl2-26":
    "ageindays"<7  and Base.HasObsValueCode('EmCare.B21S2.DE01', 'EmCare.B21S2.DE02')
