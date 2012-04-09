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

## risi_opno

## Author: az <az@az-zeus>
## Created: 2012-04-09

function [ ret ] = risi_opno ()
	f = inline('0.*x + 1');

	[ r u ] = poves_opne(f, 10, 60);
	U = flipud(u);
	polar3d([U U U U], 0, 2*pi, 0, 10, 1,'surf');
endfunction
