n = -2:2;
x = [0, 1, 3, -2, 0];

x_rev = x($:-1:1);

x_e = 0.5 * (x + x_rev); 
x_o = 0.5 * (x - x_rev);

clf();
subplot(3, 1, 1);
plot2d3(n, x);
title("Tin hieu ban dau x(n)");
xlabel("n");
ylabel("x(n)");
xgrid();

subplot(3, 1, 2);
plot2d3(n, x_e);
title("Thanh phan tin hieu chan x_e(n)");
xlabel("n");
ylabel("x_e(n)");
xgrid();

subplot(3, 1, 3);
plot2d3(n, x_o);
title("Thanh phan tin hieu le x_o(n)");
xlabel("n");
ylabel("x_o(n)");
xgrid();
