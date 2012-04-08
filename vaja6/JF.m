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

## JF

## Author: az <az@az-think>
## Created: 2012-03-30

function J=JF(X)
%JF je Jacobijeva matrika sistema z^3+1=0
%J je matrika 2x2, Z  trenutni priblizek
	a=3*(X(1)^2-X(2)^2);
	b=6*X(1)*X(2);
	J=[a,-b;b,a];
endfunction
