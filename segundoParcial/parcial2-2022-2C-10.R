#2do Parcial 2C 2022

#Ejercicio 1
##
En una operacion de suma, una computadora redondea cada numero al entero mas proximo antes de realizarla (Redondeo simetrico)
Por ejemplo para la suma original: 4.1 + 5.5 + 6.8 = 16.4 la computadora hara 4+6+7 = 17. Si los errores de redondeo se suponen
independientes y uniformemente distribuidos en el intervalo [-0.5 , 0.5]
a) Calcular la probabilidad de que al sumar 1200 numeros, la magnitud del error total exceda el valor de 12
b) Cuantos numeros deberan sumarse para que la probabilidad de que el error total no supere 12 osea 0.99?
##
1a)
n = 1200
n >= 30? --> si
a =-0.5
b =0.5
U~[-0.5 , 0.5] 
=> E(U) = (a+b)/2  = (-0.5 + 0.5)/2 = 0
=> V(U) = (b-a)^2/12 = (-1)^2/12 = 1/12
Eu =(a+b)/2
Vu =((b-a)^2)/12

al ser n >= 30 podemos usar TCL 
x~N(mux , sigmax)

muX => sumatoria de la esperanza desde 1 a 1200 --> 1200 x 0 = 0
vuX => 1200 . 1/12 = 100 --> sigX = sqrt(vuX) = 10
# Entonces el nuevo X~N(0 , 10) --> yo quiero P(x>12) =>

rta1 = 1-pnorm(12 , 0 , 10)

1b) P(x > 12) = 0.01 o P(x < 12) = 0.99
#por TCL como en la primera parte
#n? 
Y~N(muY , sigmaY) 
=> muY = n . 0 = 0
=> vuY = n . 1/12 = n/12 => sigmaY = sqrt(vuY) = sqrt(n)/sqrt(12)

Y~N(0 , sqrt(n)/sqrt(12))
#Si cuando n = 1200, pNorm(12 , 0 , 10 ) = 0.88
# Quiero que de 0.99 entonces mi desvio tiene que ser mas chico (la media va a ser 0) -> con lo cual son menos N
#Estandarizo 
z = (x - mu)/sigmaY => (12 - 0)/sigmaY

# hago qnorm(0.99) para sacar la Z y esa Z la reemplazo en la ecuacion y despejo n.
n = 320
sigmaY = 5.164
=> P(Y<12) = pnorm(12 , 0 , 5.164) = 0.9899 ~= 0.99

################################################################

Ejercicio 2
Una linea de subte tiene 10 estaciones incluyendo las terminales. Es decir que cada tren sale de la estacion 1 y llega a la 
estacion 10. Para cierto tren la cantdidad de personas "X" que sube en cada estacion se puede asumir como Normal N~(50, 10) 
excepto en la ultima estacion que se bajan todos. La cantidad de personas "Y" que baja en cada estacion se puede asumir
como normal N~(50 , 5), excepto en la primera estacion que todos suben.
a) Cual es la probabilidad de que mas de 400 personas hayan subido a un tren que recorrio las 10 estaciones?
b) cual es la probabilidad de que haya mas de 40 personas arriba del tren viajando entre las estaciones 2 y 3?
c) cual es la probabilidad de que en una estacion cualquiera (que no sea terminal) se agreguen mas de 10 personas al tren?
#
2a) 
# son 10 estaciones de 1 a 9 inclusive , Todos bajan en la ult, todos suben en la primera.

# suben X personas -> N~(muX = 50, sigX = 10) -> de 1-9
# bajan Y personas -> N~(muY = 50, sigY = 5) -> de 2 a 10

P(X > 400) => en n = 9 estaciones.
X` ~ N(muX` , sigX`) 
muX` = 9 . E(X) = 450 -> lo pienso como suma de 9 x X~N(50 , 10) (es una normal la suma de normales)
sigX` = 9. V(x) = 9.100 = 900
sqrt(sigX`) = 30
=> X~N(450 , 30)
=> P(x` > 400) = 1-pnorm(400, 450, 30) = 0.9522 

b)
P(W > 40) --> W --> 2 estaciones en las que sube gente (n = 2)
                --> 1 estaciones en la que baja gente (m = 1)
W~N(muW , sigmaW) #suma y resta de normales.
                  muW = 2. E(x) - 1.E(Y) => 100 - 50 = 50
                  Vw = 2.(10)^2 + 1.(5)^2 => las varianzas no se restan
                  Vw = 200 + 25 = 225
                  sigmaW = sqrt(225) = 15
W~N(50 , 15)
P(w>40) = 1-pnorm(40, 50, 15) ~= 0.7475

c)
Me piden que X-Y >10
W` = x-y  W`~N(muW` , sigmaW`)
            muW` = muX - muY = 50 - 50 = 0
            Vw` = 10^2 + 5^2 = 125 => sigmaW` = sqrt(Vw`) = 5 * sqrt(5)
            
W` ~ N(0 , 5*sqrt(5))
P(w` > 10) => en cualquier estacion sin contar las terminales. -> probabilidad que pase X-Y > 10
= 1 - pnorm(10 , 0 , 5 * sqrt(5)) = 0.1855
######################################################
Ejercicio 3

  n   LI   LS
A 51  43   22
B 92  28   21
C 68  22    9

Se construyeron tres intervalos de confianza para la proporcion poblacional (p) a partir de muestras de una variable aleatoria
X~Bernoulli(p). En la tabla se indica el numero de muestras n y lo limites superior e inferior de cada intervalo [LI, LS ].
a)Ordenarlos segun la confianza de menor a mayor. justificar mediante calculos e indicar claramente en su hoja el orden elegido.

X~Ber(p) p-> proporcion poblacional

a) 

A-> n = 400 IC[LI = 0.3 ,LS = 0.4] --> p^ = (0.4 + 0.3)/2 = 0.35

[p^ + Zalf/2 *sqrt((p^ (1-p^))/n) , p^ + Z (1-alf/2) *sqrt((p^(1-p^))/n)]
##Para no tener que escribir estos nros paja, los creo variable.
#Za = Zalf/2 
#-Za = Z(1-alf/2)

LS - LI = 2 * -Za => 0.1/2 = -Za --> -Za = 0.05 * 20/sqrt(0.35 * 0.85) => Za = -2,096 
                                                                          -> pnorm(2.096) - pnorm(-2.096)
                                                                          -> 0.964 -> podemos decir que es un IC de 96%
B-> n = 400 LS = 0.42  p^ = (0.42 + 0.28)/2 = 0.35
            LI = 0.28
    LS - LI = 2 * -Za * sqrt((p^ (1-p^))/20) --> -Za = 2.935
                                                  Za = -2.935
                                                  --> pnorm(2.935) - pnorm(-2.935) ~= 0.996 -> IC = 99%

C-> n = 100 LI = 0.28     p^ = 0.35
            LS = 0.42  
            
    LS - LI = 2 * -Za *sqrt((p^ (1-p^))/20) --> -Za = 1.467
                                                 Za = -1.467
                                                 --> pnorm(1.467) - pnorm(-1.467) = 0.857 => IC = 86%
                      Ordenado de menor a mayor segun la confianza C,A,B

#################################################################

Ejercicio 4
Negocio Agricola
Xprom = 64g
cliente compro un maple (30 huevos) y mide el peso de 10 huevos
        Peso[g] = [57 62 60 68 63 65 63 59 65 60]
se asume que el peso tiene distribucion normal
a) Elaborar un TH que ponga aprueba lo que informa el vendedor y que sea acorde a la preocupacion del cliente.
Hallar el peso critico que separa las regiones de rechazo y no rechazo utilizando un nivel de significacion de 10%.
Indicar que decision toma.
b) Cual es el Valor de confianza del cual cambiaria la decision del test anterior?
c) Por otro lado se asume el desvio <= 3g . Contrastarlo con un Test adecuado de 10% signifciacion. Informar Pvalue
d) El cliente continua midiendo el maple (30 huevos) y solo 18 siguen lo que dice el vendedor. Hallar un IC = 95% para la 
proporcion de huevos. 

a)
  Xpr = X promedio
  Xobs = X promedio observado
Xpr = 64g por unidad
Xobs = (??(i = 1 , n = 10) pi)/10 = 62.2g --> Xobs
                                        --> S^2 = ??(n = n) (Xi - Xpr)^2/n-1  = 10.84

X~N(62.2 , S^2 =10.84) --> Nivel de significacion = 10% = 0.1 = ??

TH: Ho : ??0 >= 64g       Xobs = 62.2g
    Ha : ??0 <  64g       X~N(62.2 , 10.84) n = 10
                t(n-1) = (Xpr - ??0)/S/sqrt(n) = -1.7288 = t(9)
                                                      --> Pt(-1.7288, 9) = 0.0589 --> pvalue
                qt(0.1 , 9) = tCritico                --> 0.0589 < 0.1 --> rechazo Ho
                tcritico = -1.3830                  o --> -1.7288 < -1.383 --> rechazo Ho
b)
Quiero no rechazar Ho --> 0.0589 >= ?? --> aca mi nivel de confianza seria mal para no rechazar Ho
                    con ?? <= 0.0589 -> con un 95% -> ?? = 0.05
                    podriamos NO rechazar Ho.
c) TH { Ho: ??0 <= 3g
        Ha: ??0 > 3g}  ---> 10% = ?? = 0.1   -> USO Chi^2 (n-1) = (n-1)*S^2/??0^2 --> Chi(9) = 10.84
                          S^2 = 10.84
                          ??0^2 = 9 
  qchisq(0.1 , 9) = 4.16
  pchisq(10.84 , 9) = 0.7131 --> pvalue --> 1- 0.7131 = 0.2868 -> pvalue
  
  --> 0.2868 > 0.1 --> No rechazo Ho (Me da mas error)
  
d) 30 Huevos --> n = 30 --> Solo 18 cumplen con lo informado 
             --> muestra grande.

p^ = exitos/total == 18/30 == 0.6  --> Ber(0.6)  --> IC = 95%
                                                     ?? = 0.05
                                                     ??/2 = 0.025
  [P^ + Z(??/2)*sqrt((p^(1-p^))/n) < p < P^ + Z(1-??/2)*sqrt((p^(1-p^))/n) ]
                                                     Z(??/2) = qnorm(0.025) = -1.96
                                                     Z(1-??/2) = 1.96
Reemplazo y el valor me queda
[0.4247 , 0.7753] = 95%
