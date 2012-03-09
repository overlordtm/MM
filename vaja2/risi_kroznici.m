function risi_kroznici(T);
%RISI_KROZNICI Rise trikotniku ocrtano in vcrtano kroznico
%RISI_KROZNICI(T) narise trikotnik ter vcrtano in ocrtano kroznico
%skupaj s srediscema.
%Trikotnik je podan kot matrika 2x3 tock, prva vrstica so
%x koordinate.

A = T(:, 1);
B = T(:, 2);
C = T(:, 3);

[S,r] = ocrtana_kroznica(T);

clf;hold on; axis equal;

fi = linspace(0, 2*pi, 100);
xk = r*cos(fi)+S(1);
yk = r*sin(fi)+S(2);

TT=[T T(:,1)];
plot(TT(1,:), TT(2,:), 'b-o', 'LineWidth', 3, ...
    'MarkerSize',5,'MarkerFaceColor','b');

plot(xk, yk, 'r--', 'LineWidth', 3);
plot(S(1), S(2), 'k*', 'MarkerSize', 5);