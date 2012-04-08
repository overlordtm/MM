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

## newton2d

## Author: az <az@az-think>
## Created: 2012-03-30

function Zk = newton2d(fun,jac,Z0,k,tol);
% NEWTON2D je Newtonova iteracija v 2d ali v vec dimenzijah
% Zk=newton2d(fun,jac,Z0,k,tol)
% fun je funkcija, jac je Jacobijeva matrika, Z0 zacetni priblizek,
% k je stevilo iteracij
% tol je toleranca med dvema zaporednima priblizkoma
	
	napaka = tol + 1;
	while (napaka > tol) && (k > 0)
		Zk = Z0 - feval(jac, Z0)\feval(fun,Z0);
		napaka = norm(Zk-Z0);
		Z0 = Zk;
		k--;
	end

	
endfunction
