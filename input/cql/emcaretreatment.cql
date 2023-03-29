/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcaretreatment version '1.0.1.rc12.build.308'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.308' called Base
include emcareobservation version '1.0.1.rc12.build.308' called obs
include emcarevalueset version '1.0.1.rc12.build.308' called val
include emcarecondition version '1.0.1.rc12.build.308' called cond




context Patient


/* 
ageinmonths : nan
    AgeInMonths()
*/
define "ageinmonths":
    AgeInMonths()

/* 
load-emcare.c10.it.de01 : nan
    HasCond(cond."very severe disease")
*/
define "load-emcare.c10.it.de01":
    Base.HasCond(cond."very severe disease")

/* 
load-emcare.c10.it.de02 : nan
    HasCond(cond."severe pneumonia or very severe disease")
*/
define "load-emcare.c10.it.de02":
    Base.HasCond(cond."severe pneumonia or very severe disease")

/* 
load-emcare.c10.it.de03 : nan
    HasCond(cond."pneumonia") and AgeInMonths()>=2
*/
define "load-emcare.c10.it.de03":
    Base.HasCond(cond."pneumonia") and AgeInMonths()>=2

/* 
load-emcare.c10.it.de04 : nan
    HasCond(cond."cough or cold")
*/
define "load-emcare.c10.it.de04":
    Base.HasCond(cond."cough or cold")

/* 
load-emcare.c10.it.de05 : nan
    HasCond(cond."severe dehydration") and AgeInMonths()>=2
*/
define "load-emcare.c10.it.de05":
    Base.HasCond(cond."severe dehydration") and AgeInMonths()>=2

/* 
load-emcare.c10.it.de06 : nan
    HasCond(cond."some dehydration")  and AgeInMonths()>=2
*/
define "load-emcare.c10.it.de06":
    Base.HasCond(cond."some dehydration")  and AgeInMonths()>=2

/* 
load-emcare.c10.it.de07 : nan
    HasCond(cond."no dehydration")  and AgeInMonths()>=2
*/
define "load-emcare.c10.it.de07":
    Base.HasCond(cond."no dehydration")  and AgeInMonths()>=2

/* 
load-emcare.c10.it.de08 : nan
    HasCond(cond."severe persistent diarrhoea")
*/
define "load-emcare.c10.it.de08":
    Base.HasCond(cond."severe persistent diarrhoea")

/* 
load-emcare.c10.it.de09 : nan
    HasCond(cond."persistent diarrhoea")
*/
define "load-emcare.c10.it.de09":
    Base.HasCond(cond."persistent diarrhoea")

/* 
load-emcare.c10.it.de10 : nan
    HasCond(cond."possible shigella")
*/
define "load-emcare.c10.it.de10":
    Base.HasCond(cond."possible shigella")

/* 
load-emcare.c10.it.de11 : nan
    HasCond(cond."dysentery")
*/
define "load-emcare.c10.it.de11":
    Base.HasCond(cond."dysentery")

/* 
load-emcare.c10.it.de12 : nan
    HasCond(cond."throat abscess or possible diptheria")
*/
define "load-emcare.c10.it.de12":
    Base.HasCond(cond."throat abscess or possible diptheria")

/* 
load-emcare.c10.it.de13 : nan
    HasCond(cond."streptococcal sore throat")
*/
define "load-emcare.c10.it.de13":
    Base.HasCond(cond."streptococcal sore throat")

/* 
load-emcare.c10.it.de14 : nan
    HasCond(cond."non-streptococcal sore throat")
*/
define "load-emcare.c10.it.de14":
    Base.HasCond(cond."non-streptococcal sore throat")

/* 
load-emcare.c10.it.de15 : nan
    HasCond(cond."no throat problem")
*/
define "load-emcare.c10.it.de15":
    Base.HasCond(cond."no throat problem")

/* 
load-emcare.c10.it.de16 : nan
    HasCond(cond."mastoiditis")
*/
define "load-emcare.c10.it.de16":
    Base.HasCond(cond."mastoiditis")

/* 
load-emcare.c10.it.de17 : nan
    HasCond(cond."acute ear infection")
*/
define "load-emcare.c10.it.de17":
    Base.HasCond(cond."acute ear infection")

/* 
load-emcare.c10.it.de18 : nan
    HasCond(cond."chronic ear infection")
*/
define "load-emcare.c10.it.de18":
    Base.HasCond(cond."chronic ear infection")

/* 
load-emcare.c10.it.de19 : nan
    HasCond(cond."no ear infection")
*/
define "load-emcare.c10.it.de19":
    Base.HasCond(cond."no ear infection")

/* 
load-emcare.c10.it.de20 : nan
    HasCond(cond."very severe febrile disease")
*/
define "load-emcare.c10.it.de20":
    Base.HasCond(cond."very severe febrile disease")

/* 
load-emcare.c10.it.de21 : nan
    HasCond(cond."fever: possible bacterial infection")
*/
define "load-emcare.c10.it.de21":
    Base.HasCond(cond."fever: possible bacterial infection")

/* 
load-emcare.c10.it.de22 : nan
    HasCond(cond."fever: bacterial infection unlikely")
*/
define "load-emcare.c10.it.de22":
    Base.HasCond(cond."fever: bacterial infection unlikely")

/* 
load-emcare.c10.it.de23 : nan
    HasCond(cond."severe complicated measles")
*/
define "load-emcare.c10.it.de23":
    Base.HasCond(cond."severe complicated measles")

/* 
load-emcare.c10.it.de24 : nan
    HasCond(cond."measles with eye or mouth complication")
*/
define "load-emcare.c10.it.de24":
    Base.HasCond(cond."measles with eye or mouth complication")

/* 
load-emcare.c10.it.de25 : nan
    HasCond(cond."possible measles")
*/
define "load-emcare.c10.it.de25":
    Base.HasCond(cond."possible measles")

/* 
load-emcare.c10.it.de42 : nan
    HasCond(cond."severe anaemia")
*/
define "load-emcare.c10.it.de42":
    Base.HasCond(cond."severe anaemia")

/* 
load-emcare.c10.it.de43 : nan
    HasCond(cond."anaemia")
*/
define "load-emcare.c10.it.de43":
    Base.HasCond(cond."anaemia")

/* 
load-emcare.c10.it.de44 : nan
    HasCond(cond."no anaemia")
*/
define "load-emcare.c10.it.de44":
    Base.HasCond(cond."no anaemia")

/* 
load-emcare.c10.it.de26 : nan
    HasCond(cond."eye infection")
*/
define "load-emcare.c10.it.de26":
    Base.HasCond(cond."eye infection")

/* 
load-emcare.c10.it.de27 : nan
    HasCond(cond."clouding of the cornea")
*/
define "load-emcare.c10.it.de27":
    Base.HasCond(cond."clouding of the cornea")

/* 
load-emcare.c10.it.de28 : nan
    HasCond(cond."papular urticaria or papular pruritic eruptions")
*/
define "load-emcare.c10.it.de28":
    Base.HasCond(cond."papular urticaria or papular pruritic eruptions")

/* 
load-emcare.c10.it.de29 : nan
    HasCond(cond."ringworm (tinea)")
*/
define "load-emcare.c10.it.de29":
    Base.HasCond(cond."ringworm (tinea)")

/* 
load-emcare.c10.it.de30 : nan
    HasCond(cond."scabies")
*/
define "load-emcare.c10.it.de30":
    Base.HasCond(cond."scabies")

/* 
load-emcare.c10.it.de31 : nan
    HasCond(cond."chickenpox")
*/
define "load-emcare.c10.it.de31":
    Base.HasCond(cond."chickenpox")

/* 
load-emcare.c10.it.de32 : nan
    HasCond(cond."herpes zoster")
*/
define "load-emcare.c10.it.de32":
    Base.HasCond(cond."herpes zoster")

/* 
load-emcare.c10.it.de33 : nan
    HasCond(cond."impetigo")
*/
define "load-emcare.c10.it.de33":
    Base.HasCond(cond."impetigo")

/* 
load-emcare.c10.it.de34 : nan
    HasCond(cond."molluscum contagiosum")
*/
define "load-emcare.c10.it.de34":
    Base.HasCond(cond."molluscum contagiosum")

/* 
load-emcare.c10.it.de35 : nan
    HasCond(cond."warts")
*/
define "load-emcare.c10.it.de35":
    Base.HasCond(cond."warts")

/* 
load-emcare.c10.it.de36 : nan
    HasCond(cond."seborrhoeic dermatitis")
*/
define "load-emcare.c10.it.de36":
    Base.HasCond(cond."seborrhoeic dermatitis")

/* 
load-emcare.c10.it.de37 : nan
    HasCond(cond."fixed drug reaction")
*/
define "load-emcare.c10.it.de37":
    Base.HasCond(cond."fixed drug reaction")

/* 
load-emcare.c10.it.de38 : nan
    HasCond(cond."eczema")
*/
define "load-emcare.c10.it.de38":
    Base.HasCond(cond."eczema")

/* 
load-emcare.c10.it.de39 : nan
    HasCond(cond."steven johnson syndrome (sjs)")
*/
define "load-emcare.c10.it.de39":
    Base.HasCond(cond."steven johnson syndrome (sjs)")

/* 
load-emcare.c10.it.de40 : nan
    HasCond(cond."mouth sores or ulcer")
*/
define "load-emcare.c10.it.de40":
    Base.HasCond(cond."mouth sores or ulcer")

/* 
load-emcare.c10.it.de41 : nan
    HasCond(cond."oral thrush")
*/
define "load-emcare.c10.it.de41":
    Base.HasCond(cond."oral thrush")

/* 
load-emcare.c10.it.de45 : nan
    HasCond(cond."very low weight for age")  and AgeInMonths()>=2
*/
define "load-emcare.c10.it.de45":
    Base.HasCond(cond."very low weight for age")  and AgeInMonths()>=2

/* 
load-emcare.c10.it.de46 : nan
    HasCond(cond."low weight for age")  and AgeInMonths()>=2
*/
define "load-emcare.c10.it.de46":
    Base.HasCond(cond."low weight for age")  and AgeInMonths()>=2

/* 
load-emcare.c10.it.de47 : nan
    HasCond(cond."low muac or visual report of wasting")
*/
define "load-emcare.c10.it.de47":
    Base.HasCond(cond."low muac or visual report of wasting")

/* 
load-emcare.c10.it.de48 : nan
    HasCond(cond."possible serious bacterial infection or very severe disease") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de48":
    Base.HasCond(cond."possible serious bacterial infection or very severe disease") and AgeInMonths()<2

/* 
load-emcare.c10.it.de49 : nan
    HasCond(cond."pneumonia") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de49":
    Base.HasCond(cond."pneumonia") and AgeInMonths()<2

/* 
load-emcare.c10.it.de50 : nan
    HasCond(cond."local infection") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de50":
    Base.HasCond(cond."local infection") and AgeInMonths()<2

/* 
load-emcare.c10.it.de51 : nan
    HasCond(cond."infection unlikely") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de51":
    Base.HasCond(cond."infection unlikely") and AgeInMonths()<2

/* 
load-emcare.c10.it.de52 : nan
    HasCond(cond."severe jaundice") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de52":
    Base.HasCond(cond."severe jaundice") and AgeInMonths()<2

/* 
load-emcare.c10.it.de53 : nan
    HasCond(cond."jaundice") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de53":
    Base.HasCond(cond."jaundice") and AgeInMonths()<2

/* 
load-emcare.c10.it.de54 : nan
    HasCond(cond."no jaundice") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de54":
    Base.HasCond(cond."no jaundice") and AgeInMonths()<2

/* 
load-emcare.c10.it.de55 : nan
    HasCond(cond."severe dehydration") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de55":
    Base.HasCond(cond."severe dehydration") and AgeInMonths()<2

/* 
load-emcare.c10.it.de56 : nan
    HasCond(cond."some dehydration") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de56":
    Base.HasCond(cond."some dehydration") and AgeInMonths()<2

/* 
load-emcare.c10.it.de57 : nan
    HasCond(cond."no dehydration") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de57":
    Base.HasCond(cond."no dehydration") and AgeInMonths()<2

/* 
load-emcare.c10.it.de58 : nan
    HasCond(cond."very low weight for age") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de58":
    Base.HasCond(cond."very low weight for age") and AgeInMonths()<2

/* 
load-emcare.c10.it.de59 : nan
    HasCond(cond."no feeding problem") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de59":
    Base.HasCond(cond."no feeding problem") and AgeInMonths()<2

/* 
load-emcare.c10.it.de60 : nan
    HasCond(cond."feeding problem and / or low weight for age") and AgeInMonths()<2
*/
define "load-emcare.c10.it.de60":
    Base.HasCond(cond."feeding problem and / or low weight for age") and AgeInMonths()<2
