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

## slika

## Author: az <az@az-think>
## Created: 2012-03-30

function slika(meje,k,tol,gostota_x,gostota_y,eps);
%SLIKA narise 'konvergenco' Newtonove metode
%SLIKA(meje,k,tol,gostota_x,gostota_y,eps)
%meje=[xmin xmax;ymin ymax]
%k in tol sta parametra za newton2d
%gostota_x in gostota_y je "stevilo pikslov v smeri x in y.
	

	clf
	x = linspace(meje(1,1), meje(1,2), gostota_x);
	y = linspace(meje(2,1), meje(2,2), gostota_y);
	y = fliplr(y);
	M = [eye(3); 0 0 0];
	colormap(M);
	A = 4*ones(gostota_y, gostota_x);
	Nicle = [-1, 0, 1/2, -sqrt(3)/2; 1/2. sqrt(3)/2];
	for i=1:gostota_y
		for j=1:gostota_x
			Z = newton2d('F', 'JF', [x(j), y(i)], k, tol);
			for c=1:3
				if norm(Z-Nicle(c, :)') < eps
					A(i, j) = c;
				end
			end
		end
	end
	image(A);
	

endfunction
