// =========================================================
// EXERCISE 7: CIRCULAR CONVOLUTION
// x(n) = [1, 2, -3, 2, 1],  h(n) = [1, 0, -1, -1, 1] (N = 5)
// =========================================================

x = [1, 2, -3, 2, 1];
h = [1, 0, -1, -1, 1];
N = 5;

// --- 1. Phương pháp Folding and Shifting (Vòng) ---
y_circ_fold = zeros(1, N);
for n = 0:N-1
    s = 0;
    for k = 0:N-1
        // Dùng modulo(modulo(a, N) + N, N) để đảm bảo chỉ số dư luôn dương
        idx_mod = modulo(modulo(n - k, N) + N, N) + 1;
        s = s + h(k+1) * x(idx_mod);
    end
    y_circ_fold(n+1) = s;
end

// --- 2. Phương pháp Ma trận xoay vòng (Circulant Matrix) ---
Cx = zeros(N, N);
for i = 0:N-1
    for j = 0:N-1
        idx_mod = modulo(modulo(i - j, N) + N, N) + 1;
        Cx(i+1, j+1) = x(idx_mod);
    end
end
y_circ_matrix = Cx * h';

// Hiển thị kết quả ra Console
disp("Tich chap vong (Folding & Shifting):", y_circ_fold);
disp("Tich chap vong (Matrix Method):", y_circ_matrix');

// --- 3. Tính năng lượng tín hiệu ---
Ex = sum(x.^2);
Ey = sum(y_circ_fold.^2);
disp("Nang luong tin hieu Ex:", Ex);
disp("Nang luong tin hieu Ey:", Ey);

// --- 4. Vẽ đồ thị x(n), y(n) và Năng lượng ---
clf();
n_vec = 0:N-1;

subplot(3, 1, 1);
plot2d3(n_vec, x, style=2);
plot(n_vec, x, 'r.');
xtitle("Tin hieu vao x(n)", "n", "x(n)");
xgrid();

subplot(3, 1, 2);
plot2d3(n_vec, y_circ_fold, style=5);
plot(n_vec, y_circ_fold, 'g.');
xtitle("Tin hieu ra y(n) - Tich chap vong (Circular)", "n", "y(n)");
xgrid();

subplot(3, 1, 3);
bar([1, 2], [Ex, Ey], 0.4);
xtitle("Nang luong cua cac tin hieu", "", "Nang luong");
a = gca();
a.x_ticks = tlist(["ticks", "locations", "labels"], [1, 2], ["Ex", "Ey"]);
