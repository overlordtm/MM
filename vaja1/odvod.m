function dp = odvod(p)
%ODVOD vrne koeficiente odvoda polinoma
%dp=ODVOD(p)
%dp je vektor (vrstica) koeficientov odvoda 
%(od vodilnega proti prostemu clenu)
%p je vektor (vrstica) koeficientov polinoma

    deg = length(p);

    if(deg == 1)
        dp = [0];
    else
        % p = [6,3,4,2,0]
        Mp = diag([deg:-1:0]); 
        M = Mp(1:end-1, 2:end);
        dp1 = M * transpose(p);
        dp = transpose(dp1(2:end));
    end

end