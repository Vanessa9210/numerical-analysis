%PROBLEM NO. 2
% function [bren itmax] = Brent(func,x1,x2,tol)

%inputs
% func=funtion f(x)
% x1=lower limit
% x2=upper limit
% tol
%outputs
% bren:root
%itmax=number of iterations

% principal function

function [bren itmax] = Brent(func,x1,x2,tol)
ITMAX=100;
EPS=3.0*(10^-8);
a=x1;
b=x2;
fa=feval(func,a);
fb=feval(func,b);
fprintf('Valores iniciales:\nf(a)=%10.6f\nf(b)=%10.6f\n',fa,fb);
iter=1; % para guardar el numero de iteraciones
if((fa>0) & (fb>0)) || ((fa<0) & (fb<0));
	fprintf('Procedimiento terminado sin exito\n');
	bren=b;
	itmax=iter;
	return
end
c=b;
fc=fb;
while iter<ITMAX;
	if((fb>0) & (fc > 0)) || ((fb<0) & (fc<0));
		c=a; 
		fc=fa;
		d=b-a;
		e=d;
		bren=b;
		itmax=iter;
		return
	end
	if abs(fc)<abs(fb);
		a=b;
		b=c;
		c=a;
		fa=fb;
		fb=fc;
		fc=fa;
		bren=b;
		itmax=iter;
		return
	end
	tol1=2*EPS*abs(b)+ 0.5*tol; %Convergence check.
	xm=5*(c-b);
	if(abs(xm)<=tol1) || (fb==0);
		bren=b;
		itmax=iter;
		return
	end
	if(abs(e)>=tol1) & (abs(fa)>abs(fb));
		s=fb/fa; %Attempt inverse quadratic interpolation.
		if(a==c);
			p=2*xm*s;
			q=1-s;
		else
			q=fa/fc;
			r=fb/fc;
			p=s*(2*xm*q*(q-r)-(b-a)*(r-1));
			q=(q-1)*(r-1)*(s-1);
		end
		if(p>0); %Check whether in bounds.
			q=-q;
			p=abs(p);
		end
		if(2*p < min(3*xm*q-abs(tol1*q),abs(e*q)));
			e=d; %Accept interpolation.
			d=p/q;
		else
			d=xm; %Interpolation failed, use bisection.
			e=d;
		end
	else %Bounds decreasing too slowly, use bisection.
		d=xm;
		e=d;
	end
	a=b; %Move last best guess to a.
	fa=fb;
	if(abs(d)>tol1); %Evaluate new trial root.
		b=b+d;
		bren=b;
		itmax=iter;
		return
	else
		if sign(xm)==1;
			b=b+abs(tol1);
		else
			b=b-abs(tol1);
		end
	end
	fb=feval(func,b);
	iter=iter+1;
end
fprintf('The function Brent exceeded the maximum of iterations \n');
bren=b;
itmax=iter;
end
