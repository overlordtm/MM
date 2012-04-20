function [U,x]=milnica_lu(a,fun,n);
%MILNICA_LU resuje Laplaceovo enacbo z LU razcepom
%na kvadratu [-a,a]^2
%[U,x]=MILNICA_LU(a,fun,n);
%U so vrednosti funkcije na mrezi
%x je vektor delilnih tock mreze
%a je desno krajisce kvadrata
%n je stevilo notranjih tock
%fun je funkcija, ki racuna robne vrednosti
[A,b,robovi]=naredi_matriko(a,fun,n);
u=A\b;
U=reshape(u,n,n)';
%obrobimo z robnimi vrednostimi
U=[robovi(1,:)' [robovi(4,2:n+1);U;robovi(2,2:n+1)] robovi(3,:)'];
x=linspace(-a,a,n+2);
%y=x;
clf;
hold on
enke=ones(1,n+2);
robx = [ -a*enke x a*enke fliplr(x)];
roby = [ x  a*enke fliplr(x)  -a*enke];
robovi1=[robovi(1,:),robovi(2,:),fliplr(robovi(3,:)),fliplr(robovi(4,:))];
robz=reshape(robovi1',1,4*length(robovi));
plot3(robx, roby, robz,'r','LineWidth',5);
surf(x,x,U);
axis equal
hold off
