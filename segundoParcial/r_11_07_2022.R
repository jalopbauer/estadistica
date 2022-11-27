# 1
# a
a = 3
b = 6
pa = 0.25
pb = 0.95
qa = qnorm(pa)
qb = qnorm(pb)
u = (qa*b-qb*a)/(qa-qb)
d = (a-u)/qa