clc; clear; clf;
scf(1); 
clf;    

t = 0:0.01:5;
xa = 3*cos(5*t + %pi/6);
subplot(2,1,1);
plot(t, xa, 'b-');
title('1.3(a) x_a(t) = 3cos(5t + \pi/6) -> Tuan hoan');
xlabel('t (giay)'); ylabel('Bien do');
xgrid();

n = 0:1:50;
xn = 3*cos(5*n + %pi/6);
subplot(2,1,2);
plot2d3(n, xn, 2); 
plot(n, xn, 'ro');
title('1.3(b) x(n) = 3cos(5n + \pi/6) -> Khong tuan hoan');
xlabel('n (mau)'); ylabel('Bien do');
xgrid();

scf(2); 
clf;    

x_c = 2 * exp(%i * (n/6 - %pi));
subplot(3,1,1);
plot2d3(n, real(x_c), 2); 
plot(n, real(x_c), 'ro'); 
title('1.3(c): Phan thuc cua x(n) = 2exp[j(n/6 - \pi)] -> Khong tuan hoan');
xlabel('n (mau)'); ylabel('Bien do');
xgrid();

x_d = cos(n/8) .* cos(%pi * n / 8);
subplot(3,1,2);
plot2d3(n, x_d, 3);
plot(n, x_d, 'go'); 
title('1.3(d): x(n) = cos(n/8)cos(\pi n/8) -> Khong tuan hoan');
xlabel('n (mau)'); ylabel('Bien do');
xgrid();

x_e = cos(%pi * n / 2) - sin(%pi * n / 8) + 3 * cos(%pi * n / 4 + %pi / 3);
subplot(3,1,3);
plot2d3(n, x_e, 5);
plot(n, x_e, 'bo'); 
title('1.3(e): x(n) tong hop -> Tuan hoan voi chu ky N = 16');
xlabel('n (mau)'); ylabel('Bien do');
xgrid();
