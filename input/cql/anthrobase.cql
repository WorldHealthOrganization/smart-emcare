library anthrobase version '1.0.4'
using FHIR version '4.0.1'
include FHIRHelpers version '4.0.1' called FHIRHelpers




// https://github.com/WorldHealthOrganization/anthro/blob/9f75f7ab10f371558fb103f701740a7b4fb37143/R/z-score-helper.R#L12

define function AgeToMini(y Decimal):
    if y >= 182.0 then
        (y - ((y - 182.0) mod 30.0) + 15.0) as Decimal
    else if y >= 60.0 then
        (y - ((y - 60.0) mod 7.0 ) + 3.0) as Decimal
    else y          


define function computeZScore(y Decimal, m Decimal, l Decimal, s Decimal):
    if m != 0 then 
        (((y / m)^l - 1) / (s * l)) as Decimal
    else null

define function computeReverseZScore(z Decimal,m Decimal,l Decimal,s Decimal):
    if  l != 0 then 
        (m * (z*s*l+1)^(1/l)) as Decimal
    else null
