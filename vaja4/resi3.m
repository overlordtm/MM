function x=resi3(M,b);
%RESI3 resevanje tridiagonalnega sistema, predstavljenega
%samo s tremi vektorji in desno stranjo
%x=RESI3(M,b)
%x je resitev sistema, M je matrika diagonal dim. nx3, v prvem
%stolpcu je spodnja obdiagonala (nicla na mestu (1,1)),
% v drugem diagonala, v tretjem pa zgornja obdiagonala (nicla
%na mestu (n,3)
%b je desna stran sistema

n=length(b);
x=zeros(n,1);
%eliminacije
for i=2:n
    faktor=M(i,1)/M(i-1,2);
    M(i,2)=M(i,2)-faktor*M(i-1,3);
    b(i)=b(i)-faktor*b(i-1);
end
%obratno vstavljanje
x(n)=b(n)/M(n,2);
for i=n-1:-1:1
    x(i)=(b(i)-x(i+1)*M(i,3))/M(i,2);
end