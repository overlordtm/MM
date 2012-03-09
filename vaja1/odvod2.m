function dp = odvod2(p)
%ODVOD vrne koeficiente odvoda polinoma
%dp=ODVOD(p)
%dp je vektor (vrstica) koeficientov odvoda 
%(od vodilnega proti prostemu clenu)
%p je vektor (vrstica) koeficientov polinoma

    deg = length(p) - 1;

    if(deg == 0)
        dp = [0];
    else
        dp = [deg:-1:1] .* p(1,1:end-1);
    end

end