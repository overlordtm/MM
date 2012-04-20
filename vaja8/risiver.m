function T_min=risiver(T1,T2,l,tol,nt,barva);
%RISIVER narise diskretno veriznico in poisce minimum
%T_min=RISIVER(T1,T2,l,tol,nt,barva)
%T_min je tocka, kjer je veriznica najnizje
%T1 in T2 sta krajisci veriznice oblike
%T1=[a,A], T2=[b,B], l je dolzina,
%tol toleranca pri iteraciji,
%nt stevilo tock risanja in barva barva izrisa

z=isciz(T1,T2,l,1,tol);
a=T1(1);A=T1(2);b=T2(1);B=T2(2);
pom=(B-A)/l;
v=atanh(pom)+z
u=atanh(pom)-z
pom1=v-u;
C=(b-a)/pom1
D=(a*v-b*u)/pom1
lambda=A-C*cosh((a-D)/C)
T_min=[D;lambda+C];

%risanje
hold on
x=linspace(a,b,nt);
w=lambda+C*cosh((x-D)/C);
plot([a,b],[A,B],'ko','MarkerSize',30,'MarkerFaceColor','r');
plot(T_min(1),T_min(2),'ko','MarkerSize',30,'MarkerFaceColor','g');
plot(x,w,barva,'LineWidth',3);
grid on;
axis equal