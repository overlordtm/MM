function RP = fun(x,a)
%FUN vrne vrednosti na robu kvadrata x krat x
%vrednosti na stranicah zlozi v vrstice 
%RP=FUN(x,a)
%RP je matrika dimenzije 4x(n+2),
%prva vrstica leve vrednosti (od spodaj navzgor)
%druga vrstica zgornje vrednosti (od leve na desno)
%tretja vrstica desne vrednosti (od spodaj navzgor)
%cetrta vrstica spodnje vrednosti (od leve na desno)
n = length(x);
%RP = [ zeros(1,n); 1-x.^2; 2-2*x.^2; zeros(1,n)];
%RP=[a^2-x.^2;a^2-x.^2;x.^2-a^2;zeros(1,n)];
%RP=rand(4,n);
RP=[a^2-x.^2;x.^2-a^2;(x-a).*(x+a).*(x-a/3);zeros(1,n)];
%RP=[zeros(1,n);zeros(1,n);a^2-x.^2;zeros(1,n)];
%RP=rand(4,n);
%RP=[zeros(2,n);10*cos(x.^2-a.^2);5*sin(10*(a^2-x.^2))];
%RP=[x.^2-a^2; zeros(1,n);zeros(1,n);zeros(1,n)];
%RP=[a*ones(1,n);-a*x;-a*ones(1,n);-a*x];
