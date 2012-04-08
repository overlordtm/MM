## Copyright (C) 2012 az
## 
## This program is free software; you can redistribute it and/or modify
## it under the terms of the GNU General Public License as published by
## the Free Software Foundation; either version 2 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with Octave; see the file COPYING.  If not, see
## <http://www.gnu.org/licenses/>.

## sistem_uv

## Author: az <az@az-think>
## Created: 2012-04-06

function Z=sistem_uv(W,zac,L,vsote_mi)
%SISTEM_UV vrne vrednost sistema dveh enacb za veriznico
%enacbi 3.22 in 3.23 v knjigi
%Z=SISTEM_UV(W,zac,L,vsote_mi)
%W=[u;v], u in v neznanki
%zac=[x_0 x_n+1;y_0 y_n+1]
%L vektor palic
%vsote_mi so vsote mi-jev, definirane v 3.16
% Z=sistem_uv([2, -4], [2 4; 6 3], [1 2 3], [0 3 5])
	u = W(1);
	v = W(2);
	pom = v - u *vsote_mi

	n = length(L)-1;
	xi = zeros(1, n+1);
	eta = zeros(1, n+1);

	xi = L ./ sqrt(1+pom.^2);
	eta = xi.*pom;

	Z = [sum(xi) - (zac(1,2) - zac(1,1)) ; sum(eta) - (zac(2,2) - zac(2,1))];
	

endfunction
