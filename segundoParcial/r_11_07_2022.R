# 1
# a (u y d sabiendo pa y pb)
a = 3
b = 6
pa = 0.25
pb = 0.95
qa = qnorm(pa)
qb = qnorm(pb)
u = (qa*b-qb*a)/(qa-qb)
d = (a-u)/qa
# b (a > b)
ua = 3.872432
da = 1.29347
ub = 3
db = 0.5
uDiff = ua - ub
dDiff = da + db
p = 1-pnorm(0, uDiff, dDiff)
# 2
u = 0.1
d = 0.03
# a
piezasPorDia = 40
u_piezasPorDia = piezasPorDia * u
d_piezasPorDia = piezasPorDia * d

perdidaPorPieza = 250
u_perdidaPorDia = perdidaPorPieza * u_piezasPorDia
d_perdidaPorDia = perdidaPorPieza * d_piezasPorDia

diasLaboralesEnMes = 25
u_perdidaMeslaboral = diasLaboralesEnMes * u_perdidaPorDia
d_perdidaMeslaboral = diasLaboralesEnMes * d_perdidaPorDia 

# b
1-pnorm(22000, u_perdidaMeslaboral, d_perdidaMeslaboral)