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

## ver_uv

## Author: az <az@az-think>
## Created: 2012-04-06

function X=ver_uv(W0,zac,L,M,barva,brisi);
%VER_UV resi problem veriznice iz sistema za u in v
%X=VER_UV(W0,zac,L,M)
%X je 2x(n+2) tabela koordinat vozlisc
%W0=[u0;v0] zacetna priblizka
%zac=[x_0,x_n+1;y_0,y_n+1]
%L palice, M mase
%barva je barva risanja
%brisi=1, ce zelimo pobrisati sliko
% X=ver_uv([-1 ;-1], [0 4; 1 3], [2, 3, 1, 2], [2, 3, 1, 2], 'r-o', 0)

	n = length(L) - 1;
	mi = zeros(1, n);

	mi = (1/2)*(M(1:end-1)+M(2:end));
	vsote_mi = [0, cumsum(mi)];
	
	W = fsolve('sistem_uv', W0, optimset('fsolve'), zac, L, vsote_mi);

	u = W(1);
	v = W(2);
	pom = v - u *vsote_mi

	n = length(L)-1;
	xi = zeros(1, n+1);
	eta = zeros(1, n+1);

	xi = L ./ sqrt(1+pom.^2);
	eta = xi.*pom;

	X = [zac(1,1) + cumsum(xi); zac(2,1) + cumsum(eta)];
	X = [zac(:,1) X]

	if brisi == 1
		clf
	end
	
	plot(X(1,:), X(2,:), barva);
endfunction
