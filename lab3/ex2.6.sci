n = -4:7;

function val = get_x(n_arr)
    val = zeros(1, length(n_arr));
    val(n_arr >= 0 & n_arr <= 3) = 1;
endfunction

function val = get_x2(n_arr)
    val = get_x(n_arr - 2);
endfunction

y1_shift = get_x((n - 2).^2);
y1_2     = get_x2(n.^2);

y2_shift = (get_x(n - 2) - get_x(n - 3));
y2_2     = (get_x2(n) - get_x2(n - 1));

y3_shift = (n - 2) .* get_x(n - 2);
y3_2     = n .* get_x2(n);

scf(0);
show_window();
clf();

subplot(3, 2, 1);
plot2d3(n, y1_shift, style = 2); plot(n, y1_shift, 'ro'); xgrid(1);
xlabel("n"); ylabel("y(n-2)"); title("HT1: y(n-2) cua y(n)=x(n^2)");

subplot(3, 2, 2);
plot2d3(n, y1_2, style = 5); plot(n, y1_2, 'bs'); xgrid(1);
xlabel("n"); ylabel("y2(n)"); title("HT1: y2(n) = T[x(n-2)] (Khac y(n-2))");

subplot(3, 2, 3);
plot2d3(n, y2_shift, style = 2); plot(n, y2_shift, 'ro'); xgrid(1);
xlabel("n"); ylabel("y(n-2)"); title("HT2: y(n-2) cua y(n)=x(n)-x(n-1)");

subplot(3, 2, 4);
plot2d3(n, y2_2, style = 3); plot(n, y2_2, 'g^'); xgrid(1);
xlabel("n"); ylabel("y2(n)"); title("HT2: y2(n) = T[x(n-2)] (Giong y(n-2))");

subplot(3, 2, 5);
plot2d3(n, y3_shift, style = 2); plot(n, y3_shift, 'ro'); xgrid(1);
xlabel("n"); ylabel("y(n-2)"); title("HT3: y(n-2) cua y(n)=n*x(n)");

subplot(3, 2, 6);
plot2d3(n, y3_2, style = 6); plot(n, y3_2, 'kd'); xgrid(1);
xlabel("n"); ylabel("y2(n)"); title("HT3: y2(n) = T[x(n-2)] (Khac y(n-2))");
