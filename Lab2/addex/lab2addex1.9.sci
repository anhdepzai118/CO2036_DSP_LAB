clc; clear; clf;

Fs = 600;
Ts = 1/Fs;
t = 0:1/100000:0.02; 
n = 0:Ts:0.02;

xa_c = sin(480*%pi*t) + 3*sin(720*%pi*t);
xn = sin(480*%pi*n) + 3*sin(720*%pi*n);

subplot(2,1,1);
plot(t, xa_c, 'k-');
plot(n, xn, 'ro');
title('1.9: x_a(t) goc va cac diem lay mau (Fs = 600Hz)');
xgrid();

ya_c = -2*sin(480*%pi*t);

subplot(2,1,2);
plot(t, ya_c, 'b--');
plot(n, xn, 'ro');
title('1.9: y_a(t) = -2sin(480\pi t) khoi phuc sau D/A');
xgrid();
