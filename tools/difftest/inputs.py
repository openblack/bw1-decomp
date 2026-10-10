"""Random input helpers shared by the suites' state generators."""

import math
import struct


def f2b(x):
    """float32 bytes of x; values beyond float32 range round to +-inf like an x87 store."""
    try:
        return struct.pack("<f", x)
    except OverflowError:
        return struct.pack("<f", math.copysign(math.inf, x))


def b2f(b):
    return struct.unpack("<f", b)[0]


def f32(x):
    """x rounded to float32."""
    return b2f(f2b(x))


def fbits(x):
    """x as a float32 bit pattern, for passing a float argument on the stack."""
    return struct.unpack("<I", f2b(x))[0]


# Per-trial float distributions and their weights (percent).
PROFILES = ("normal", "walk", "equal", "tiny", "special")
PROFILE_WEIGHTS = (60, 15, 10, 10, 5)


class FloatSource:
    """Per-trial float generator; the profile decides the distribution.

    normal:  mostly uniform over the scale, with some integers, 0, +-1 and the scale itself
    walk:    a random walk per axis (realistic strokes and paths)
    equal:   a few distinct values, so ties and equal coordinates are common
    tiny:    values around small epsilons, +-0
    special: mostly normal, with +-inf, NaN, +-3.4e38 and denormals mixed in
    """

    def __init__(self, rng, profile, scale=1024.0):
        self.rng, self.profile, self.scale = rng, profile, scale
        self.pool = [rng.choice([0.0, 1.0, rng.uniform(-scale, scale), float(rng.randint(0, 1024))])
                     for _ in range(3)]
        self.walk = [rng.uniform(0, scale) for _ in range(3)]

    def __call__(self, axis=0):
        rng, profile = self.rng, self.profile
        if profile == "equal":
            return rng.choice(self.pool)
        if profile == "tiny":
            return rng.choice([0.0, -0.0, 1e-5, -1e-5, 1e-4, -1e-4, 1.0001e-4, 9.999e-5, 2e-4,
                               rng.uniform(-1e-3, 1e-3), rng.uniform(-2, 2)])
        if profile == "special" and rng.random() < 0.08:
            return rng.choice([math.inf, -math.inf, math.nan, 3.4e38, -3.4e38, 1e-40])
        if profile == "walk":
            self.walk[axis % 3] += rng.uniform(-20, 20)
            return self.walk[axis % 3]
        r = rng.random()
        if r < 0.1:
            return float(rng.randint(0, int(self.scale)))
        if r < 0.15:
            return rng.choice([0.0, 1.0, -1.0, self.scale])
        return rng.uniform(-0.1 * self.scale, self.scale)
