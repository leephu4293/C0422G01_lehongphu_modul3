DROP DATABASE IF EXISTS FuramaResort;
CREATE DATABASE FuramaResort;

USE furamaresort;

CREATE TABLE vi_tri (
    ma_vi_tri INT PRIMARY KEY,
    ten_vi_tri VARCHAR(45)
);

CREATE TABLE trinh_do (
    ma_trinh_do INT PRIMARY KEY,
    ten_trinh_do VARCHAR(45)
); 

CREATE TABLE bo_phan (
    ma_bo_phan INT PRIMARY KEY,
    ten_bo_phan VARCHAR(45)
);

CREATE TABLE nhan_vien (
    ma_nhan_vien INT PRIMARY KEY,
    ho_ten VARCHAR(45),
    ngay_sinh DATE,
    so_cnmd VARCHAR(45),
    luong DOUBLE,
    so_dien_thoai VARCHAR(45),
    email VARCHAR(45),
    dia_chi VARCHAR(45),
    ma_vi_tri INT NOT NULL,
    ma_trinh_do INT NOT NULL,
    ma_bo_phan INT NOT NULL,
    FOREIGN KEY (ma_vi_tri) REFERENCES vi_tri(ma_vi_tri),
    FOREIGN KEY (ma_trinh_do) REFERENCES trinh_do(ma_trinh_do),
    FOREIGN KEY (ma_bo_phan) REFERENCES bo_phan (ma_bo_phan)
); 

CREATE TABLE loai_khach (
    ma_loai_khach INT PRIMARY KEY,
    ten_loai_khach VARCHAR(45)
);

CREATE TABLE khach_hang (
    ma_khach_hang INT PRIMARY KEY,
    ma_loai_khach INT NOT NULL,
    ho_ten VARCHAR(45),
    ngay_sinh DATE,
    gioi_tinh BIT(1),
    so_cmnd VARCHAR(45),
    so_dien_thoai VARCHAR(45),
    email VARCHAR(45),
    dia_chi VARCHAR(45),
	FOREIGN KEY (ma_loai_khach) REFERENCES loai_khach (ma_loai_khach)
);

CREATE TABLE loai_dich_vu (
    ma_loai_dich_vu INT PRIMARY KEY,
    ten_loai_dich_vu VARCHAR(45)
);

CREATE TABLE kieu_thue (
    ma_kieu_thue INT PRIMARY KEY,
    ten_kieu_thue VARCHAR(45)
);

CREATE TABLE dich_vu (
    ma_dich_vu INT PRIMARY KEY,
    ten_dich_vu VARCHAR(45),
    dien_tich INT,
    chi_phi_thue DOUBLE,
    so_nguoi_toi_da INT,
    ma_kieu_thue INT NOT NULL,
    ma_loai_dich_vu INT NOT NULL,
    tieu_chuan_phong VARCHAR(45),
    mo_ta_tien_nghi_khac VARCHAR(45),
    dien_tich_do_boi DOUBLE,
    so_tang INT,
    dich_vu_mien_phi_di_kem TEXT,
    FOREIGN KEY (ma_loai_dich_vu) REFERENCES loai_dich_vu (ma_loai_dich_vu),
    FOREIGN KEY (ma_kieu_thue) REFERENCES kieu_thue (ma_kieu_thue)
);

CREATE TABLE hop_dong (
    ma_hop_dong INT PRIMARY KEY,
    ngay_lam_hop_dong DATETIME,
    ngay_ket_thuc DATETIME,
    tien_dat_coc DOUBLE,
    ma_nhan_vien INT NOT NULL,
    ma_khach_hang INT NOT NULL,
    ma_dich_vu INT NOT NULL,
    FOREIGN KEY (ma_nhan_vien) REFERENCES nhan_vien (ma_nhan_vien),
    FOREIGN KEY (ma_khach_hang) REFERENCES khach_hang (ma_khach_hang),
    FOREIGN KEY (ma_dich_vu) REFERENCES dich_vu (ma_dich_vu)
);

CREATE TABLE dich_vu_di_kem (
    ma_dich_vu_di_kem INT PRIMARY KEY,
    ten_dich_vu_di_kem VARCHAR(45),
    gia DOUBLE,
    don_vi VARCHAR(10),
    trang_thai VARCHAR(45)
);
CREATE TABLE hop_dong_chi_tiet (
    ma_hop_dong_chi_tiet INT PRIMARY KEY,
    ma_hop_dong INT NOT NULL ,
    ma_dich_vu_di_kem INT NOT NULL,
    so_luong INT,
    FOREIGN KEY (ma_hop_dong) REFERENCES hop_dong (ma_hop_dong),
	FOREIGN KEY  (ma_dich_vu_di_kem) REFERENCES dich_vu_di_kem (ma_dich_vu_di_kem)
);


INSERT INTO vi_tri (ma_vi_tri, ten_vi_tri) 
VALUES ('1', 'Quản Lý'), ('2', 'Nhân Viên');

INSERT INTO trinh_do (ma_trinh_do, ten_trinh_do) 
VALUES
  ('1', 'Trung Cấp'),
  ('2', 'Cao Đẳng'),
  ('3', 'Đại Học'),
  ('4', 'Sau Đại Học');
  
  INSERT INTO bo_phan (`ma_bo_phan`, `ten_bo_phan`) 
  VALUES
	('1', 'Sale-Marketing'),
	('2', 'Hành chính'),
	('3', 'Phục vụ'),
	('4', 'Quản lý');
    
INSERT INTO furamaresort.nhan_vien (ma_nhan_vien, ho_ten, ngay_sinh, so_cnmd, luong, so_dien_thoai, email, dia_chi, ma_vi_tri, ma_trinh_do, ma_bo_phan)
 VALUES 
 ('1', 'Nguyễn Văn An', '1970-11-07', '456231786', '10000000', '0901234121', 'annguyen@gmail.com', '295 Nguyễn Tất Thành, Đà Nẵng', '1', '3', '1'),
 ('2', 'Lê Văn Bình', '1997-04-09', '654231234', '7000000', '0934212314', 'binhlv@gmail.com', '22 Yên Bái, Đà Nẵng', '1', '2', '2'),
 ('3', 'Hồ Thị Yến', '1995-12-12', '999231723', '14000000', '0412352315', 'thiyen@gmail.com', 'K234/11 Điện Biên Phủ, Gia Lai', '1', '3', '2'),
 ('4', 'Võ Công Toản', '1980-04-04', '123231365', '17000000', '0374443232', 'toan0404@gmail.com', '77 Hoàng Diệu, Quảng Trị', '1', '4', '4'),
 ('5', 'Nguyễn Bỉnh Phát', '1999-12-09', '454363232', '6000000', '0902341231', 'phatphat@gmail.com', '43 Yên Bái, Đà Nẵng', '2', '1', '1'),
 ('6', 'Khúc Nguyễn An Nghi', '2000-11-08', '964542311', '7000000', '0978653213', 'annghi20@gmail.com', '294 Nguyễn Tất Thành, Đà Nẵng', '2', '2', '3'),
 ('7', 'Nguyễn Hữu Hà', '1993-01-01', '534323231', '8000000', '0941234553', 'nhh0101@gmail.com', '4 Nguyễn Chí Thanh, Huế', '2', '3', '2'),
 ('8', 'Nguyễn Hà Đông', '1989-09-03', '234414123', '9000000', '0642123111', 'donghanguyen@gmail.com', '111 Hùng Vương, Hà Nội', '2', '4', '4'),
 ('9', 'Tòng Hoang', '1982-09-03', '256781231', '6000000', '0245144444', 'hoangtong@gmail.com', '213 Hàm Nghi, Đà Nẵng', '2', '4', '4'),
 ('10', 'Nguyễn Công Đạo', '1994-01-08', '755434343', '8000000', '0988767111', 'nguyencongdao12@gmail.com', '6 Hoà Khánh, Đồng Nai', '2', '3', '2');
 
INSERT INTO loai_khach (ma_loai_khach, ten_loai_khach) 
VALUES 
 ('1', 'Diamond'),
 ('2', 'Platinium'),
 ('3', 'Gold'),
 ('4', 'Silver'),
 ('5', 'Member');
 
 INSERT INTO khach_hang (ma_khach_hang, ma_loai_khach, ho_ten, ngay_sinh, gioi_tinh, so_cmnd, so_dien_thoai, email, dia_chi) 
VALUES
 ('1', '5', 'Nguyễn Thị Hào', '1970-11-07', 0, '643431213', '0945423362', 'thihao07@gmail.com', '23 Nguyễn Hoàng, Đà Nẵng'),
 ('2', '3', 'Phạm Xuân Diệu', '1992-08-08', 1, '865342123', '0954333333', 'xuandieu92@gmail.com', 'K77/22 Thái Phiên, Quảng Trị'),
 ('3', '1', 'Trương Đình Nghệ', '1990-02-27', 1, '488645199', '0373213122', 'nghenhan2702@gmail.com', 'K323/12 Ông Ích Khiêm, Vinh'),
 ('4', '1', 'Dương Văn Quan', '1981-07-08', 1, '543432111', '0490039241', 'duongquan@gmail.com', 'K453/12 Lê Lợi, Đà Nẵng'),
 ('5', '4', 'Hoàng Trần Nhi Nhi', '1995-12-09', 0, '795453345', '0312345678', 'nhinhi123@gmail.com', '224 Lý Thái Tổ, Gia Lai'),
 ('6', '4', 'Tôn Nữ Mộc Châu', '2005-12-06', 0, '732434215', '0988888844', 'tonnuchau@gmail.com', '37 Yên Thế, Đà Nẵng'),
 ('7', '1', 'Nguyễn Mỹ Kim', '1984-04-08', 0, '856453123', '0912345698', 'kimcuong84@gmail.com', 'K123/45 Lê Lợi, Hồ Chí Minh'),
 ('8', '3', 'Nguyễn Thị Hào', '1999-04-08', 0, '965656433', '0763212345', 'haohao99@gmail.com', '55 Nguyễn Văn Linh, Kon Tum'),
 ('9', '1', 'Trần Đại Danh', '1994-07-01', 1, '432341235', '0643343433', 'danhhai99@gmail.com', '24 Lý Thường Kiệt, Quảng Ngãi'),
 ('10', '2', 'Nguyễn Tâm Đắc', '1989-07-01', 1, '344343432', '0987654321', 'dactam@gmail.com', '22 Ngô Quyền, Đà Nẵng');
 
 INSERT INTO kieu_thue (ma_kieu_thue, ten_kieu_thue)
 VALUES 
 ('1', 'year'),
 ('2', 'month'),
 ('3', 'day'),
 ('4', 'hour');
 
 INSERT INTO loai_dich_vu (ma_loai_dich_vu,ten_loai_dich_vu) 
 VALUES
 ('1', 'Villa'),
 ('2', 'House'),
 ('3', 'Room');

INSERT INTO dich_vu (ma_dich_vu, ten_dich_vu, dien_tich, chi_phi_thue, so_nguoi_toi_da, ma_kieu_thue, ma_loai_dich_vu, tieu_chuan_phong, mo_ta_tien_nghi_khac, dien_tich_do_boi, so_tang, dich_vu_mien_phi_di_kem) 
VALUES
 ('1', 'Villa Beach Front', '25000', '1000000', '10', '3', '1', 'vip', 'Có hồ bơi', 500, '4', null),
 ('2', 'House Princess 01', '14000', '5000000', '7', '2', '2', 'vip', 'Có thêm bếp nướng', null, '3', null),
 ('3', 'Room Twin 01', '5000', '1000000', '2', '4', '3', 'normal', 'Có tivi', null, null, '1 Xe máy, 1 Xe đạp'),
 ('4', 'Villa No Beach Front', '22000', '9000000', '8', '3', '1', 'normal', 'Có hồ bơi', '300', '3', null),
 ('5', 'House Princess 02', '10000', '4000000', '5', '3', '2', 'normal', 'Có thêm bếp nướng', null, '2', null),
 ('6', 'Room Twin 02', '3000', '900000', '2', '4', '3', 'normal', 'Có tivi', null, null, '1 Xe máy');
 
INSERT INTO dich_vu_di_kem (ma_dich_vu_di_kem, ten_dich_vu_di_kem, gia, don_vi, trang_thai)
 VALUES
 ('1', 'Karaoke', '10000', 'giờ', 'tiện nghi, hiện tại'),
 ('2', 'Thuê xe máy', '10000', 'chiếc', 'hỏng 1 xe'),
 ('3', 'Thuê xe đạp', '20000', 'chiếc', 'tốt'),
 ('4', 'Buffet buổi sáng', '15000', 'suất', 'đầy đủ đồ ăn, tráng miệng'),
 ('5', 'Buffet buổi trưa', '90000', 'suất', 'đầy đủ đồ ăn, tráng miệng'),
 ('6', 'Buffet buổi tối', '16000', 'suất', 'đầy đủ đồ ăn, tráng miệng');

INSERT INTO hop_dong (ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, tien_dat_coc, ma_nhan_vien, ma_khach_hang, ma_dich_vu) 
VALUES
 ('1', '2020-12-08', '2020-12-08', '0', '3', '1', '3'),
 ('2', '2020-07-14', '2020-07-21', '200000', '7', '3', '1'),
 ('3', '2021-03-15', '2021-03-17', '50000', '3', '4', '2'),
 ('4', '2021-01-14', '2021-01-18', '100000', '7', '5', '5'),
 ('5', '2021-07-14', '2021-07-15', '0', '7', '2', '6'),
 ('6', '2021-06-01', '2021-06-03', '0', '7', '7', '6'),
 ('7', '2021-09-02', '2021-09-05', '100000', '7', '4', '4'),
 ('8', '2021-06-17', '2021-06-18', '150000', '3', '4', '1'),
 ('9', '2020-11-19', '2020-11-19', '0', '3', '4', '3'),
 ('10', '2021-04-12', '2021-04-14', '0', '10', '3', '5'),
 ('11', '2021-04-25', '2021-04-25', '0', '2', '2', '1'),
 ('12', '2021-05-25', '2021-05-27', '0', '7', '10', '1');
 
INSERT INTO hop_dong_chi_tiet (ma_hop_dong_chi_tiet, ma_hop_dong, ma_dich_vu_di_kem, so_luong)
 VALUES
 ('1', '2', '4', '5'),
 ('2', '2', '5', '8'),
 ('3', '2', '6', '15'),
 ('4', '3', '1', '1'),
 ('5', '3', '2', '11'),
 ('6', '1', '3', '1'),
 ('7', '1', '2', '2'),
 ('8', '12', '2', '2');
 
 -- 2
 SELECT *
 FROM nhan_vien n
 WHERE n.ho_ten regexp '^[HTK]' AND CHAR_LENGTH (n.ho_ten) < 15  ;
 
-- 3.Hiển thị thông tin của tất cả khách hàng có độ tuổi từ 18 đến 50 tuổi và có địa chỉ ở “Đà Nẵng” hoặc “Quảng Trị”.
 SELECT * 
 FROM khach_hang c
 WHERE  ( c.dia_chi like '% Đà Nẵng' OR c.dia_chi like '% Quảng Trị') AND  ROUND(DATEDIFF(CURDATE(),ngay_sinh)/365) BETWEEN 18 AND 50; 
 
-- 4 Đếm xem tương ứng với mỗi khách hàng đã từng đặt phòng bao nhiêu lần. Kết quả hiển thị được sắp 
-- xếp tăng dần theo số lần đặt phòng của khách hàng. Chỉ đếm những khách hàng nào có Tên loại khách hàng là “Diamond”. 
SELECT  
	ho_ten ,
	COUNT(hop_dong.ma_khach_hang) as so_lan_dat_phong 
FROM khach_hang c 
	JOIN hop_dong ON c.ma_khach_hang = hop_dong.ma_khach_hang
	JOIN loai_khach ON c.ma_loai_khach = loai_khach.ma_loai_khach
WHERE loai_khach.ma_loai_khach = 1
GROUP BY c.ho_ten
ORDER BY so_lan_dat_phong;

-- 5 
SELECT 
	khach_hang.ma_khach_hang, 
	khach_hang.ho_ten, 
	loai_khach.ten_loai_khach, 
	hop_dong.ma_hop_dong, 
	dich_vu.ten_dich_vu, 
	hop_dong.ngay_lam_hop_dong, 
	hop_dong.ngay_ket_thuc, 
	SUM(chi_phi_thue + IFNULL((so_luong*gia),0)) as tong_tien
FROM khach_hang 
	LEFT JOIN hop_dong ON khach_hang.ma_khach_hang= hop_dong.ma_khach_hang
	LEFT JOIN hop_dong_chi_tiet ON hop_dong_chi_tiet.ma_hop_dong = hop_dong.ma_hop_dong
	LEFT JOIN dich_vu_di_kem ON dich_vu_di_kem.ma_dich_vu_di_kem= hop_dong_chi_tiet.ma_hop_dong_chi_tiet
	LEFT JOIN dich_vu ON dich_vu.ma_dich_vu = hop_dong.ma_dich_vu
	LEFT JOIN loai_khach ON loai_khach.ma_loai_khach = khach_hang.ma_khach_hang
GROUP BY hop_dong.ma_hop_dong;

-- 6 
SELECT 
	dv.ma_dich_vu, dv.ten_dich_vu, 
	dv.dien_tich, dv.chi_phi_thue, 
	loai_dich_vu.ten_loai_dich_vu
FROM dich_vu dv 
	JOIN loai_dich_vu ON dv.ma_loai_dich_vu = loai_dich_vu.ma_loai_dich_vu 
AND dv.ma_dich_vu 
NOT IN  (SELECT  hop_dong.ma_dich_vu FROM hop_dong WHERE QUARTER(hop_dong.ngay_lam_hop_dong) = 1 );  

-- 8.Hiển thị thông tin ho_ten khách hàng có trong hệ thống, với yêu cầu ho_ten không trùng nhau.
-- Học viên sử dụng theo 3 cách khác nhau để thực hiện yêu cầu trên.
SELECT DISTINCT ho_ten
FROM khach_hang;

SELECT ho_ten 
FROM khach_hang
GROUP BY ho_ten;

-- task 7 
SELECT 
	 dv.ma_dich_vu, dv.ten_dich_vu,
	 dv.dien_tich, dv.chi_phi_thue, 
	 dv.so_nguoi_toi_da , 
	 loai_dich_vu.ten_loai_dich_vu 
FROM dich_vu dv 
	JOIN loai_dich_vu ON dv.ma_dich_vu = loai_dich_vu.ma_loai_dich_vu
	JOIN hop_dong ON hop_dong.ma_dich_vu= dv.ma_dich_vu
WHERE YEAR (hop_dong.ngay_lam_hop_dong)= 2020 AND hop_dong.ma_dich_vu NOT IN (SELECT hop_dong.ma_dich_vu FROM hop_dong WHERE YEAR (hop_dong.ngay_lam_hop_dong) = 2021 )
GROUP BY  ten_dich_vu;

-- task 9 Thực hiện thống kê doanh thu theo tháng, nghĩa là tương ứng với mỗi tháng trong
--  năm 2021 thì sẽ có bao nhiêu khách hàng thực hiện đặt phòng.
SELECT  
	MONTH (hd.ngay_lam_hop_dong) as thang , 
	COUNT(hd.ma_khach_hang) as so_lan_dat
FROM hop_dong hd 
	JOIN khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
WHERE YEAR(hd.ngay_lam_hop_dong)= 2021
GROUP BY  MONTH(hd.ngay_lam_hop_dong) 
ORDER BY MONTH(hd.ngay_lam_hop_dong);

-- 10.Hiển thị thông tin tương ứng với từng hợp đồng thì đã sử dụng bao nhiêu dịch vụ đi kèm. 
-- Kết quả hiển thị bao gồm ma_hop_dong, ngay_lam_hop_dong, ngay_ket_thuc, 
-- tien_dat_coc, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem).

SELECT 
	 hd.ma_hop_dong ,
	 hd.ngay_lam_hop_dong, 
	 hd.ngay_ket_thuc, 
	 hd.tien_dat_coc , 
	 SUM(IFNULL(hc.so_luong,0))
FROM hop_dong hd 
	LEFT JOIN hop_dong_chi_tiet hc ON hd.ma_hop_dong = hc.ma_hop_dong
	LEFT JOIN dich_vu_di_kem dv ON hc.ma_dich_vu_di_kem = dv.ma_dich_vu_di_kem
GROUP BY hd.ma_hop_dong;

-- 11.Hiển thị thông tin các dịch vụ đi kèm đã được sử dụng bởi những khách hàng có 
-- ten_loai_khach là “Diamond” và có dia_chi ở “Vinh” hoặc “Quảng Ngãi”.

SELECT  
	dvk.ten_dich_vu_di_kem , 
	dvk.ma_dich_vu_di_kem
FROM dich_vu_di_kem dvk 
	JOIN hop_dong_chi_tiet hdct ON dvk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
	JOIN hop_dong hd ON hd.ma_hop_dong = hdct.ma_hop_dong
	JOIN khach_hang kh ON kh.ma_khach_hang = hd.ma_khach_hang
	JOIN loai_khach lk ON lk.ma_loai_khach = kh.ma_loai_khach
WHERE (kh.dia_chi like '%Vinh' OR kh.dia_chi like '%Quảng Ngãi') AND lk.ma_loai_khach = 1;

--  12.Hiển thị thông tin ma_hop_dong, ho_ten (nhân viên), ho_ten (khách hàng), 
-- so_dien_thoai (khách hàng), ten_dich_vu, so_luong_dich_vu_di_kem (được tính dựa trên việc sum so_luong ở dich_vu_di_kem), 
-- tien_dat_coc của tất cả các dịch vụ đã từng được khách hàng đặt vào
-- 3 tháng cuối năm 2020 nhưng chưa từng được khách hàng đặt vào 6 tháng đầu năm 2021.

SELECT  
	hd.ma_hop_dong,
	nv.ho_ten as ten_nhan_vien,
	kh.ho_ten as ten_khach_hang,
	kh.so_dien_thoai as so_dien_thoai_kh,
	dv.ten_dich_vu,
	SUM(IFNULL(hdc.so_luong,0)) as so_luong_dich_vu_di_kem,
	hd.tien_dat_coc
FROM hop_dong hd 
	LEFT JOIN nhan_vien nv ON hd.ma_nhan_vien = nv.ma_nhan_vien
	LEFT JOIN khach_hang kh ON hd.ma_khach_hang = kh.ma_khach_hang
	LEFT JOIN dich_vu dv ON  hd.ma_dich_vu = dv.ma_dich_vu
	LEFT JOIN hop_dong_chi_tiet hdc ON hd.ma_hop_dong = hdc.ma_hop_dong
WHERE 
	 ( QUARTER(hd.ngay_lam_hop_dong)=4 AND YEAR(hd.ngay_lam_hop_dong)= 2020) 
     AND 
	 hd.ngay_lam_hop_dong 
	 NOT IN (SELECT hd.ngay_lam_hop_dong 
	 FROM hop_dong 
	 WHERE 
	((QUARTER (hop_dong.ngay_lam_hop_dong) = 1 OR QUARTER (hop_dong.ngay_lam_hop_dong) = 2) AND YEAR(hd.ngay_lam_hop_dong)= 2021))
GROUP BY kh.ma_khach_hang;

-- 13 13.Hiển thị thông tin các Dịch vụ đi kèm được sử dụng nhiều nhất bởi các Khách 
-- hàng đã đặt phòng. (Lưu ý là có thể có nhiều dịch vụ có số lần sử dụng nhiều như nhau).
SELECT 
	dvdk.ma_dich_vu_di_kem, 
	dvdk.ten_dich_vu_di_kem, 
	SUM(hdct.so_luong) AS so_luong_dich_vu_di_kem
FROM  dich_vu_di_kem dvdk
	JOIN hop_dong_chi_tiet hdct ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
GROUP BY ma_dich_vu_di_kem
HAVING so_luong_dich_vu_di_kem = (SELECT 
        SUM(so_luong)
    FROM
        hop_dong_chi_tiet
    GROUP BY ma_dich_vu_di_kem
    ORDER BY SUM(so_luong) DESC
    LIMIT 1);

-- 14 
SELECT
	 hd.ma_hop_dong,
	 ldv.ten_loai_dich_vu,
	 dvdk.ten_dich_vu_di_kem,
	 COUNT(dvdk.ma_dich_vu_di_kem) as so_lan_su_dung
 FROM hop_dong hd 
	JOIN dich_vu dv ON hd.ma_dich_vu = dv.ma_dich_vu
	JOIN loai_dich_vu ldv ON ldv.ma_loai_dich_vu = dv.ma_loai_dich_vu
	JOIN hop_dong_chi_tiet hdct ON hd.ma_hop_dong = hdct.ma_hop_dong
	JOIN dich_vu_di_kem dvdk ON dvdk.ma_dich_vu_di_kem = hdct.ma_dich_vu_di_kem
 GROUP BY dvdk.ma_dich_vu_di_kem
 HAVING COUNT(dvdk.ma_dich_vu_di_kem)= 1 
 ORDER BY hd.ma_hop_dong;
 
 -- 15 
 SELECT 
	nv.ma_nhan_vien,
    nv.ho_ten,
    nv.so_dien_thoai,
    nv.dia_chi,
    vt.ten_vi_tri,
    td.ten_trinh_do,
    bp.ten_bo_phan
 FROM nhan_vien nv 
	JOIN hop_dong hd ON hd.ma_nhan_vien = nv.ma_nhan_vien
	JOIN trinh_do td ON td.ma_trinh_do= nv.ma_trinh_do
	JOIN vi_tri vt ON vt.ma_vi_tri= nv.ma_vi_tri
    JOIN bo_phan bp ON bp.ma_bo_phan = nv.ma_bo_phan 
 GROUP BY nv.ma_nhan_vien
 HAVING COUNT(hd.ma_hop_dong) <=3;
 
-- 16 

 
 
 

  
 
 
 

 

 









