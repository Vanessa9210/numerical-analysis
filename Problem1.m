%Problem1.m
%Estimation for the probability of a neutron to emerge from the lead wall in section 13.3 Cheney
cases = 0;
for k = 1:1000
	x = 1; %first unit went round the neutron
	for j =2:8
		theta = rand*2*pi;
		x = x + cos(theta); %The neutron enters into the lead wall at a right angle to  wall and travels a unit distance
	endfor
	if x >= 5
		cases = cases + 1;
	end	
endfor
probability = cases/1000 %%finally we get the probability
