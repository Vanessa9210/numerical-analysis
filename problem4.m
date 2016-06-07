%Problem4.m
%Expected value of the volume of a tetrahedron formed by four points chosen randomly inside the tetrahedron whose vertices are (0,0,0), (0,1,0),(0,0,1), and (1,0,0)
cases = 0;
for k = 1:1000
	x = rand;
	y = rand; %We generate points that are inside the tetrahedro.
	z = rand;
	if x+y+z<=1
		cases = cases +1;
	end
endfor
volume = cases / 1000 %finally we get the probability
