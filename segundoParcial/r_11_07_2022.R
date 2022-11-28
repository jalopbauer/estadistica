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

# 3 
# a IC a partir de p valor pvalor
n = 2253
numPos = 1262
icPorcentaje = 0.95

pVal = numPos/n
notPVal = 1 - pVal

alfa = 1 - icPorcentaje
alfa_2 = alfa / 2
notAlfa_2 = 1 - alfa_2

zAlfa_2 = qnorm(alfa_2)
zNotAlfa_2 = qnorm(notAlfa_2)

izqIC = pVal + zNotAlfa_2 * sqrt((pVal* notPVal)/n)
derIC = pVal + zAlfa_2 * sqrt((pVal* notPVal)/n)
