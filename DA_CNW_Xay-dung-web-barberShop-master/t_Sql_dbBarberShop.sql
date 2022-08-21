--1. Khách hàng (Lưu thông tin của khách hàng) => OK
--	+ Mã khách hàng
--	+ Tên khách hàng
--	+ Số điện thoại
--	+ Email
--	+ Địa chỉ
--	+ Brithday
--	+ Mật khẩu
--	+ Điểm số (Sẽ tăng khi khách hàng sử dụng dịch vụ tại 30shine) nhằm có những khuyến mãi
--2. Nhân viên (lưu thông tin của nhân viên) => OK
--	+ Mã nhân viên
--	+ Tên nhân viên
--	+ Ngày sinh
--	+ Số điện thoại
--	+ Email
--	+ Giới tính
--	+ Mật khẩu
--	+ Chức vụ
--	+ Lương
--	+ Ngày vào làm
--	+ Trạng thái (tài khoản được sử dụng hoặc không)
--Ví dụ: 1 sản phẩm thuộc 1 nhóm sản phẩm nào đó rồi thuộc cả danh mục nào đó
--	=> Sáp vuốt tóc GLANZEN FOX thuộc danh mục sáp vuốt tóc thuộc nhóm tạo kiểu tóc
--https://shop.30shine.com/
--3. Nhóm sản phẩm
--	+ Mã nhóm sản phẩm
--	+ Tên nhóm sản phẩm
--	+ Mô tả nhóm sản phẩm
--4. Danh mục sản phẩm
--	+ Mã danh mục sản phẩm
--	+ Mã nhóm sản phẩm
--	+ Tên danh mục sản phẩm
--	+ Mô tả danh mục sản phẩm
--5. Sản phẩm
--	+ Mã sản phẩm
--	+ Mã danh mục sản phẩm
--	+ Mã hình ảnh => Mỗi một sản phẩm có thể có nhiều ảnh sản phẩm
--	+ Mã chương trình giảm giá => Lưu chương trình giảm giá
--	+ Tên sản phẩm
--	+ Mô tả sản phẩm
--	+ Giá bán
--	+ Đánh giá => Lưu đánh giá của khách hàng (1, 2, ..5 sao)
--	+ Trạng thái hiển thị => Sản phẩm có được hiển thị hay là không
--	+ Hình ảnh
--	+ Số lượng còn
--	+ Số lượng xem
--	+ Trạng thái
--Ví dụ dịch vụ nhuộm thì nó lại có nhiều dịch vụ ở trong đó nhuộm hồng, xanh, trắng, ...
--6. Loại dịch vụ
--	+ Mã loại dịch vụ
--	+ Tên loại dịch vụ
--	+ Mô tả
--7. Combo dịch vụ
--	+ Mã combo
--	+ Tên combo
--	+ Mô tả
--	+ Giảm giá
--	+ Trạng thái 
--8. Dịch vụ
--	+ Mã dịch vụ
--	+ Mã giảm giá
--	+ Mã hình ảnh
--	+ Tên dịch vụ
--	+ Mô tả
--	+ Giá 
--	+ Hình ảnh
--	+ Thời gian thực hiện
--	+ Đánh giá dịch vụ (1, 2, ..5 sao)
--	+ Trạng thái
--9. Bảng nhóm tin
--	+ Mã nhóm tin
--	+ Tên nhóm tin
--	+ Mô tả
--10. Bảng nhóm danh mục tin
--	+ Mã danh mục tin
--	+ Mã nhóm tin
--	+ Tên danh mục tin
--	+ Mô tả
--11. Tin tức
--	+ Mã tin
--	+ Mã danh mục tin
--	+ Mã tài khoản nhân viên => Nhân viên tạo tin này
--	+ Mã hình ảnh => Link tới những hình ảnh liên quan
--	+ Tiêu đề tin
--	+ Mô tả tin	
--	+ Ngày tạo
--	+ Trạng thái
--12. Đặt lịch
--	+ Mã đặt lịch
--	+ Mã dịch vụ
--	+ Mã nhân viên (Có thể chỉ định nhân viên phục vụ)
--	+ Mã khách hàng
--	+ Thời gian tạo
--	+ Thời gian bắt đầu thực hiện
--	+ Địa điểm
--	+ Ghi chú
--13. Đặt hàng
--	+ Mã đặt hàng
	
--	+ Mã khách hàng
--	+ Địa chỉ giao
--	+ Ngày đặt hàng
--	+ Ngày giao hàng
--	+ Ghi chú
--	+ Trang thái (Được giao hay chưa)

--=> tẠO THÊM BẢNG CHI TIẾT ĐẶT HÀNG
--14. Đơn hàng
--	+ Mã đơn hàng
--	+ Mã khách hàng
--	+ Mã đặt lịch
--	+ Mã đơn hàng
--	+ Tổng số tiền
--	+ Trạng thái thanh toán
--15. Chi tiết đơn hàng
--	+ Mã chi tiết đơn hàng
--	+ Mã đơn hàng
--	+ Mã dịch vụ
--	+ Mã sản phẩm
--16. Hình thức thanh toán
--	+ Mã hình thức thanh toán
--	+ Tên hình thức thanh toán
--	+ Mô tả
--	+ Trạng thái


		drop database DB_BARBER_SHOP_TEST6

CREATE DATABASE DB_BARBER_SHOP_TEST7
GO
USE DB_BARBER_SHOP_TEST7
GO
CREATE TABLE tblCustomer --Khách hàng
(
	PK_iCustomerID INT IDENTITY(1, 1) PRIMARY KEY NOT NULL, -- Mã khách hàng
	sNameCustomer nvarchar(50) NOT NULL,
	sPhoneNumber CHAR(11) NOT NULL, 
	sGmail nvarchar(50),
	sAddress nvarchar(50),
	dBrithDay DATE,
	sPassword varchar(50),
	iCoin INT DEFAULT 0,
	sSex BIT,
	sStatus BIT DEFAULT 1, -- Trạng thái tài khoản (mở / không)
)

GO
CREATE TABLE tblStaff -- Lưu thông tin của nhân viên
(
	PK_iStaffID INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
	sNameStaff nvarchar(50) NOT NULL,
	dBirthday DATE,
	sPhone CHAR(11),
	sGmail VARCHAR(150),
	sSex BIT, --1 LÀ NAM, 0 LÀ NỮ
	sPassword VARCHAR(50),
	sPosition NVARCHAR(50), -- CHỨC VỤ
	sSalary float, -- LƯƠNG
	dDayWork DATE, -- NGÀY VÀO LÀM
	sStatus BIT DEFAULT 1, -- Trạng thái tài khoản (mở / không)
)

GO
CREATE TABLE tblDiscount (-- Lưu thông tin của chương trình giảm giá
	PK_iDiscountID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	sNameDiscount NVARCHAR(200) NOT NULL,
	fRatioDiscount FLOAT NOT NULL, --MỨC GIẢM GIÁ TÍNH THEO %
	dStartDiscount DATE,
	dEndDiscount DATE,
	sDescription NVARCHAR(200)
)

GO
CREATE TABLE tblImage -- lưu ảnh
(
	PK_iImageID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	FK_iProductID INT,
	FK_iServiceID INT,
	FK_iPostID INT,
	FK_iComboServiceID INT,
	sImage NVARCHAR(200),
)
GO

CREATE TABLE tblGroupProduct( --Lưu thông tin nhóm sản phẩm
	PK_sGroupProductID VARCHAR(50) NOT NULL PRIMARY KEY,
	sGroupName NVARCHAR(100) NOT NULL,
	sDescription NVARCHAR(500) --Mô tả cho nhóm bài viết
)

GO
CREATE TABLE tblCategoryProduct( -- Lưu thông tin loại/danh mục sản phẩm
	PK_sCategoryProductID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	FK_sGroupProductID VARCHAR(50) NOT NULL,
	sCategoryName NVARCHAR(100),
	sDescription NVARCHAR(300)
)

GO
create table tblProduct  -- Lưu thông tin sản phẩm
(
	PK_iProductID INT IDENTITY(1, 1) primary key NOT NULL,
	FK_iCategoryProductID INT NOT NULL, 
	FK_iDiscountID INT, -- Khóa ngoại của giảm giá
	sProductName nvarchar(150) not null,
	sDescription NVARCHAR(MAX),
	fPrice float, -- Giá
	sStar INT DEFAULT 0, 
	sImage VARCHAR(150),
	iQuantityInStock INT DEFAULT 0, --Số lượng tồn
	iViewNumber INT DEFAULT 0, --Số lượng xem
	bStatus INT DEFAULT 1,
)



GO
CREATE TABLE tblTypeService (
	PK_iTypeServiceID INT IDENTITY NOT NULL PRIMARY KEY,
	sNameTypeService NVARCHAR(150),
	sDesciption NVARCHAR(300)
)
 --=> Uốn, nhuộm, cắt tỉa, massage, 
GO
CREATE TABLE tblComboService (
	PK_iComboServiceID INT IDENTITY NOT NULL PRIMARY KEY,
	FK_iDiscountID INT NOT NULL ,
	sNameComboService NVARCHAR(150),
	sDescription NVARCHAR(500),
	sImage VARCHAR(200),
	bStatus BIT DEFAULT 1,
)
GO
CREATE TABLE tblService -- lƯu thông tin dịch vụ:
(
	 PK_iServiceID INT IDENTITY(1, 1) primary key NOT NULL,
	 FK_iDiscountID INT,
	 FK_iTypeServiceID INT, 
	 sNameService nvarchar(150) NOT NULL,
	 sDescription NVARCHAR(2000),
	 fPrice FLOAT,
	 sImage varchar(200),
	 sStar INT DEFAULT 0,
	 bStatus BIT DEFAULT 1,
)

GO
create table tblStore -- Lưu cửa hàng  => Khỏi cần nhập thêm 
(
	PK_iStoreID INT IDENTITY(1, 1) primary key NOT NULL,
	sDescription nvarchar(400),
	dOpenStore DATE,
	dCloseStore DATE,
	sAddress nvarchar(50),
)
INSERT INTO tblStore(sAddress)
VALUES (N'Quận 12'),
		(N'Quận Tân Phú'),
		(N'Quận Phú Nhuận'),
		(N'Quận Thủ Đức')
GO
CREATE TABLE tblGroupPosts( --Lưu thông tin nhóm bài viết
	PK_sGroupPostID VARCHAR(50) NOT NULL PRIMARY KEY,
	sGroupName NVARCHAR(300),
	sDescription NVARCHAR(500) --Mô tả cho nhóm bài viết
)
GO
CREATE TABLE tblCategoryPost( -- Lưu thông tin loại/danh mục bài viết
	PK_sCategoryPostID VARCHAR(50) NOT NULL PRIMARY KEY,
	FK_sGroupPostID VARCHAR(50) NOT NULL,
	sCategoryName NVARCHAR(100),
	sDescription NVARCHAR(300)
)
GO
CREATE TABLE tblPosts (
	PK_iPostID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	FK_sCategoryPostID VARCHAR(50),
	FK_iStaffID INT, --Lưu thông tin nhân viên tạo cái bài post này
	sPostName NVARCHAR(300) NOT NULL, --Tiêu đề
	sDesciption NVARCHAR(1000),
	sImage NVARCHAR(300),
	dCreationTime DATETIME,
	bStatus BIT, -- Trạng thái hiển thị hoặc khong được hiển thị
)
GO
CREATE TABLE tblBookAdvance ( -- => bỎ QUA	
	PK_iBookAdvanceID INT IDENTITY NOT NULL PRIMARY KEY,
	FK_iStaffID INT, -- Chỉ định nhân viên thực hiện ( Có thể có hoặc không)
	FK_iCustomerID INT,
	FK_iStoreID INT,
	dCreateTime DATE,
	dExecutionTime DATE,
	sNote NVARCHAR(500)
)
GO
CREATE TABLE tblDetailBookAdvance (
	PK_iDetailBookAdvanceID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	FK_iBookAdvanceID INT NOT NULL,
	FK_iServiceID INT,
	CONSTRAINT FK_tblDetailBookAdvance_tblBookAdvance FOREIGN KEY (FK_iBookAdvanceID) REFERENCES tblBookAdvance (PK_iBookAdvanceID),
	CONSTRAINT FK_tblDetailBookAdvance_tblService FOREIGN KEY (FK_iServiceID) REFERENCES tblService (PK_iServiceID),
)

GO
CREATE TABLE tblOrderProduct ( -- Bỏ qua
	PK_iOrderID int identity (1, 1) not null primary key,
	FK_iCustomerID int not null,
	dNgayDatHang date not null,
	dNgayGiaoHang date not null,
	sAddressDelivery nvarchar(150) not null,
	sDescription nvarchar(150),
	bTinhTrangGiaoHang bit default 0, -- là dã giao
	--fTongTien float	
)
GO
CREATE TABLE tblDeatailOrder ( -- bỏ qua
	PK_iDetailOrderID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	FK_iOrderID INT NOT NULL,
	FK_iProductID INT NOT NULL,
	iSoLuong INT,
)
GO
CREATE TABLE tblReceipt (
	PK_iReceiptID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	FK_iOrderID INT,
	FK_iServiceID INT,
	FK_iStaffID INT,
	FK_iPayMentID INT,
	fTotalAmount FLOAT,
	dCompletionTime DATE -- Thời gian hoàn thành
)

GO
CREATE TABLE tblPayments ( -- Không cần nhập thêm
	PK_iPaymentsID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	sPaymentName NVARCHAR(50) NOT NULL,
	sDescription NVARCHAR(200),
	bStatus bit default 1,
)
INSERT INTO tblPayments(sPaymentName)
VALUES (N'Tiền mặt'),
	('MOMO'),
	('VNPay'),
	(N'Thẻ tín dụng')
GO

GO
ALTER TABLE tblCategoryProduct
ADD	CONSTRAINT FK_tblCategoryProduct_tblGroupProduct FOREIGN KEY (FK_sGroupProductID) REFERENCES tblGroupProduct(PK_sGroupProductID)
GO
ALTER TABLE tblProduct
ADD CONSTRAINT FK_tblProduct_tblCategoryProduct FOREIGN KEY (FK_iCategoryProductID) REFERENCES tblCategoryProduct(PK_sCategoryProductID)
GO
--ALTER TABLE tblProduct 
--ADD CONSTRAINT FK_tblProduct_tblImage FOREIGN KEY (FK_iImageID) REFERENCES tblImage(PK_iImageID)
GO
ALTER TABLE tblProduct
ADD CONSTRAINT FK_tblProduct_tblDiscount FOREIGN KEY (FK_iDiscountID) REFERENCES tblDiscount(PK_iDiscountID)
GO
ALTER TABLE tblComboService
ADD CONSTRAINT FK_tblComboService_tblDiscount FOREIGN KEY (FK_iDiscountID) REFERENCES tblDiscount(PK_iDiscountID)
GO
--ALTER TABLE tblComboService
--ADD CONSTRAINT FK_tblComboService_tblImage FOREIGN KEY (FK_iImageID) REFERENCES tblImage(PK_iImageID)
GO
ALTER TABLE tblService
ADD CONSTRAINT FK_tblService_tblDiscount FOREIGN KEY (FK_iDiscountID) REFERENCES tblDiscount(PK_iDiscountID)
GO
--ALTER TABLE tblService
--ADD CONSTRAINT FK_tblService_tblImage FOREIGN KEY (FK_iImageID) REFERENCES tblImage(PK_iImageID)
GO
ALTER TABLE tblService
ADD CONSTRAINT FK_tblService_tblTyeService FOREIGN KEY (FK_iTypeServiceID) REFERENCES tblTypeService(PK_iTypeServiceID)
GO
ALTER TABLE tblCategoryPost
ADD CONSTRAINT FK_tblCategoryPost_tblGroupPosts FOREIGN KEY (FK_sGroupPostID) REFERENCES tblGroupPosts(PK_sGroupPostID)
GO
ALTER TABLE tblPosts
ADD CONSTRAINT FK_tblPosts_tblCategoryPost FOREIGN KEY (FK_sCategoryPostID) REFERENCES tblCategoryPost(PK_sCategoryPostID)
GO 
ALTER TABLE tblPosts
ADD CONSTRAINT FK_tblPosts_tblStaff FOREIGN KEY (FK_iStaffID) REFERENCES tblStaff(PK_iStaffID)
GO
--ALTER TABLE tblBookAdvance
--ADD CONSTRAINT FK_tblBookAdvance_tblService FOREIGN KEY (FK_iServiceID) REFERENCES tblService(PK_iServiceID)
GO
GO
ALTER TABLE tblBookAdvance
ADD CONSTRAINT FK_tblBookAdvance_tblCustomer FOREIGN KEY (FK_iCustomerID) REFERENCES tblCustomer(PK_iCustomerID)
GO
ALTER TABLE tblBookAdvance
ADD CONSTRAINT FK_tblBookAdvance_tblStore FOREIGN KEY (FK_iStoreID) REFERENCES tblStore(PK_iStoreID)
GO
ALTER TABLE tblOrderProduct
ADD CONSTRAINT FK_tblOrderProduct_tblCustomer FOREIGN KEY (FK_iCustomerID) REFERENCES tblCustomer(PK_iCustomerID)
GO 
ALTER TABLE tblDeatailOrder
ADD CONSTRAINT FK_tblOrderProduct_tblDeatailOrder FOREIGN KEY (FK_iOrderID) REFERENCES tblOrderProduct(PK_iOrderID)
GO
ALTER TABLE tblDeatailOrder
ADD CONSTRAINT FK_tblProduct_tblDeatailOrder FOREIGN KEY (FK_iProductID) REFERENCES tblProduct(PK_iProductID)
GO
ALTER TABLE tblReceipt
ADD CONSTRAINT FK_tblReceipt_tblOrderProduct FOREIGN KEY (FK_iOrderID) REFERENCES tblOrderProduct(PK_iOrderID)
GO
ALTER TABLE tblReceipt
ADD CONSTRAINT FK_tblReceipt_tblService FOREIGN KEY (FK_iServiceID) REFERENCES tblService(PK_iServiceID)
GO
ALTER TABLE tblReceipt
ADD CONSTRAINT FK_tblReceipt_tblStaff FOREIGN KEY (FK_iStaffID) REFERENCES tblStaff(PK_iStaffID)
GO
ALTER TABLE tblReceipt
ADD CONSTRAINT FK_tblReceipt_tblPayments FOREIGN KEY (FK_iPayMentID) REFERENCES tblPayments(PK_iPaymentsID)
GO
ALTER TABLE tblImage
ADD CONSTRAINT FK_tblImage_tblProduct FOREIGN KEY (FK_iProductID) REFERENCES tblProduct(PK_iProductID)
GO
ALTER TABLE tblImage
ADD CONSTRAINT FK_tblImage_tblService FOREIGN KEY (FK_iServiceID) REFERENCES tblService(PK_iServiceID)
GO
ALTER TABLE tblImage
ADD CONSTRAINT FK_tblImage_tblPost FOREIGN KEY (FK_iPostID) REFERENCES tblPosts(PK_iPostID)
GO
ALTER TABLE tblImage
ADD CONSTRAINT FK_tblImage_tblComboService FOREIGN KEY (FK_iComboServiceID) REFERENCES tblComboService(PK_iComboServiceID)
--NHÁP
--CREATE TABLE tblReceipt(
--	PK_iReceiptID INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
--	FK_iOrderProductID INT, 
--	FK_iOrderScheduleID INT,
--	FK_iSatffID INT,
--	fSumMoney FLOAT,

--)

--GO
--create table tblOrderSchedule
--(
--	PK_iOrderScheduleID INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
--	FK_iCustomerID INT NOT NULL,
--	dTimeOrder datetime,
--	dTimePerform datetime,
--	FK_iStoreID INT NOT NULL,
--	FK_iStaffID INT,
--	FK_iServiceID INT,
--	constraint FK_tblOrderSchedule_tblCustomer foreign key(FK_iCustomerID) references tblCustomer(PK_iCustomerID),
--	constraint FK_tblOrderSchedule_tblStaff foreign key(FK_iStaffID) references tblStaff(PK_iStaffID),
--	constraint FK_tblOrderSchedule_tblServiceCustomer foreign key(FK_iServiceID) references tblServiceCustomer(PK_iServiceID)
--)


--GO
--CREATE TABLE tblPay (
--	PK_iPayID int identity (1, 1) not null primary key,
--	FK_iPaymentsID int, -- Hình thức thanh toán
--	FK_iStaffID int ,--Tài khoản nhân viên lên đơn
--	FK_iOrderID int , -- Đơn hàng
--	dTimePay date, -- Thời gian thanh toán
--	fsumMoney float default 0 check (fsumMoney >= 0), -- Tổng số tiền
--	bStatus bit default 1 , -- 1 là thành công
--	CONSTRAINT FK_tblPay_tblPayments FOREIGN KEY (FK_iPaymentsID) REFERENCES tblPayments(PK_iPaymentsID),
--	CONSTRAINT FK_tblPay_tblStaff FOREIGN KEY (FK_iStaffID) REFERENCES tblStaff(PK_iStaffID),
--	CONSTRAINT FK_tblPay_tblOrderProduct FOREIGN KEY (FK_iOrderID) REFERENCES tblOrderProduct(PK_iOrderID)
--)

--CREATE TABLE tbl_ChiTietDonHang (
--	PK_iChiTietDonHang int identity (1, 1) not null primary key,
--	FK_iDonHang int not null,
--	FK_iSanPhamID int not null,
--	iSoLuong int default 1,
--	fGiaBan float,
--	fGiamGia float default 0,	
--	constraint FK_CTDonHang_DonHang foreign key (FK_iDonHang) references tblOrderProduct (PK_iOrderID)
--)
--CREATE TABLE tblOrderProduct (
--	PK_iOrderID int identity (1, 1) not null primary key,
--	FK_iStaffID int  not null,
--	FK_HinhThucThanhToanID int not null,
--	FK_iCustomerID int not null,
--	dNgayDatHang date not null,
--	dNgayGiaoHang date not null,
--	sAddressDelivery nvarchar(150) not null,
--	sDescription nvarchar(150),
--	bTinhTrangThanhToan bit default 0, --1 là thành công
--	bTinhTrangGiaoHang bit default 0, -- là dã giao
--	fTongTien float	
--)

-- Phần nhập dữ liệu
-- Bảng khách hàng

INSERT INTO tblCustomer (sNameCustomer, sPhoneNumber, sSex)
VALUES (N'Anh Hiền', '0337122712', 1)
-- Bảng nhân viên
GO
SET DATEFORMAT DMY
INSERT INTO tblStaff (sNameStaff, sPhone, sSex, sPassword, sPosition, sSalary , dDayWork)
VALUES (N'Anh Hiền', '0337122712', 1, '123', 'Manager', 20000000, '11/02/2021')
GO
--Bảng nhóm sản phẩm
INSERT INTO tblGroupProduct(PK_sGroupProductID, sGroupName)
VALUES	('CHAMSOCDA', N'Chăm sóc da'),
		('CHAMSOCTOC', N'Chăm sóc tóc')
-- Bảng danh mục sản phẩm LƯU Ý NHẬP TỔNG CỘNG 10 DÒNG HOẶC HƠN
INSERT INTO tblCategoryProduct(FK_sGroupProductID, sCategoryName)
VALUES	('CHAMSOCDA', 'Tẩy tế bào chết'), -- Nhập thêm 5 dòng
		('CHAMSOCTOC', 'Sáp vuốt tóc') -- Nhập thêm 5 dòng
-- Bảng chương trình giảm giá => Nhập khoảng 2 dòng nữa
INSERT INTO tblDiscount(sNameDiscount, fRatioDiscount)
VALUES	(N'Chương trình giảm giá COVID - 19', 5),
		(N'Chưa có giảm giá', 0)
-- bẢNH ẢNH => Có bao nhiêu ảnh thì ráng nhập hết đi
INSERT INTO tblImage(sImage)
VALUES ('30shine-banner-khong-gian-salon.jpg')
-- Bảng sản phẩm => Nhập càng nhiều càng tốt
INSERT INTO tblProduct(FK_iCategoryProductID, FK_iDiscountID, sProductName, sDescription, fPrice, sImage)
VALUES (1, 3, N'Gel Tẩy Tế Bào Chết Acsys Peeling Gel', N'Tẩy da chết là một bước rất quan trọng trong
													 quá trình chăm sóc da không chỉ của phái nữ mà còn đối với cả nam giới.
													  Tuy nhiên, nhiều người đặc biệt là các anh em lại thường xuyên bỏ qua bước 
													  này trong quy trình chăm sóc da do ngại tốn thời gian hoặc cảm thấy không cần thiết.
													   Da không được làm sạch sâu, loại bỏ hết bụi bẩn sau ngày dài là nguyên nhân chính gây ra
														tình trạng mụn, bít tắc lỗ chân lông và lão hóa sớm. Bởi vậy, đừng bỏ qua bất kỳ bước chăm sóc da
														 nào và sắm ngay cho mình một em Gel tẩy tế bào chết hiệu quả như Acsys Peeling nhé. Đây là dòng sản phẩm tẩy da
														  chết cho nam hiệu quả hàng đầu giúp da sạch sâu mà vẫn ẩm mượt sau khi sử dụng.', 350000, '30SKPKLO-Gel-tay-te-bao-che.png')
-- Kiểu dịch vụ
INSERT INTO tblTypeService(sNameTypeService, sDesciption)
VALUES (N'Uốn', N'Với chuyên môn cao của các tay nghề tại cửa hàng 30hine đảm bảo cho bạn 1 quả tóc uốn thiệt tuyệt dời')
-- Combo dịch vụ => Nhập 3 dòng là được rồi
INSERT INTO tblComboService(FK_iDiscountID, sNameComboService, sDescription, sImage)
VALUES (3, N'Combo cắt tóc - massage da mặt', N'abc', '30shine-massage-covaigay-3.jpg')
--Bảng dịch vụ
INSERT INTO tblService(FK_iDiscountID, FK_iTypeServiceID, sNameService, sDescription, fPrice, sImage)
VALUES (3, 1, N'Uốn Hàn Quốc 8 cấp độ', N'Trở thành phiên bản mới của chính bạn', 260, '30shine-nhuom-thoi-trang-2.jpg')
