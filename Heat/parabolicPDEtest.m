L = 1;
T = 0.1;
Nx = 50;
Nt = 100;
alpha = 0.1;
u_left = 0;
u_right = 0;

u_exact = @(x, t) exp(-pi^2 * alpha * t') * sin(pi * x);

u0 = @(x) sin(pi * x);

u = solveParabolicPDE(L, T, Nx, Nt, alpha, u_left, u_right, u0);

x = linspace(0, L, Nx);
t = linspace(0, T, Nt + 1);
u_exact_values = u_exact(x, t);

u_exact_values = u_exact_values';

u_error = abs(u - u_exact_values);

figure;
subplot(1, 2, 1);
surf(t, x, u);
xlabel('t');
ylabel('x');
zlabel('u');
title('Numerical Solution');

subplot(1, 2, 2);
surf(t, x, u_error);
xlabel('t');
ylabel('x');
zlabel('Error');
title('Error');

