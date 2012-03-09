function dy = fun (x, y, a)
% FUN vrne levo stran DE
% dy=FUN(x,y)
% dy je y'
% x je neodvisna spremenljivka y=y(x)
	dy = -a * y + exp(-x)
endfunction
