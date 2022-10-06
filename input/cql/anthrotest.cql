library anthrotest version '0.99.99'
include anthrobase version '0.99.99'
include acanthro version '0.99.99'
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
