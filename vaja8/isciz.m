function z=isciz(T1,T2,l,z0,tol);
%ISCIZ funkcija, ki resi enacbo z=asinh(ro*z) za
%zvezno veriznico
%z=ISCIZ(T1,T2,l,z0,tol) vrne priblizek za resitev z
%T1 in T2 sta krajisci veriznice oblike T1(a,A) in
%T2(b,B), l dolzina veriznice
%z0 zacetni priblizek, tol toleranca pri ustavitvi iteracije

ro=l/(T2(1)-T1(1))*sqrt(1-((T2(2)-T1(2))/l)^2);
napaka=tol+1;
while napaka>tol
    z=asinh(ro*z0);
    napaka=abs(z-z0);
    z0=z;
end