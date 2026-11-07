// =========================================================
// EXERCISE 6: LINEAR CONVOLUTION
// x(n) = [1, 2, -3, 2, 1],  h(n) = [1, 0, -1]
// =========================================================

x = [1, 2, -3, 2, 1];
h = [1, 0, -1];

Nx = length(x);
Nh = length(h);
Ny = Nx + Nh - 1;

// --- 1. Phương pháp Folding and Shifting ---
y_fold = zeros(1, Ny);
x_pad = [zeros(1, Nh-1), x, zeros(1, Nh-1)];
h_fold = h($:-1:1); // Lật h(n) -> h(-k)

for n = 1:Ny
    y_fold(n) = sum(x_pad(n : n + Nh - 1) .* h_fold);
end

// --- 2. Phương pháp Ma trận (Matrix Method) ---
X_mat = zeros(Ny, Nh);
for i = 1:Ny
    for j = 1:Nh
        if (i - j + 1 >= 1) & (i - j + 1 <= Nx) then
            X_mat(i, j) = x(i - j + 1);
        end
    end
end
y_matrix = X_mat * h';

// Hiển thị kết quả ra Console
disp("Tich chap tuyen tinh (Folding & Shifting):", y_fold);
disp("Tich chap tuyen tinh (Matrix Method):", y_matrix');

// --- 3. Tính năng lượng tín hiệu ---
Ex = sum(x.^2);
Ey = sum(y_fold.^2);
disp("Nang luong tin hieu Ex:", Ex);
disp("Nang luong tin hieu Ey:", Ey);

// --- 4. Vẽ đồ thị x(n), y(n) và Năng lượng ---
clf();
n_x = 0:Nx-1;
n_y = 0:Ny-1;

subplot(3, 1, 1);
plot2d3(n_x, x, style=2);
plot(n_x, x, 'r.');
xtitle("Tin hieu vao x(n)", "n", "x(n)");
xgrid();

subplot(3, 1, 2);
plot2d3(n_y, y_fold, style=3);
plot(n_y, y_fold, 'b.');
xtitle("Tin hieu ra y(n) - Tich chap tuyen tinh", "n", "y(n)");
xgrid();

subplot(3, 1, 3);
bar([1, 2], [Ex, Ey], 0.4);
xtitle("Nang luong cua cac tin hieu", "", "Nang luong");
a = gca();
a.x_ticks = tlist(["ticks", "locations", "labels"], [1, 2], ["Ex", "Ey"]);
