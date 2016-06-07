
datos=[simpson(@(x)((x^2)*exp(-x)+cos(x)), -1, 1, 100, 10^(-6)) simpson(@(x)((x^2)*exp(-x)+cos(x)), -1, 1, 100, 10^(-8)) simpson(@(x)(sin(x)), 0, pi, 100, 10^(-8)) simpson(@(x)(cos(x)), 0, (9*pi)/2, 100, 10^(-6)) simpson(@(x)(sqrt(x)), 0, 1, 100, 10^(-8)) simpson(@(x)(sqrt(x)*log(x)), eps, 1, 100, 10^(-8)) simpson(@(x)(tan(sin(x))-sin(tan(x))), 0, pi, 100, 10^(-8)) simpson(@(x)(1/(3*x-1)), 0, 1, 100, 10^(-4)) simpson(@(x)(x^(8/3)*(1-x)^(10/3)), 0, 1, 100, 10^(-8)) simpson(@(x)(x^(25)*(1-x)^2), 0, 1, 100, 10^(-8)) simpson(@(x)(1/((x-3)^2 + 0.01) + 1/((x-9)^2 + 0.04)-6), 0, 2, 100, 10^(-6))];


fprintf('\t f(x) \t\t\t\t\t a \t b \t # iter \t tol \t\t valor  \n')
fprintf('(x^2)*exp(-x)+cos(x)\t\t\t\t %d \t %d \t %d \t\t %s \t %10.6f\n',-1,1,100,'10^(-6)',datos(1))
fprintf('(x^2)*exp(-x)+cos(x)\t\t\t\t %d \t %d \t %d \t\t %s \t %10.6f\n',-1,1,100,'10^(-8)',datos(2))
fprintf('\tsin(x)\t\t\t\t\t %d \t %1.3f \t %d \t\t %s \t %10.6f\n',0,pi,100,'10^(-8)',datos(3))
fprintf('\tcos(x)\t\t\t\t\t %d \t %2.2f \t %d \t\t %s \t %10.6f\n',0,9*pi/2,100,'10^(-6)',datos(4))
fprintf('\tsqrt(x)\t\t\t\t\t %d \t %d \t %d \t\t %s \t %10.6f\n',0,1,100,'10^(-8)',datos(5))
fprintf('\tsqrt(x)*log(x)\t\t\t\t %1.3f \t %d \t %d \t\t %s \t %10.6f\n',eps,1,100,'10^(-8)',datos(6))
fprintf('tan(sin(x))-sin(tan(x))\t\t\t\t %d \t %1.3f \t %d \t\t %s \t %10.6f\n',0,pi,100,'10^(-8)',datos(7))
fprintf('\t1/(3*x-1)\t\t\t\t %d \t %d \t %d \t\t %s \t %10.6f\n',0,1,100,'10^(-4)',datos(8))
fprintf('x^(8/3)*(1-x)^(10/3)\t\t\t\t %d \t %d \t %d \t\t %s \t %10.6f\n',0,1,100,'10^(-8)',datos(9))
fprintf('x^(25)*(1-x)^2\t\t\t\t\t %d \t %d \t %d \t\t %s \t %10.6f\n',0,1,100,'10^(-8)',datos(10))
fprintf('1/((x-3)^2 + 0.01) + 1/((x-9)^2 + 0.04)-6\t %d \t %d \t %d \t\t %s \t %10.6f\n\n\n',0,2,100,'10^(-6)',datos(11))
