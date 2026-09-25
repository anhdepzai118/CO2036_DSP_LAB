n = -1:4;

x1 = [0, 0, 1, 3, -2, 0];
x2 = [0, 1, 2, 3, 0, 0];

y = x1 .* x2;

clf();

subplot(3, 1, 1);
plot2d3(n, x1);
title("Tin hieu x1(n)");
xlabel("n");
ylabel("x1(n)");
xgrid();

subplot(3, 1, 2);
plot2d3(n, x2);
title("Tin hieu x2(n)");
xlabel("n");
ylabel("x2(n)");
xgrid();

subplot(3, 1, 3);
plot2d3(n, y);
title("Tin hieu y(n) = x1(n) * x2(n)");
xlabel("n");
ylabel("y(n)");
xgrid();
