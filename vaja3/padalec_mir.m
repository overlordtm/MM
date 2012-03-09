function [y,v,t]=padalec_mir(parametri,y0,tk,n);
%PADALEC_MIR izracuna visine padalca ob ustreznih casih
%[y,t]=PADALEC_MIR(parametri,y0,tk,n)
%parametri=[m,c,S]
%y0 je zacetna visina
%m je masa, c je koeficient upora (prib. 1 za normalen skok), S presek padalca pravokotno
%na smer padanja
%za gostoto zraka privzamemo ro=1.3 kg/m^3, tezni pospesek g=9.8 m/s^2
%tk je koncni cas, do katerega gledamo padanje (pred odprtjem padala!!!)
%n je stevilo enakomerno razporejenih casovnih trenutkov opazovanja
%y so visine padalca ob casih t (obe kolicini sta vektorja dolzine n)

t=linspace(0, tk, n);
[t, Yres]=ode45(@sistem, t, y0, parametri)
y=Yres(:,1);
v=Yres(:,2); 

endfunction

function dY=sistem(t, Y, parametri)
%sistem opisuje sistem dif enacb za padalca pri navpicnem padu
%dY=sistem(t, Y, parametri)
%t je cas, Y=[y1;y2]=[y;v]
% parametri=[m,c,S]

ro=1.3; %1.3km/m3 gostota zraka
g=9.8; %teznostni pospesek

%y1.=y2
%y2.= (ro*cu*S)/(2m) * y2^2-g
dY=[Y(2);-g+ro*parametri(2)*parametri(3)/(2*parametri(1))*Y(2)^2];
