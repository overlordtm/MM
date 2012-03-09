function Tp=presek_premic(T1,T2,s1,s2)
%PRESEK_PREMIC Presecisce dveh premic
%Tp=PRESEK_PREMIC(T1,T2,s1,s2) vrne koordinati presecisce premic
%Tp=[x;y] je tocka presecisca
%T1 in s1 sta tocka in smerni vektor, ki podajata prvo premico
%T2 in s2 sta tocka in smerni vektor, ki podajata drugo premico

A = [s1, s2];
b = T2-T1;
x =  A\b;

Tp = T1+x(1)*s1;