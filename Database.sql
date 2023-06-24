create database QLSV

use QLSV

create table QueQuan
(
	maTinh int primary key identity,
	tenTinh nvarchar(50)
)

create table SinhVien
(
	maSinhVien int identity,
	tenSinhVien nvarchar(100),
	idQueQuan int,
	ngaySinh date,
	gioiTinh bit,
	diemMon1 float,
	diemMon2 float,
	diemMon3 float,
	constraint foreignKeyQueQuan foreign key (idQueQuan) references QueQuan(maTinh)
)