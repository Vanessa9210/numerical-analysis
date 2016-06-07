%PROBLEM NO. 2 

% function ap = simpson(f,a,b,n,tol)
%it is a method to find an approximation of the integral of f (x).
%inputs
% f: funtion f(x)
% a:lower limit
% b=upper limit
% n=number of iterations
% tol
%outputs
%ap=approximation of the integral of f (x)
%principal function

function ap = simpson(f,a,b,n,tol)
h=(b-a)/n;
x0=feval(f,a)+feval(f,b);
x1=0;
x2=0;
i=1;
while abs(x0-h*(x0+2*x2+4*x1)/3)<=tol || i<=n
	x = a + i*h;
	if mod(i,2)==0
		x2=x2+feval(f,x);
	else
		x1=x1+feval(f,x);
	end
	i=i+1;
end
ap=h*(x0+2*x2+4*x1)/3;
end
