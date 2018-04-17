## tails of the unit line
# a open source fantasia on a continuous collections of fractions

Objective - to decorate the unit line segment [0, 1]

https://en.wikipedia.org/wiki/Schumann_resonances

Our units:

* 1 stockhausen (Sto): 128 She = 34' 57.152'
* 1 shepard (She): 128 Sch = 16.384s
* 1 schuman (Sch): 1/7.83Hz ~ 128ms = 2**7ms: 125/16Hz
* 1 subotnik (Sub): = 1 Sch / 128 = 1 ms: 1000Hz
* 1 shannon (Sha): = 1 Sub / 128 = 1 / 128 ms: 128KHz

Another way to see it:

* 1 Sto = 128 She = 16,384 Sch = 2,097,152 Sub = 268,435,456 Sha
* 1 She = 128 Sch = 16,384 Sub = 2,097,152 Sha
* 1 Sch = 128 Sub = 16,384 Sha
* 1 Sub = 128 Sha

In hex:

* 1 Sto = 0x80 She = 0x40 00 Sch = 0x20 00 00 Sub = 0x10 00 00 00 Sha
* 1 She = 0x80 Sch = 0x40 00 Sub = 0x20 00 00 Sha
* 1 Sch = 0x80 Sub = 0x40 00 Sha
* 1 Sub = 0x80 Sha

Or as digits:

    Sto  She  Sch  Sub  Sha
    7F | 7F | 7F | 7F | 7F

How many fractions are there of relevance?

M = ½ a~2~ + ⅔ a~3~ + ¾ a~4~ + ⅘ a~5~ …

We need some choice of weights a~i~ so  M = 1.

Pick a~i~ = 1/(i-1)

This sum diverges - but very slowly.  If we cut off the fractions at some denominator, then it has a finite and fairly low sum.

