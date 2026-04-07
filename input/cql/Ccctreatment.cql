/*
@author: Patrick Delcroix
@description: This library is part of the project EmCare
*/
library emcaretreatment version '1.0.1.rc12.build.457'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers 
include emcarebase version '1.0.1.rc12.build.457' called Base
include emcareobservation version '1.0.1.rc12.build.457' called obs
include emcarevalueset version '1.0.1.rc12.build.457' called val
include emcarecondition version '1.0.1.rc12.build.457' called cond




context Patient


/* 
none : AgeInMonths
    AgeInMonths()
*/
define "none":
    AgeInMonths()

/* 
none : load-EmCare.C10.IT.DE01
    HasCond(cond."very severe disease")
*/
define "none":
    Base.HasCond(cond."very severe disease")

/* 
none : load-EmCare.C10.IT.DE02
    HasCond(cond."severe pneumonia or very severe disease")
*/
define "none":
    Base.HasCond(cond."severe pneumonia or very severe disease")

/* 
none : load-EmCare.C10.IT.DE03
    HasCond(cond."pneumonia") and AgeInMonths()>=2
*/
define "none":
    Base.HasCond(cond."pneumonia") and AgeInMonths()>=2

/* 
none : load-EmCare.C10.IT.DE04
    HasCond(cond."cough or cold")
*/
define "none":
    Base.HasCond(cond."cough or cold")

/* 
none : load-EmCare.C10.IT.DE05
    HasCond(cond."severe dehydration") and AgeInMonths()>=2
*/
define "none":
    Base.HasCond(cond."severe dehydration") and AgeInMonths()>=2

/* 
none : load-EmCare.C10.IT.DE06
    HasCond(cond."some dehydration")  and AgeInMonths()>=2
*/
define "none":
    Base.HasCond(cond."some dehydration")  and AgeInMonths()>=2

/* 
none : load-EmCare.C10.IT.DE07
    HasCond(cond."no dehydration")  and AgeInMonths()>=2
*/
define "none":
    Base.HasCond(cond."no dehydration")  and AgeInMonths()>=2

/* 
none : load-EmCare.C10.IT.DE08
    HasCond(cond."severe persistent diarrhoea")
*/
define "none":
    Base.HasCond(cond."severe persistent diarrhoea")

/* 
none : load-EmCare.C10.IT.DE09
    HasCond(cond."persistent diarrhoea")
*/
define "none":
    Base.HasCond(cond."persistent diarrhoea")

/* 
none : load-EmCare.C10.IT.DE10
    HasCond(cond."possible shigella")
*/
define "none":
    Base.HasCond(cond."possible shigella")

/* 
none : load-EmCare.C10.IT.DE11
    HasCond(cond."dysentery")
*/
define "none":
    Base.HasCond(cond."dysentery")

/* 
none : load-EmCare.C10.IT.DE12
    HasCond(cond."throat abscess or possible diptheria")
*/
define "none":
    Base.HasCond(cond."throat abscess or possible diptheria")

/* 
none : load-EmCare.C10.IT.DE13
    HasCond(cond."streptococcal sore throat")
*/
define "none":
    Base.HasCond(cond."streptococcal sore throat")

/* 
none : load-EmCare.C10.IT.DE14
    HasCond(cond."non-streptococcal sore throat")
*/
define "none":
    Base.HasCond(cond."non-streptococcal sore throat")

/* 
none : load-EmCare.C10.IT.DE15
    HasCond(cond."no throat problem")
*/
define "none":
    Base.HasCond(cond."no throat problem")

/* 
none : load-EmCare.C10.IT.DE16
    HasCond(cond."mastoiditis")
*/
define "none":
    Base.HasCond(cond."mastoiditis")

/* 
none : load-EmCare.C10.IT.DE17
    HasCond(cond."acute ear infection")
*/
define "none":
    Base.HasCond(cond."acute ear infection")

/* 
none : load-EmCare.C10.IT.DE18
    HasCond(cond."chronic ear infection")
*/
define "none":
    Base.HasCond(cond."chronic ear infection")

/* 
none : load-EmCare.C10.IT.DE19
    HasCond(cond."no ear infection")
*/
define "none":
    Base.HasCond(cond."no ear infection")

/* 
none : load-EmCare.C10.IT.DE20
    HasCond(cond."very severe febrile disease")
*/
define "none":
    Base.HasCond(cond."very severe febrile disease")

/* 
none : load-EmCare.C10.IT.DE21
    HasCond(cond."fever: possible bacterial infection")
*/
define "none":
    Base.HasCond(cond."fever: possible bacterial infection")

/* 
none : load-EmCare.C10.IT.DE22
    HasCond(cond."fever: bacterial infection unlikely")
*/
define "none":
    Base.HasCond(cond."fever: bacterial infection unlikely")

/* 
none : load-EmCare.C10.IT.DE23
    HasCond(cond."severe complicated measles")
*/
define "none":
    Base.HasCond(cond."severe complicated measles")

/* 
none : load-EmCare.C10.IT.DE24
    HasCond(cond."measles with eye or mouth complication")
*/
define "none":
    Base.HasCond(cond."measles with eye or mouth complication")

/* 
none : load-EmCare.C10.IT.DE25
    HasCond(cond."possible measles")
*/
define "none":
    Base.HasCond(cond."possible measles")

/* 
none : load-EmCare.C10.IT.DE42
    HasCond(cond."severe anaemia")
*/
define "none":
    Base.HasCond(cond."severe anaemia")

/* 
none : load-EmCare.C10.IT.DE43
    HasCond(cond."anaemia")
*/
define "none":
    Base.HasCond(cond."anaemia")

/* 
none : load-EmCare.C10.IT.DE44
    HasCond(cond."no anaemia")
*/
define "none":
    Base.HasCond(cond."no anaemia")

/* 
none : load-EmCare.C10.IT.DE26
    HasCond(cond."eye infection")
*/
define "none":
    Base.HasCond(cond."eye infection")

/* 
none : load-EmCare.C10.IT.DE27
    HasCond(cond."clouding of the cornea")
*/
define "none":
    Base.HasCond(cond."clouding of the cornea")

/* 
none : load-EmCare.C10.IT.DE28
    HasCond(cond."papular urticaria or papular pruritic eruptions")
*/
define "none":
    Base.HasCond(cond."papular urticaria or papular pruritic eruptions")

/* 
none : load-EmCare.C10.IT.DE29
    HasCond(cond."ringworm (tinea)")
*/
define "none":
    Base.HasCond(cond."ringworm (tinea)")

/* 
none : load-EmCare.C10.IT.DE30
    HasCond(cond."scabies")
*/
define "none":
    Base.HasCond(cond."scabies")

/* 
none : load-EmCare.C10.IT.DE31
    HasCond(cond."chickenpox")
*/
define "none":
    Base.HasCond(cond."chickenpox")

/* 
none : load-EmCare.C10.IT.DE32
    HasCond(cond."herpes zoster")
*/
define "none":
    Base.HasCond(cond."herpes zoster")

/* 
none : load-EmCare.C10.IT.DE33
    HasCond(cond."impetigo")
*/
define "none":
    Base.HasCond(cond."impetigo")

/* 
none : load-EmCare.C10.IT.DE34
    HasCond(cond."molluscum contagiosum")
*/
define "none":
    Base.HasCond(cond."molluscum contagiosum")

/* 
none : load-EmCare.C10.IT.DE35
    HasCond(cond."warts")
*/
define "none":
    Base.HasCond(cond."warts")

/* 
none : load-EmCare.C10.IT.DE36
    HasCond(cond."seborrhoeic dermatitis")
*/
define "none":
    Base.HasCond(cond."seborrhoeic dermatitis")

/* 
none : load-EmCare.C10.IT.DE37
    HasCond(cond."fixed drug reaction")
*/
define "none":
    Base.HasCond(cond."fixed drug reaction")

/* 
none : load-EmCare.C10.IT.DE38
    HasCond(cond."eczema")
*/
define "none":
    Base.HasCond(cond."eczema")

/* 
none : load-EmCare.C10.IT.DE39
    HasCond(cond."steven johnson syndrome (sjs)")
*/
define "none":
    Base.HasCond(cond."steven johnson syndrome (sjs)")

/* 
none : load-EmCare.C10.IT.DE40
    HasCond(cond."mouth sores or ulcer")
*/
define "none":
    Base.HasCond(cond."mouth sores or ulcer")

/* 
none : load-EmCare.C10.IT.DE41
    HasCond(cond."oral thrush")
*/
define "none":
    Base.HasCond(cond."oral thrush")

/* 
none : load-EmCare.C10.IT.DE45
    HasCond(cond."very low weight for age")  and AgeInMonths()>=2
*/
define "none":
    Base.HasCond(cond."very low weight for age")  and AgeInMonths()>=2

/* 
none : load-EmCare.C10.IT.DE46
    HasCond(cond."low weight for age")  and AgeInMonths()>=2
*/
define "none":
    Base.HasCond(cond."low weight for age")  and AgeInMonths()>=2

/* 
none : load-EmCare.C10.IT.DE47
    HasCond(cond."low muac or visual report of wasting")
*/
define "none":
    Base.HasCond(cond."low muac or visual report of wasting")

/* 
none : load-EmCare.C10.IT.DE48
    HasCond(cond."possible serious bacterial infection or very severe disease") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."possible serious bacterial infection or very severe disease") and AgeInMonths()<2

/* 
none : load-EmCare.C10.IT.DE49
    HasCond(cond."pneumonia") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."pneumonia") and AgeInMonths()<2

/* 
none : load-EmCare.C10.IT.DE50
    HasCond(cond."local infection") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."local infection") and AgeInMonths()<2

/* 
none : load-EmCare.C10.IT.DE51
    HasCond(cond."infection unlikely") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."infection unlikely") and AgeInMonths()<2

/* 
none : load-EmCare.C10.IT.DE52
    HasCond(cond."severe jaundice") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."severe jaundice") and AgeInMonths()<2

/* 
none : load-EmCare.C10.IT.DE53
    HasCond(cond."jaundice") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."jaundice") and AgeInMonths()<2

/* 
none : load-EmCare.C10.IT.DE54
    HasCond(cond."no jaundice") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."no jaundice") and AgeInMonths()<2

/* 
none : load-EmCare.C10.IT.DE55
    HasCond(cond."severe dehydration") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."severe dehydration") and AgeInMonths()<2

/* 
none : load-EmCare.C10.IT.DE56
    HasCond(cond."some dehydration") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."some dehydration") and AgeInMonths()<2

/* 
none : load-EmCare.C10.IT.DE57
    HasCond(cond."no dehydration") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."no dehydration") and AgeInMonths()<2

/* 
none : load-EmCare.C10.IT.DE58
    HasCond(cond."very low weight for age") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."very low weight for age") and AgeInMonths()<2

/* 
none : load-EmCare.C10.IT.DE59
    HasCond(cond."no feeding problem") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."no feeding problem") and AgeInMonths()<2

/* 
none : load-EmCare.C10.IT.DE60
    HasCond(cond."feeding problem and / or low weight for age") and AgeInMonths()<2
*/
define "none":
    Base.HasCond(cond."feeding problem and / or low weight for age") and AgeInMonths()<2
