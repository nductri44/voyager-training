CREATE DATABASE Stationery;

CREATE TABLE SINHVIEN (
	`MaSV` BIGINT UNSIGNED NOT NULL
	AUTO_INCREMENT UNIQUE,
	`HoTen` VARCHAR(100),
	`MaLop` VARCHAR(10),
	`GioiTinh` VARCHAR(10),
	`NgaySinh` DATE,
	`DiaChi` VARCHAR(100)
);

INSERT INTO SINHVIEN (HoTen, MaLop, GioiTinh , NgaySinh, DiaChi)
VALUES
  ('Phan Thanh', 'CT12', 'False', '1990-12-09', 'Tuy Phuoc'),
  ('Nguyen Thi Cam', 'CT12', 'True', '1994-12-01', 'Quy Nhon'),
  ('Vo Thi Ha', 'CT12', 'True', '1995-07-02', 'An Nhon'),
  ('Tran Hoai Nam', 'CT12', 'False', '1994-05-04', 'Tay Son'),
  ('Tran Van Hoang', 'CT13', 'False', '1995-04-08', 'Vinh Thanh'),
  ('Dang Thi Thao', 'CT13', 'True', '1995-12-06', 'Quy Nhon'),
  ('Le Thi Sen', 'CT13', 'True', '1994-12-08', 'Phu Cat'),
  ('Nguyen Van Huy', 'CT11', 'False', '1995-04-06', 'Phu My'),
  ('Tran Thi Hoa', 'CT11', 'True', '1994-09-08', 'Hoai Nhon');

-- Cau A.
SELECT MaSV, HoTen, MaLop, NgaySinh,
CASE 
	WHEN GioiTinh = 'True' THEN 'Nữ'
	ELSE 'Nam'
END AS GioiTinh, EXTRACT(YEAR FROM NgaySinh)AS NamSinh
FROM SINHVIEN
WHERE HoTen NOT LIKE 'N%' AND HoTen NOT LIKE 'L%' AND HoTen NOT LIKE 'T%';

-- Cau B.
SELECT MaSV, HoTen, MaLop, NgaySinh,
CASE 
	WHEN GioiTinh = 'True' THEN 'Nữ'
	ELSE 'Nam'
END AS GioiTinh, EXTRACT(YEAR FROM NgaySinh)AS NamSinh
FROM SINHVIEN
WHERE GioiTinh = 'False' AND MaLop = 'CT11'

-- Cau C.
SELECT MaSV, HoTen, MaLop, NgaySinh,
CASE 
	WHEN GioiTinh = 'True' THEN 'Nữ'
	ELSE 'Nam'
END AS GioiTinh
FROM SINHVIEN
WHERE MaLop = 'CT11' OR MaLop = 'CT12' OR MaLop = 'CT13';

-- Cau D.
SELECT MaSV, HoTen, MaLop, NgaySinh,
CASE 
	WHEN GioiTinh = 'True' THEN 'Nữ'
	ELSE 'Nam'
END AS GioiTinh
FROM SINHVIEN
WHERE (2023 - EXTRACT(YEAR FROM NgaySinh)) BETWEEN 19 AND 21;
