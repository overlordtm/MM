function [S,r]=ocrtana_kroznica(T);
%OCRTANA_KROZNICA  Trikotniku ocrtana kroznica
%[S,r]=OCRTANA_KROZNICA(T) vrne sredisce in radij trikotniku T
%ocrtane kroznice. T je matrika 2x3, kjer prva vrstica predstavlja
%x koordinate. S=[x;y], r je stevilo

A = T(:,1);
B = T(:,2);
C = T(:,3);

[T1, s1] = simetrala(A, B);
[T2, s2] = simetrala(B, C);

S = presek_premic(T1, T2, s1, s2);
r = norm(A-S);

end