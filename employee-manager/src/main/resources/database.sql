CREATE DATABASE IF NOT EXISTS employee_manager;
DROP TABLE IF EXISTS ho_so;
DROP TABLE IF EXISTS dan_toc;
DROP TABLE IF EXISTS ton_giao;
/*
	Tạo bảng lưu thông tin dân tộc
*/

CREATE TABLE dan_toc(
	id int PRIMARY KEY AUTO_INCREMENT,
    ten_dan_toc VARCHAR(50) not null
);
INSERT INTO dan_toc(`ten_dan_toc`) VALUES(N'Kinh');
INSERT INTO dan_toc(`ten_dan_toc`) VALUES(N'Tày');
INSERT INTO dan_toc(`ten_dan_toc`) VALUES(N'Thái');
INSERT INTO dan_toc(`ten_dan_toc`) VALUES(N'Khác');
-- / dan_toc----------------------------- --
/*
	Tạo bảng lưu thông tin tôn giáo
*/

CREATE TABLE ton_giao(
	id int PRIMARY key AUTO_INCREMENT,
    ten_ton_giao VARCHAR(50) not null
);
INSERT INTO ton_giao(`ten_ton_giao`) VALUES(N'Phật giáo');
INSERT INTO ton_giao(`ten_ton_giao`) VALUES(N'Thiên chúa giáo');
INSERT INTO ton_giao(`ten_ton_giao`) VALUES(N'Không');
INSERT INTO ton_giao(`ten_ton_giao`) VALUES(N'Khác');
-- / ton_giao----------------------------- --
/*
	Tạo bảng lưu thông tin hồ sơ nhân viên
*/

CREATE TABLE ho_so(
	id int PRIMARY KEY AUTO_INCREMENT,
    code VARCHAR(20) not null UNIQUE,
    ten VARCHAR(50) not null,
    ho_dem VARCHAR(50) not null,
    ngay_sinh DATE not null,
    gioi_tinh bit(1) not null,
    que_quan VARCHAR(50) not null,
    dia_chi_lien_lac VARCHAR(50) not null,
    so_dien_thoai VARCHAR(15) not null,
    email VARCHAR(50) not null,
    so_cmnd VARCHAR(15) not null UNIQUE,
    bang VARCHAR(50),
    loai_bang VARCHAR(10),
    chuyen_nganh VARCHAR(50),
    ngoai_ngu VARCHAR(50),
    dan_toc_id int NOT null,
    ton_giao_id int NOT null,
    gioi_thieu TEXT,
    CONSTRAINT FK1 FOREIGN KEY(dan_toc_id) REFERENCES dan_toc(id) 
    	ON UPDATE CASCADE ON DELETE CASCADE,
    CONSTRAINT FK2 FOREIGN KEY(ton_giao_id) REFERENCES ton_giao(id) 
    	ON UPDATE CASCADE ON DELETE CASCADE
);
INSERT INTO `ho_so`(`code`, `ten`, `ho_dem`, `ngay_sinh`, `gioi_tinh`, `que_quan`, `dia_chi_lien_lac`
    , `so_dien_thoai`, `email`, `so_cmnd`, `bang`, `loai_bang`, `chuyen_nganh`, `ngoai_ngu`, `dan_toc_id`, `ton_giao_id`, `gioi_thieu`) 
		VALUES ('NV094347563956304684', N'Danh',N'Nguyễn','03-10-1996',b'0',N'Hải Phòng',N'Từ Liêm-Hà Nội','0934627844','abcgsgsa@gmail.com','0324723344'
                ,N'Đại học',N'Giỏi',N'Công nghệ thống tin',N'Tiếng Anh',1,1,N'Lập trình viên Java');

INSERT INTO `ho_so`(`code`, `ten`, `ho_dem`, `ngay_sinh`, `gioi_tinh`, `que_quan`, `dia_chi_lien_lac`
    , `so_dien_thoai`, `email`, `so_cmnd`, `bang`, `loai_bang`, `chuyen_nganh`, `ngoai_ngu`, `dan_toc_id`, `ton_giao_id`, `gioi_thieu`) 
		VALUES ('NV094347563956304681', N'Danh',N'Nguyễn','03-10-1996',b'0',N'Hải Phòng',N'Từ Liêm-Hà Nội','0934627844','abcgsgsa@gmail.com','0384723341'
                ,N'Đại học',N'Giỏi',N'Công nghệ thống tin',N'Tiếng Anh',1,1,N'Lập trình viên Java');INSERT INTO `ho_so`(`code`, `ten`, `ho_dem`, `ngay_sinh`, `gioi_tinh`, `que_quan`, `dia_chi_lien_lac`
    , `so_dien_thoai`, `email`, `so_cmnd`, `bang`, `loai_bang`, `chuyen_nganh`, `ngoai_ngu`, `dan_toc_id`, `ton_giao_id`, `gioi_thieu`) 
		VALUES ('NV094347563956304682', N'Danh',N'Nguyễn','03-10-1996',b'0',N'Hải Phòng',N'Từ Liêm-Hà Nội','0934627844','abcgsgsa@gmail.com','0321723342'
                ,N'Đại học',N'Giỏi',N'Công nghệ thống tin',N'Tiếng Anh',1,1,N'Lập trình viên Java');
INSERT INTO `ho_so`(`code`, `ten`, `ho_dem`, `ngay_sinh`, `gioi_tinh`, `que_quan`, `dia_chi_lien_lac`
    , `so_dien_thoai`, `email`, `so_cmnd`, `bang`, `loai_bang`, `chuyen_nganh`, `ngoai_ngu`, `dan_toc_id`, `ton_giao_id`, `gioi_thieu`) 
		VALUES ('NV094347563956304634', N'Danh',N'Nguyễn','03-10-1996',b'0',N'Hải Phòng',N'Từ Liêm-Hà Nội','0934627844','abcgsgsa@gmail.com','0384723342'
                ,N'Đại học',N'Giỏi',N'Công nghệ thống tin',N'Tiếng Anh',1,1,N'Lập trình viên Java');
                INSERT INTO `ho_so`(`code`, `ten`, `ho_dem`, `ngay_sinh`, `gioi_tinh`, `que_quan`, `dia_chi_lien_lac`
    , `so_dien_thoai`, `email`, `so_cmnd`, `bang`, `loai_bang`, `chuyen_nganh`, `ngoai_ngu`, `dan_toc_id`, `ton_giao_id`, `gioi_thieu`) 
		VALUES ('NV094347562956304684', N'Danh',N'Nguyễn','03-10-1996',b'0',N'Hải Phòng',N'Từ Liêm-Hà Nội','0934627844','abcgsgsa@gmail.com','0384723344'
                ,N'Đại học',N'Giỏi',N'Công nghệ thống tin',N'Tiếng Anh',1,1,N'Lập trình viên Java');

-- / ho_so----------------------------- --


