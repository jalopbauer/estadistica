# VENTAS TCL
# Las ventas diarias de un comercio siguen una Uniforme entre $ 10000 y $ 100000 pesos. Suponiendo independientes las ventas de los 
# distintos dias del a??o
# a) Cual es la probabilidad de que la venta anual supere 17 millones de pesos si el comercio strabaja 300 dias al a??o ? 
# b) Cuantos dias mas deberia abrir al a??o para lograr la misma cifra de ventas anuales con probabilidad 0.9? Es viable?

  E(x) = (a+b)/2 = (10000 + 100000)/2 = 55000
  V(x) = (b - a)^2/12 = 675000000

a)
Y = ??(i=1, n=300) Xi

E(Y) = 300 * 55000 = 16500000
??y = sqrt(300) * sqrt(675000000) = 450000

P(Y > 17000000) => 
  1 - pnorm(17*10^6 , 16.5*10^6 , 0.45*10^6)
  = 0.133 --> RTA a)
  
b)
  W = ??(i=1, 300 + n ) Xi --> P(W > 17000000) = 0.9
                          --> P(Z > ?) = 0.9 = 1 - P(Z < ?)
                          Z = qnorm(0.1) = -1.282
                          
E(w) = (300 + n) * E(Xi) = (300 + m) * 55000
??W = sqrt(300 + n) * 25981

=> Z = (17*10^6 - (300+n)*55000)/(sqrt(300+n)*25981) = -1.282
despejo n
n = 20 --> Z~= -1.29 --> Abriendo 20 dias mas se logra dicha probabilidad.
--------------------------------------------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------------------------------------------  

  
  Chew no se que tan bien esta este proximo ejercicio, esta escrito tal cual estaba en el pdf, asi que ni idea, fijate que onda


----------------------------------------------------------------------------------------------------------------------------  
  
  

# Ejercicio 3: Un conductor sospecha que su veh??culo tiene un consumo promedio de combustible en ruta
# de superior a los 5.6 litros / 100 km, que es lo que el fabricante indica en su publicidad. Para intentar
# convencerse toma nota del consumo en 11 viajes con los siguientes resultados.

# consumo [ litros/100km ] = [ 6.1 6.5 5.1 6.0 5.9 5.2 5.8 5.3 6.2 5.9 6.3 ]

# Asumir una distribuci??n normal para el consumo promedio.

#   3a) Armar el test correspondiente ??Es significativa al 1% la sospecha del propietario? Calcular el
#   consumo cr??tico que separa las regiones de rechazo y no rechazo.
#   3b) Calcular el pvalor del test anterior.
#   3c) Decidir en base a la misma muestra si el desv??o del consumo en ruta es significativamente mayor a
#   0.4 litros/km.
#   3d) Hallar un intervalo de confianza del 99% para el consumo promedio del veh??culo en cuesti??n.

se supone que el consumo medio del automovil sigue una distribucion N(?? , ??) siendo ambos parametros desconocidos
cuando tenes una poblacion normal con ?? y ?? desconocidos y un n <= 30 entonces tenes que usar Xprom ~ t(n-1)

$$$ t(n-1) = (Xprom - ??)/(??x/sqrt(n-1)) = (Xprom - ??)/(Sx/sqrt(n))

TH{ Ho : ?? = 5.6   ---> se trata de un contraste unilateral donde Ha sigue la siguiente regla
    Ha : ?? > 5.6        --> si Xprom <= k --> Acepta Ho
}                       --> si Xprom >  k --> Rechaza Ho

bajo Ho con los datos (Xprom = 5.8454 , Sx = 0.4612)
  t(10)[5.6 , 0.4612/sqrt(11)] = t(10) (5.6 , 0.139)
  
  
  
c) Ho: ?? <= 0.4 --> al tener un ?? uso Chi^2
   Ha: ?? >  0.4
   
   Chi^2 obs = (n-1)*S^2/??o^2 = 10 * 0.4612^2/0.4^2 = 13.29 ----> No rechazo Ho
   Chi^2 (10 , 99) = 23.20      P(Chi^2 > 13.29) = 0.20
   
d) ?? = 0.01 --> t(1-??/2) = t(0.995 , 10) = 3.169
    Ls = 5.84 + (3.169 * 0.46)/sqrt(11) = 6.28
    Li = 5.84 - (3.169 * 0.46)/sqrt(11) = 6.28
    
--------------------------------------------------------------------------------------------------------------------------
# Ejercicio 4: Se construyeron tres intervalos de confianza para la media poblacional a partir de muestras de una variable
# aleatoria exponencial de par??metro ??. En la tabla se indica el n??mero de muestras n y los limites superior e inferior de
# cada intervalo [ LI , LS ].
# 4a) Ordenarlos seg??n la confianza de menor a mayor. Se espera que justifique adecuadamente sin realizar c??lculos de
#   confianza. Si quiere realizarlos, recuerde que la media de una exponencial es 1/ ?? y su varianza es 1/??2
#   
#           n LI LS
#   IC ???A??? 100 3 7
#   IC ???B??? 100 2 8
#   IC ???C??? 1000 2 8
  
IC para ?? : L = 2*Z(1-??/2)*S/sqrt(n) --> Z(1-??/2) = L*sqrt(n)/2*S
                                                                --> S = 1/sqrt(??^2) = 1/?? = Xprom
Za = (4 * 10)/2*5 = 4
Zb = (6*10)/2*5 = 6
Zc = (6*sqrt(1000))/2*5 = 18.97

1-??/2 = pnorm(Za) --> ??a = 2*[1-pnorm(Za)]
                  --> ??a = 6.33*10^-5
                  --> 1-??a = 0.9999....

El orden de Z es el de la Confianza confA < ConfB < ConfC 