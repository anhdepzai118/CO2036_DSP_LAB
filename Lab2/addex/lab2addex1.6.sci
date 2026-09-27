clc; clear; clf;

Tp = 1;
t = 0:0.01:10;
xa = cos(2*%pi*(1/Tp)*t);

T1 = 0.1;
n1 = 0:1:100;
x1 = cos(2*%pi*(T1/Tp)*n1);
subplot(2,1,1);
plot(t, xa, 'k--');
plot2d3(n1*T1, x1, 2);
plot(n1*T1, x1, 'ro');
title('T/Tp = 1/10 (Huu ti) -> Tuan hoan (N=10)');

T2 = 1/%pi;
n2 = 0:1:31;
x2 = cos(2*%pi*(T2/Tp)*n2);
subplot(2,1,2);
plot(t, xa, 'k--');
plot2d3(n2*T2, x2, 3);
plot(n2*T2, x2, 'go');
title('T/Tp = 1/\pi (Vo ti) -> Khong tuan hoan');
