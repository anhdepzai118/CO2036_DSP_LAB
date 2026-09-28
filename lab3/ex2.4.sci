n = -2:2;
xn = [2, 3, 4, 5, 6];

x_fold = xn($:-1:1);

xe = 0.5 * (xn + x_fold);
xo = 0.5 * (xn - x_fold);

x_rec = xe + xo;

disp("--- KẾT QUẢ TÍNH TOÁN ---");
disp("Tín hiệu gốc x(n):");          disp(xn);
disp("Thành phần chẵn xe(n):");       disp(xe);
disp("Thành phần lẻ xo(n):");        disp(xo);
disp("Tái tạo xe(n) + xo(n):");       disp(x_rec);

scf(0);
show_window();
clf();

subplot(2, 2, 1);
plot2d3(n, xn, style = 2); plot(n, xn, 'ro'); xgrid(1);
xlabel("n"); ylabel("x(n)");
title("1. Tín hiệu gốc x(n)");

subplot(2, 2, 2);
plot2d3(n, xe, style = 3); plot(n, xe, 'g^'); xgrid(1);
xlabel("n"); ylabel("xe(n)");
title("2. Thành phần chẵn xe(n)");

subplot(2, 2, 3);
plot2d3(n, xo, style = 5); plot(n, xo, 'bs'); xgrid(1);
xlabel("n"); ylabel("xo(n)");
title("3. Thành phần lẻ xo(n)");

subplot(2, 2, 4);
plot2d3(n, x_rec, style = 6); plot(n, x_rec, 'kd'); xgrid(1);
xlabel("n"); ylabel("xe(n) + xo(n)");
title("4. Tổng xe(n) + xo(n)");
