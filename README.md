# tails of the unit line
## a open source fantasia on an discontinuous collections of fractions

Objective - to decorate the unit line segment [0, 1]

https://en.wikipedia.org/wiki/Schumann_resonances

Our units are based on the fundamental Schumann resonance of the Earth,
which is about 7.83 cycles per second (7.83Hz), which corresponds to a period
of 0.128 seconds (0.128s) or 128 milliseconds (128ms).

We call this unit period of time **1 schumann** or `1Sch`.

You get almost eight schumanns in a single second: a schumann is approximately
what human consciousness perceives as "an instant".

Doubling or halving a frequency corresponds to increasing or decreasing an
octave in pitch.  We need a lot of octaves to completely represent the unit
interval to the limits of human perception , so we define a **superoctave** as
1 + 2 + 4 = seven octaves, or a frequency multiplier of 128.

We can then measure time at five scales by going down and up two hyperoctaves
from the "base time" of one schumann.

This gives us five units:

* 1 shannon (Sha): 1 / 128 ms
* 1 subotnik (Sub): 128 Sha  = 1 ms
* 1 schuman (Sch): 128 Sub = 128ms
* 1 shepard (She): 128 Sch  = 16.384s
* 1 stockhausen (Sto): 128 She = 34' 57.152'"



* 1 stockhausen (Sto): 34' 57.152' = 16384 Sch
* 1 shepard (She): 16.384s = 128 Sch
* 1 schuman (Sch): 128ms
* 1 subotnik (Sub): 1 ms = 1 / 128 Sch
* 1 shannon (Sha): 1 / 128 ms = 1 / 16384 Sch



128KHz
1000Hz

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

We're going to choose
[the harmonic series of primes](http://mathworld.wolfram.com/HarmonicSeriesofPrimes.html)
as the basis for our fraction collection.

And the sum of 1/p for primes up to but not including 2097152
is 2.93955330672783344 - call this R.

So a fraction p / q has weight 1 / (q * (q - 1) * R)
