-- type user --
INSERT INTO dating_c04.type_user (id_type_user, type_user_name) 
VALUES ('1', 'Basic'),
 ('2', 'Premium'),
 ('3', 'Vip'),
 ('4', 'VVip');
	
 -- user --
INSERT INTO dating_c04.user (id_user, name, date_of_birth, gender, address, job, married, avatar, join_day, coin, id_type_user)
VALUES  ('1', 'Nguyễn Trần Thanh Trang', '1970-11-07', 0, '28 Nguyễn Công Trứ , Phường An Hải Tây,Quận Sơn Trà , Thành Phố Đà Nẵng', 'Hướng Dẫn Viên Du Lịch', 0, 'chuacoanh', '2021-01-01', '1000', '2'),
 ('2', 'Trần Thào Nhiên', '1992-08-08', 0, '43 Trương Hán Siêu , Phường An Hài Bắc , Quận Sơn Trà , Thành Phố Đà Nẵng', 'Nhân Viên Văn Phòng', 1, 'chuacoanh', '2021-02-03', '3453', '3'),
 ('3', 'Võ Như Vinh', '1990-02-27', 1, '168 Phan Châu Trinh , Phường Phước Ninh, Quận Hải Châu , Thành Phố Đà Nẵng', 'Sale Bia Larue', 1, 'chuacoanh', '2021-02-23', '232', '1'),
 ('4', 'Nguyễn Minh Huy', '1981-07-08', 1, '686 Lê Duẩn , Quận Hải Châu , Thành Phố Đà Nẵng', 'Vận Động Viên Bơi Lội', 1, 'chuacoanh', '2021-06-21', '356', '4'),
 ('5', 'Phạm Hữu Minh Tâm', '1995-12-09', 1, '186 Lê Văn Hiến , Quận Ngũ Hành Sơn , Thành Phố Đà Nẵng', 'Saler Bảo Hiểm', 0, 'chuacoanh', '2020-04-12', '1356', '1'),
 ('6', 'Lê Thị Xuân Phúc', '1999-03-29', 0, '28 Đống Đa , Bắc Từ Liêm , Hà Nội', 'Dancer', 1, 'chuacoanh', '2021-02-12', '524', '2'),
 ('7', 'Trần Phạm Mạnh Cường', '2005-12-06', 1, '283 Hoàng Diệu , Quận Tân Bình , Thành Phố Hồ Chí Minh', 'Kinh Doanh', 0, 'chuacoanh', '2020-11-02', '2357', '4'),
 ('8', 'Nguyễn Thành Trung', '1984-04-08', 1, 'K77/22 Thái Phiên, Quảng Trị', 'Nhân Viên Bán Hàng', 1, 'chuacoanh', '2019-10-12', '4123', '3'),
 ('9', 'Huỳnh Quốc Trung', '1999-04-08', 1, '224 Lý Thái Tổ, Gia Lai', 'Đầu Bếp', 0, 'chuacoanh', '2018-11-11', '6731', '2'),
 ('10', 'Lê Hồng Phú', '1994-07-01', 1, 'K123/45 Lê Lợi, Hồ Chí Minh', 'Nhân Viên Bán Hàng', 1, 'chuacoanh', '2020-02-12', '5773', '1'),
 ('11', 'Lê Hồng Hà', '1989-07-01', 0, '55 Nguyễn Văn Linh, Kon Tum', 'Ca Sĩ', 1, 'chuacoanh', '2021-12-12', '1467', '4'),
 ('12', 'Nguyễn Phi Hùng', '1999-12-09', 1, '24 Lý Thường Kiệt, Quảng Ngãi', 'Kinh Doanh', 0, 'chuacoanh', '2022-07-17', '7326', '3'),
 ('13', 'Đào Minh Trí', '1991-08-21', 1, '22 Ngô Quyền, Đà Nẵng', 'Kinh Doanh', 1, 'chuacoanh', '2020-08-21', '1467', '4'),
 ('14', 'Lê Hồng Sơn', '2000-11-08', 1, 'K234/11 Điện Biên Phủ, Gia Lai', 'Quản Lý Nhà Hàng', 0, 'chuacoanh', '2021-05-15', '4624', '2'),
 ('15', 'Nguyễn Văn Trọng Nghĩa', '1993-01-01', 1, '77 Hoàng Diệu, Quảng Trị', 'Pha Chế', 1, 'chuacoanh', '2021-09-19', '2532', '3'),
 ('16', 'Trương Quang Trường', '1989-09-03', 1, '4 Nguyễn Chí Thanh, Huế', 'Viễn Thông', 1, 'chuacoanh', '2021-03-12', '2563', '1'),
 ('17', 'Nguyễn Bá Trọng Nhân', '1982-09-03', 1, '111 Hùng Vương, Hà Nội', 'Bác Sĩ ', 0, 'chuacoanh', '2021-08-25', '1457', '4'),
 ('18', 'Lê Đức Trọng', '1994-01-08', 1, '213 Hàm Nghi, Đà Nẵng', 'Huấn Luyện Viên', 0, 'chuacoanh', '2021-02-13', '2517', '2'),
 ('19', 'Nguyễn Tấn Tài', '1970-11-07', 1, '6 Hoà Khánh, Đồng Nai', 'Nhân Viên Phục Vụ', 1, 'chuacoanh', '2021-02-16', '5555', '3'),
 ('20', 'Nguyễn Hoàng Đa Phúc', '1997-04-09', 1, '37 Yên Thế, Đà Nẵng', 'Giáo Viên Tiếng Anh', 0, 'chuacoanh', '2021-06-28', '2446', '2');
 
-- target --
INSERT INTO dating_c04.target (id_target, target_name) 
VALUES ('1', 'Kết Bạn'),
 ('2', 'Tìm Người Yêu'),
 ('3', 'Kết Hôn'),
 ('4', 'giao tiếp');
 
INSERT INTO `dating_c04`.`user_target` (`id_user`, `id_target`) 
VALUES ('1', '3'),
 ('1', '2'),
 ('2', '1'),
 ('3', '2'),
 ('4', '1'),
 ('5', '4'),
 ('5', '1'),
 ('6', '2'),
 ('7', '1'),
 ('7', '4'),
 ('8', '2'),
 ('8', '1'),
 ('9', '1'),
 ('9', '3'),
 ('9', '2'),
 ('10', '1'),
 ('11', '4'),
 ('12', '1'),
 ('12', '3'),
 ('12', '2'),
 ('13', '1'),
 ('14', '4'),
 ('14', '2'),
 ('15', '3'),
 ('15', '1'),
 ('16', '1'),
 ('17', '4'),
 ('17', '1'),
 ('18', '1'),
 ('18', '3'),
 ('19', '2'),
 ('19', '3'),
 ('19', '1'),
 ('20', '3'),
 ('20', '4'),
 ('20', '2'),
 ('20', '1');

 
 -- hobbit --
INSERT INTO dating_c04.hobbit (id_hobbit, hobbit_name) 
VALUES ('1', 'Đạp Xe'),
 ('2', 'Nấu Ăn'),
 ('3', 'Nghe Nhạc'),
 ('4', 'Gym'),
 ('5', 'Du Lịch'),
 ('6', 'Ca Hát'),
 ('7', 'Xem Phim'),
 ('8', 'Đọc Sách'),
 ('9', 'Chơi Game'),
 ('10', 'Camping');
 
 -- user_hobbit -- 
INSERT INTO `dating_c04`.`user_has_hobbit` (`id_user`, `id_hobbit`) 
VALUES ('1', '4'),
 ('1', '7'),
 ('1', '9'),
 ('2', '2'),
 ('2', '6'),
 ('3', '8'),
 ('3', '7'),
 ('3', '5'),
 ('4', '3'),
 ('4', '5'),
 ('4', '9'),
 ('5', '6'),
 ('6', '7'),
 ('7', '3'),
 ('7', '9'),
 ('8', '10'),
 ('8', '4'),
 ('8', '9'),
 ('9', '3'),
 ('9', '1'),
 ('10', '2'),
 ('11', '3'),
 ('11', '4'),
 ('12', '5'),
 ('12', '1'),
 ('13', '4'),
 ('13', '5'),
 ('14', '7'),
 ('15', '6'),
 ('16', '8'),
 ('16', '2'),
 ('17', '9'),
 ('18', '10'),
 ('19', '3'),
 ('20', '1');


 -- account -- 
INSERT INTO dating_c04.account (id_account, email, phone, password, status, id_user) 
VALUES ('1', 'nguyentuan.1004@gmail.com', '0344323457', '1234567', '0', '1'),
 ('2', 'hoangthai23@gmail.com', '0934435567', '11112222', '0', '2'),
 ('3', 'quoctrung12@gmail.com', '0943542345', '2342345', '0', '3'),
 ('4', 'nhuvinhvo@gmail.com', '007435678943', '123456789', '0', '4'),
 ('5', 'phihung23@gmail.com', '0905328493', '999999999', '0', '5'),
 ('6', 'minhtam@gmail.com', '0845353384', '12344321', '0', '6'),
 ('7', 'minhhuyyy@gmail.com', '0344848457', '1741841992', '0', '7'),
 ('8', 'huuthuc09@gmail.com', '0934586743', '567765', '0', '8'),
 ('9', 'dat09@gmail.com', '0368743457', '34566543', '0', '9'),
 ('10', 'hoangthai23@gmail.com', '0743545473', '98766789', '0', '10');
 
-- role -- 
INSERT INTO dating_c04.role (id_role, role_name) 
VALUES ('1', '1'),
 ('2', '2'),
 ('3', '3'),
 ('4', '4'),
 ('5', '5'),
 ('6', '6'),
 ('7', '7'),
 ('8', '8'),
 ('9', '9'),
 ('10', '10'),
 ('11', '11'),
 ('12', '12');
 
 -- account_role --
INSERT INTO dating_c04.account_role (id_account, id_role) 
VALUES ('1', '2'),
 ('2', '1'),
 ('3', '4'),
 ('4', '5'),
 ('5', '9'),
 ('6', '8'),
 ('7', '3'),
 ('8', '6'),
 ('9', '7'),
 ('10', '10');
 
 -- friend_list --
 INSERT INTO `dating_c04`.`friend_list` (`id`, `status`, `id_user1`, `id_user2`)
 VALUES ('1', '5', '2', '4'),
 ('2', '5', '1', '3'),
 ('3', '5', '4', '5'),
 ('4', '5', '6', '7'),
 ('6', '6', '8', '6'),
 ('7', '5', '7', '2'),
 ('8', '6', '1', '7'),
 ('9', '6', '1', '8'),
 ('10', '6', '1', '9'),
 ('11', '6', '2', '1'),
 ('12', '5', '11', '1');
 
 -- gift --
INSERT INTO dating_c04.gift (id_gift, gift_name, price) 
VALUES ('1', 'Hoa','1000'),
 ('2', 'Nhẫn','2000'),
 ('3', 'Xu','3000');
 
 -- gift_user -- 
INSERT INTO dating_c04.gift_user (id_gift, id_user_receiver, id_user_sender, quantity)
VALUES ('2', '2','2','3'),
 ('2', '2','1','4'),
 ('3', '1','2','2'),
 ('1', '2','1','1'),
 ('2', '1','2','5'),
 ('3', '3','1','3'),
 ('1', '1','2','3'),
 ('2', '5','1','5'),
 ('3', '7','2','2'),
 ('1','9','1','1');
 
 -- invoice --
INSERT INTO `dating_c04`.`invoice` (`price`, `time`, `id_user`) 
VALUES ('50000', '2022-7-14', '2'),
 ('100000', '2022-10-4', '4'),
 ('120000', '2022-4-19', '3'),
 ('20000', '2022-4-1', '6'),
 ('170000', '2022-9-8', '4'),
 ('500000', '2022-4-5', '5'),
 ('1200000', '2022-11-11', '1'),
 ('870000', '2022-1-2', '1'),
 ('205000', '2022-10-12', '3');

 
-- report --
INSERT INTO dating_c04.report (id_report, name_report)
 VALUES ('1', 'Đăng bài có nội dung vi phạm pháp luật.'),
 ('2', 'Đăng bài có nội dung vi phạm thuần phong mỹ tục.'),
 ('3', 'Comment chửi thề, gây hiềm khích với thành viên khác.'),
 ('4', 'Đăng bài sai sự thật, nội dung lừa đảo.'),
 ('5', 'Spam tin nhắn, spam bài đăng.'),
 ('6', 'Hình ảnh đồi truỵ.'),
 ('7', 'Hình ảnh bạo lực.'),
 ('8', 'Tài khoản giả mạo.'),
 ('9', 'Hoạt động tuyên truyền khủng bố.'),
 ('10', 'Nội dung bạo lực và phản cảm.'),                   
 ('11', 'Nội dung khác.');

-- report_user --
INSERT INTO dating_c04.report_user (id_report, id_reported, id_reporter, status, time_report) 
VALUES  ('1', '3', '7', '8', '2022-12-22'),
  ('1', '3', '5', '8', '2022-12-22'),
  ('1', '3', '12', '8', '2022-12-22'),
  ('1', '3', '6', '9', '2022-12-22'),
  ('1', '3', '9', '8', '2022-12-22'),
  ('4', '2', '1', '8', '2022-10-22'),
  ('4', '2', '10', '9', '2022-10-22'),
  ('4', '2', '14', '9', '2022-10-22'),
  ('4', '2', '13', '8', '2022-10-22'),
  ('4', '2', '15', '8', '2022-10-22'),
  ('6', '5', '11', '9', '2022-10-25'),
  ('6', '5', '2', '8', '2022-10-25'),
  ('6', '5', '4', '9', '2022-10-25'),
  ('6', '5', '1', '9', '2022-10-26'),
  ('6', '5', '6', '8', '2022-10-26'),
  ('2', '16', '19', '8', '2022-11-26'),
  ('2', '16', '17', '9', '2022-11-26'),
  ('2', '16', '11', '8', '2022-11-26'),
  ('2', '16', '12', '8', '2022-11-26'),
  ('2', '16', '13', '9', '2022-11-26');
  
-- post --
INSERT INTO `dating_c04`.`post` (`id_post`, `content`, `media`, `time`, `id_user`) 
VALUES ('1', 'Không có gì khó chỉ sợ lòng không bền', 'https://theki.vn/wp-content/uploads/2018/02/chung-minh-rang-khong-co-viec-gi-kho-chi-so-long-khong-ben.jpg', '2000-11-12', '1'),
 ('2', 'Cố lên nào', 'https://3.bp.blogspot.com/-VY3lfj7ctRo/V_s2d6m053I/AAAAAAAAQaU/jKtaIWYSKkc0tzRxWWL04G71zENHYnRwgCLcB/s1600/co%2Blen%2Btoi%2Boi.jpg', '2001-09-13', '2'),
 ('3', 'Vui lên nào', 'https://dambritourist.vn/hinh-anh-co-len-ban-toi-oi/imager_4_66989_700.jpg', '2003-03-12', '3'),
 ('4', 'Hello', 'data:image/jpeg,base64,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', '2009-06-12', '4'),
 ('5', 'Ai đó', 'data:image/jpeg,base64,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', '2009-02-12', '5'),
 ('6', 'Dating ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqNlaJE-ynQOU_JUTw92s9IU0cCbGy46gD1g&usqp=CAU', '2008-12-23', '6'),
 ('7', 'Trung ơi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxUV7CpXbTdK2oFoN3eMx205FWlMBz8rj-QQ&usqp=CAU', '2012-01-01', '7'),
 ('8', 'Luôn vui vẻ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJYvHR798MXVd2zsRQWKa7Gy4JHHHTYPKihg&usqp=CAU', '2001-01-01', '8'),
 ('9', 'C0422G1-Dating', 'data:image/jpeg,base64,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', '2022-10-20', '9'),
 ('10', 'HA HA HA', 'data:image/jpeg,base64,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', '2001-12-12', '10'),
 ('11', 'Rảnh quá mà', 'https://elitedental.com.vn/wp-content/uploads/2022/04/resize_480_320_crop_nu_cuoi_860_keep_ratio.jpg', '2022-12-13', '11'),
 ('12', 'Khùng quá I ', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrKhcZmKnHjC1th07xBMCA1k5CCofVfrYBsA&usqp=CAU', '20021', '12'),
 ('13', 'Hai mọi người', 'https://cafebiz.cafebizcdn.vn/thumb_w/600/162123310254002176/2021/6/20/photo1624151946898-1624151946992540418806.png', '2021-09-12', '13'),
 ('14', 'Có gì đâu', 'https://sahara.com.vn/wp-content/uploads/2019/11/nhung-cau-noi-hay-ve-nu-cuoi-2.jpg', '2000-09-12', '14'),
 ('15', 'Nên hay không nên', 'https://photo-cms-baonghean.zadn.vn/1200x630/Uploaded/2022/nkdkswkqoc/201610/original/images1708085_bna_57f7515ea102a.jpg', '2002-07-12', '15'),
 ('16', 'Buồn làm chi anh ơi', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrKhcZmKnHjC1th07xBMCA1k5CCofVfrYBsA&usqp=CAU', '2005-02-23', '16'),
 ('17', 'Mọi chuyện sẽ ổn thôi', 'https://cdnmedia.baotintuc.vn/Upload/DGCvMTLSo95Cq4TvfGr0A/files/2021/08/anhdaidien.jpg', '2006-12-23', '17'),
 ('18', 'Sẽ ổn cả thôi', 'https://suckhoedoisong.qltns.mediacdn.vn/Images/nguyenkhanh/2017/02/09/nu_cuoi_toa_sang.jpg', '2006-03-26', '18'),
 ('19', 'Không có gì là không thể', 'https://www.nhakhoaminhthu.com/images/teeth-lips-and-smile-300x199.jpg', '2021-12-28', '19'),
 ('20', 'Mạnh mẽ lên nào cô gái', 'https://bloganchoi.com/wp-content/uploads/2021/05/kim-yoo-jungkk-2.jpg', '2000-12-26', '20');
 
 -- comment --
 INSERT INTO dating_c04.comment (id_comment, content, id_post, id_user) VALUES 
 ('1', 'xinh qua', '2', '1'),
 ('2', 'xinh qua xinh', '2', '2'),
 ('3', 'lam quen nha', '3', '3'),
 ('4', 'woa', '4', '4'),
 ('5', 'ghe z troi', '5', '5'),
 ('6', 'hom nay an gi', '6', '6'),
 ('7', 'ui la troi', '7', '7'),
 ('8', 'xinh qua', '8', '8'),
 ('9', 'cho minh lam quen', '9', '9'),
 ('10', 'add minhdi', '10', '1'),
 ('11', 'qua la xinh luon', '11', '11'),
 ('12', 'xinh qua', '12', '12'),
 ('13', 'oke ', '13', '13'),
 ('14', 'haha', '14', '14'),
 ('15', 'hihi', '15', '15'),
 ('16', 'hehe', '16', '16'),
 ('17', 'huhu', '17', '17'),
 ('18', 'lalalala', '18', '18'),
 ('19', 'qua troi luon', '19', '19'),
 ('20', 'xinh qua', '1', '20');
