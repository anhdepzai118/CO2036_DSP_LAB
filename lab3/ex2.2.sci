function val = get_x(n_arr)
    val = zeros(1, length(n_arr));
    
    idx1 = find(n_arr >= -1 & n_arr <= 2);
    val(idx1) = 1;
    
    idx2 = find(n_arr >= 3 & n_arr <= 4);
    val(idx2) = 0.5;
endfunction

n = -8:8;

x_n = get_x(n);
xa  = get_x(n - 2);
xb  = get_x(4 - n);
xc  = get_x(n + 2);
xd  = get_x(n) .* bool2s(2 - n >= 0);
xe  = get_x(n - 1) .* bool2s(n == 3);
xf  = get_x(n.^2);
xg  = 0.5 * (get_x(n) + get_x(-n));
xh  = 0.5 * (get_x(n) - get_x(-n));

scf(0);
show_window();
clf();

subplot(4, 2, 1);
plot2d3(n, xa, style = 2); plot(n, xa, 'ro'); xgrid(1);
xlabel("n"); ylabel("xa(n)"); title("(a) x(n - 2)");

subplot(4, 2, 2);
plot2d3(n, xb, style = 5); plot(n, xb, 'bs'); xgrid(1);
xlabel("n"); ylabel("xb(n)"); title("(b) x(4 - n)");

subplot(4, 2, 3);
plot2d3(n, xc, style = 3); plot(n, xc, 'g^'); xgrid(1);
xlabel("n"); ylabel("xc(n)"); title("(c) x(n + 2)");

subplot(4, 2, 4);
plot2d3(n, xd, style = 6); plot(n, xd, 'kd'); xgrid(1);
xlabel("n"); ylabel("xd(n)"); title("(d) x(n)u(2 - n)");

subplot(4, 2, 5);
plot2d3(n, xe, style = 2); plot(n, xe, 'ro'); xgrid(1);
xlabel("n"); ylabel("xe(n)"); title("(e) x(n - 1)\delta(n - 3)");

subplot(4, 2, 6);
plot2d3(n, xf, style = 5); plot(n, xf, 'bs'); xgrid(1);
xlabel("n"); ylabel("xf(n)"); title("(f) x(n^2)");

subplot(4, 2, 7);
plot2d3(n, xg, style = 3); plot(n, xg, 'g^'); xgrid(1);
xlabel("n"); ylabel("xe_even(n)"); title("(g) Phần chẵn x_e(n)");

subplot(4, 2, 8);
plot2d3(n, xh, style = 6); plot(n, xh, 'kd'); xgrid(1);
xlabel("n"); ylabel("xo_odd(n)"); title("(h) Phần lẻ x_o(n)");
