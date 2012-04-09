function [r,u]=poves_opne(f,R,n)
%POVES_OPNE racuna obliko prereza opne, napete
%na krozno zanko
%[r,u]=POVES_OPNE(f,R,n)
%r je delitev v r-smeri
%u je vektor priblizkov za resitev
%f je desna stran enacbe u''+1/r u'=f(r)
%R je radij krozne zanke
%n je stevilo notranjih delilnih tock
%uporabimo kompakten zapis matrike (resi3.m)

r=linspace(0,R,n+2)';%stolpec
h=r(2)-r(1);
desna=h^2*feval(f,r(1:end-1));
M=[[0;1-h./(2*r(2:n+1))],-2*ones(n+1,1),[2;1+h./(2*r(2:n));0]];
u=resi3(M,desna);
u=[u;0];
