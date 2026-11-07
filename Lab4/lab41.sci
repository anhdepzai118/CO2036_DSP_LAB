// =========================================================
// EXERCISE 5: IMAGE PROCESSING IN SCILAB
// =========================================================

// 1. Đọc ảnh và chuyển sang ảnh xám
img = imread("C:\Users\ASUS 1\Downloads\miku.jpg"); // Thay đường dẫn ảnh của bạn vào đây
if size(img, 3) == 3 then
    img_gray = rgb2gray(img);
else
    img_gray = img;
end
img_gray = uint8(img_gray);

// 2. Cân bằng Histogram bằng thuật toán CDF thuần Scilab
[r, c] = size(img_gray);
h_orig = imhist(img_gray);

cdf = cumsum(h_orig) / (r * c);
lut = uint8(round(cdf * 255));
img_eq = lut(double(img_gray) + 1);

h_eq = imhist(img_eq);

// 3. Khởi tạo cửa sổ đồ thị & Tạo bảng màu xám (Gray Colormap)
f = gcf();
clf(f);
gray_vec = (0:255)' / 255;
f.color_map = [gray_vec, gray_vec, gray_vec];

// --- Ô 1: Ảnh gốc ---
subplot(2, 2, 1);
Matplot(img_gray);
xtitle("1. Anh goc (Gray)");

// --- Ô 2: Histogram ảnh gốc ---
subplot(2, 2, 2);
plot(0:255, h_orig, 'b');
xtitle("2. Histogram anh goc", "Muc xam (0-255)", "So luong pixel");
xgrid();

// --- Ô 3: Ảnh sau cân bằng Histogram ---
subplot(2, 2, 3);
Matplot(img_eq);
xtitle("3. Anh can bang Histogram");

// --- Ô 4: Histogram sau cân bằng ---
subplot(2, 2, 4);
plot(0:255, h_eq, 'r');
xtitle("4. Histogram sau can bang", "Muc xam (0-255)", "So luong pixel");
xgrid();
