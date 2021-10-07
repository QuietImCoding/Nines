from math import sqrt

shaperange = range(4,11)
fgrange= [ x for x in range(1,360) if (360.0 / x).is_integer() ]
bgrange= [ x for x in range(1,360) if (360.0 / x).is_integer() ]

for s in shaperange:
    for f in fgrange:
        for b in bgrange:
            if sqrt(s*b*f).is_integer():
                if (f < 20 and b < 20 and s > 5):
                    print(f"{abs(f-b)}, s:{s}, f:{f}, b:{b}, sqrt: {sqrt(s*b*f)}")

