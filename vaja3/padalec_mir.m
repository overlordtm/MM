function [y,v,t]=padalec_mir(parametri,zac,tk,n)
%PADALEC_MIR izracuna visine padalca ob ustreznih casih
%samo visino in hitrost v vertikalni smeri
%[y,v,t]=PADALEC_MIR(parametri,zac,tk,n)
%parametri=[m,c,S]
%zac=[y0;v0] sta zacetna visina in zacetna hitrost
%m je masa, c je koeficient upora (prib. 1 za normalen skok), S presek padalca pravokotno
%na smer padanja
%za gostoto zraka privzamemo ro=1.3 kg/m^3, tezni pospesek g=9.8 m/s^2
%tk je koncni cas, do katerega gledamo padanje (pred odprtjem padala!!!)
%n je stevilo enakomerno razporejenih casovnih trenutkov opazovanja
%y so visine padalca ob casih t (obe kolicini sta vektorja dolzine n)
%v so hitrosti padalca ob casih t

t=linspace(0,tk,n);
[t,Yres]=ode45(@sistem, t, zac, parametri);
y=Yres(:,1);
v=Yres(:,2);

function dY=sistem(t,Y,parametri)
%SISTEM opisuje sistem dif. enacb za padalca pri navpicnem padu
%dY=SISTEM(t,Y,parametri)
%t je cas, Y=[y1;y2]=[y;v]
%parametri=[m,c,S]

ro=1.3;
g=9.8;
%dY = [Y(2);Y(1)];
dY=[Y(2);-g+ro*parametri(2)*parametri(3)/(2*parametri(1))*Y(2)^2];
