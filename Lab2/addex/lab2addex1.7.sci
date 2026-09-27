clc; clear; clf;

Fs = 8000;
Ts = 1/Fs;
t = 0:1/100000:0.002;
n = 0:Ts:0.002;

F1 = 5000;
F_alias_1 = 3000;
x1_c = cos(2*%pi*F1*t);
x1_alias_c = cos(2*%pi*F_alias_1*t);
x1_n = cos(2*%pi*F1*n);

subplot(2,1,1);
plot(t, x1_c, 'k-');
plot(t, x1_alias_c, 'b--');
plot(n, x1_n, 'ro');
title('1.7(b): F1 = 5kHz, Fs = 8kHz -> Alias = 3kHz');

F2 = 9000;
F_alias_2 = 1000;
x2_c = cos(2*%pi*F2*t);
x2_alias_c = cos(2*%pi*F_alias_2*t);
x2_n = cos(2*%pi*F2*n);

subplot(2,1,2);
plot(t, x2_c, 'k-');
plot(t, x2_alias_c, 'm--');
plot(n, x2_n, 'ro');
title('1.7(c): F2 = 9kHz, Fs = 8kHz -> Alias = 1kHz');
