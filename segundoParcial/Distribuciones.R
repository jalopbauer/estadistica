#Machete de fórmulas en R
#Binomial
pbinom(q,n,p) # p(X<=q)
pbinom(q-1,n.p) # p(X<q)
1-pbinom(q,n,p) # p(X>q)
1-pbinom(q-1,n.p) # p(X>=q)
dbinom(q,n,p) # p(X=q)

#Geométrica
pgeom(q,p) # p(X<=q)
pgeom(q-1,p) # p(X<q)
1-pgeom(q,p) # p(X>q)
1-pgeom(q-1,p) # p(X>=q)
dgeom(q,p) # p(X=q)

#Binomial Negativa
pnbinom(q,r,p) # p(X<=q)
pnbinom(q-1,r.p) # p(X<q)
1-pnbinom(q,r,p) # p(X>q)
1-pnbinom(q-1,r.p) # p(X>=q)
dnbinom(q,r,p) # p(X=q)

#Hipergeométrica
phyper(q,D,N,n) # p(X<=q)
phyper(q-1,D,N,n) # p(X<q)
1-phyper(q,D,N,n) # p(X>q)
1-phyper(q-1,D,N,n) # p(X>=q)
dhyper(q,D,N,n) # p(X=q)

#Poisson
ppois(q,lambda) #p(X<=q)
ppois(q-1,lambda) # p(X<q)
1-ppois(q,lambda) # p(X>q)
1-ppois(q-1,lambda) # p(X>=q)
dpois(q,lambda) # p(X=q)

#Uniforme
punif(q,a,b) # p(X<q)
1-punif(q,a,b) # p(X>q)
punif(q2,a,b)-punif(q1,a,b) # p(q1<X<q2)

#Exponencial
pexp(q,lambda) # p(X<q)
1-pexp(q,lambda) # p(X>q)
pexp(q2,lambda)-pexp(q2,lambda) # p(q1<X<q2)

#Gamma
pgamma(q,alfa,lambda) # p(X<q)
1-pgamma(q,alfa,lambda) # p(X>q)
pgamma(q2,alfa,lambda)-pgamma(q1,alfa,lambda) # p(q1<X<q2)

#Normal
pnorm(q,mu,sg) # p(X<q)
1-pnorm(q,mu,sg) # p(X>q)
pnorm(q2,mu,sg)-pnorm(q1,mu,sg) # p(q1<X<q2)
qnorm(p,mu,sg) # percentil p

#t de Student
pt(q,n) # p(X<q)
1-pt(q,n) # p(X>q)
qt(p,n) # percentil p

#Chi²
pchisq(q,n) # p(X<q)
1-pchisq(q,n) # p(X>q)
qchisq(p,n) # percentil p