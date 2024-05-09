% Example: dy1/dt = -2*y1 + y2, dy2/dt = y1 - 2*y2, dy3/dt = -y1 + y3
f = @(t, y) [-2*y(1) + y(2); y(1) - 2*y(2); -y(1) + y(3)];

tspan = [0, 2];
y0 = [1; 0; 2];

N = 100;

[t, y] = solveODESystem(f, tspan, y0, N);

figure;
subplot(3, 1, 1);
plot(t, y(1, :), '-', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('y_1(t)');
title('Solution of dy_1/dt = -2*y_1 + y_2');

subplot(3, 1, 2);
plot(t, y(2, :), '-', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('y_2(t)');
title('Solution of dy_2/dt = y_1 - 2*y_2');

subplot(3, 1, 3);
plot(t, y(3, :), '-', 'LineWidth', 2);
xlabel('Time (t)');
ylabel('y_3(t)');
title('Solution of dy_3/dt = -y_1 + y_3');

