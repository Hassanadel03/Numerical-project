L = 1;
Nx = 50;
Ny = 50;
u_left = 0;
u_right = 0;
u_top = 0;
u_bottom = 0;

u_exact = @(x, y) sin(pi * x) * sin(pi * y);

f = @(x, y) 2 * pi^2 * sin(pi * x) * sin(pi * y);

u = solveEllipticPDE(L, Nx, Ny, f, u_left, u_right, u_top, u_bottom);

[x, y] = meshgrid(linspace(0, L, Nx), linspace(0, L, Ny));
u_error = abs(u - u_exact(x, y));

figure;
subplot(1, 2, 1);
surf(x, y, u);
xlabel('x');
ylabel('y');
zlabel('u');
title('Numerical Solution');

subplot(1, 2, 2);
surf(x, y, u_error);
xlabel('x');
ylabel('y');
zlabel('Error');
title('Error');

