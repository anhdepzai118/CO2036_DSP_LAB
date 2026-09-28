function val = get_x(n_arr)
    val = zeros(1, length(n_arr));
    
    idx1 = find(n_arr >= -3 & n_arr <= -1);
    val(idx1) = 1 + n_arr(idx1) / 3;
    
    idx2 = find(n_arr >= 0 & n_arr <= 3);
    val(idx2) = 1;
endfunction

n = -10:10;

x_n  = get_x(n);
y1_n = get_x(-n + 4);
y2_n = get_x(-n - 4);
yc_n = get_x(-n + 4);

scf(0);
show_window();
clf();

subplot(4, 1, 1);
plot2d3(n, x_n, style = 2);
plot(n, x_n, 'ro');
xgrid(1);
xlabel("n");
ylabel("x(n)");
title("(a) Tin hieu goc x(n)");

subplot(4, 1, 2);
plot2d3(n, y1_n, style = 5);
plot(n, y1_n, 'bs');
xgrid(1);
xlabel("n");
ylabel("y1(n)");
title("(b.1) Dao truoc, tre 4 mau sau: y1(n) = x(-n + 4)");

subplot(4, 1, 3);
plot2d3(n, y2_n, style = 3);
plot(n, y2_n, 'g^');
xgrid(1);
xlabel("n");
ylabel("y2(n)");
title("(b.2) Tre 4 mau truoc, dao sau: y2(n) = x(-n - 4)");

subplot(4, 1, 4);
plot2d3(n, yc_n, style = 6);
plot(n, yc_n, 'kd');
xgrid(1);
xlabel("n");
ylabel("x(-n+4)");
title("(c) Tin hieu x(-n + 4)");
