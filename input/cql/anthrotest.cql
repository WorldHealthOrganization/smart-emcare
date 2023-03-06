library anthrotest version '1.0.0'
include anthrobase version '1.0.0' called anthrobase
include ArmCircumferenceForAge version '1.0.0' called acanthro
parameter y Decimal
parameter m Decimal
parameter l Decimal
parameter s Decimal
parameter z Decimal
parameter w Decimal

define testComputeZScore: 
    anthrobase.computeZScore(y, m, l, s)

define testComputeReverseZScore: 
    anthrobase.computeReverseZScore(z, m, l, s)

define testacanthroZscore:
    acanthro.generateZScoreArmCircumferenceForAge('female', y, w)
