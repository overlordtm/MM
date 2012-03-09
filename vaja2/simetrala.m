function [T,s]=simetrala(A,B);
%SIMETRALA vrne simetralo daljice AB
%[T,s]=SIMETRALA(A,B);
%T=[x;y] je tocka na simetrali, s=[s1;s2] je smerni vektor
%A=[x1;y1],B=[x2;y2]

T = (A+B)/2;
v = B - A;
s = [v(2); -v(1)]; % rotiran

