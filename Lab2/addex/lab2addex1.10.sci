clc; clear; clf;

Fs = 1000;
Ts = 1/Fs;
t = 0:1/100000:0.02;
n = 0:Ts:0.02;

xa_c = 3*cos(600*%pi*t) + 2*cos(1800*%pi*t);
xn = 3*cos(600*%pi*n) + 2*cos(1800*%pi*n);

subplot(2,1,1);
plot(t, xa_c, 'k-');
plot(n, xn, 'ro');
title('1.10: x_a(t) goc va cac diem lay mau (Fs = 1000Hz)');
xgrid();

ya_c = 3*cos(600*%pi*t) + 2*cos(200*%pi*t);

subplot(2,1,2);
plot(t, ya_c, 'b--');
plot(n, xn, 'ro');
title('1.10: Tin hieu bi alias y_a(t) = 3cos(600\pi t) + 2cos(200\pi t)');
xgrid();
