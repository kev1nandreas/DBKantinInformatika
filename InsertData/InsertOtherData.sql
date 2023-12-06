--DATA KEDAI

INSERT INTO kedai (ked_id, ked_nama) VALUES
  ('K01', 'Warung Bu Sol'),
  ('K02', 'Kedai Mak Nanun'),
  ('K03', 'Kantin Mungil Informatika'),
  ('K04', 'Ombens IF');

--DATA KARYAWAN

INSERT INTO karyawan (k_nik,k_nama,k_jenis_kelamin,k_email,k_umur,k_no_telp, kedai_ked_id) VALUES
  ('1264683115471700', 'Carol Williams', 'L', 'wcarol@example.org', 29, '082542333815', 'K02'),
  ('4246321716258604', 'Sara Rogers', 'P', 'rsara@example.net', 35, '082658104522', 'K03'),
  ('6057077645410277', 'Anthony Murphy', 'P', 'manthony@example.net', 23, '082564889565', 'K01'),
  ('2508714836124945', 'Janet Kirk', 'P', 'kjanet@example.org', 25, '082601792606', 'K01'),
  ('9298557228857178', 'Jennifer Buchanan', 'L', 'bjennifer@example.org', 40, '082705139266', 'K02'),
  ('9892486148938912', 'Patricia Martinez', 'P', 'mpatricia@example.net', 37, '082495875645', 'K03'),
  ('5612871662187826', 'Liam Miller', 'P', 'millerl@example.org', 41, '086167895070', 'K04'),
  ('7274267390586417', 'Gary Monroe', 'L', 'monroeg@example.net', 28, '082314253748', 'K04');

--TABEL MEMBERSHIP

INSERT INTO MEMBERSHIP (M_ID_MEMBERSHIP,M_NO_TELP,M_ALAMAT,M_TANGGAL_BERGABUNG,M_TANGGAL_KADLUWARSA, CUSTOMER_C_NRP) VALUES
('MEM0000001', '088433239636', 'Batam', '01/01/2023', '04/01/2023', '5025250564'),
('MEM0000002', '083364138506', 'Palembang', '01/08/2023', '04/08/2023', '5025261227'),
('MEM0000003', '083969648928', 'Batam', '01/11/2023', '04/11/2023', '5025276657'),
('MEM0000004', '080158011507', 'Depok', '01/17/2023', '04/17/2023', '5025272956'),
('MEM0000005', '087643389745', 'Palembang', '01/17/2023', '04/17/2023', '5025240184'),
('MEM0000006', '081934249879', 'Depok', '01/19/2023', '04/19/2023', '5025244442'),
('MEM0000007', '084155431201', 'Makassar', '01/27/2023', '04/27/2023', '5025264138'),
('MEM0000008', '080407577915', 'Semarang', '01/30/2023', '04/30/2023', '5025266819'),
('MEM0000009', '089173021786', 'Medan', '01/30/2023', '04/30/2023', '5025249041'),
('MEM0000010', '089013516382', 'Makassar', '01/30/2023', '04/30/2023', '5025267537'),
('MEM0000011', '084455581514', 'Batam', '02/11/2023', '05/12/2023', '5025245152'),
('MEM0000012', '089489339412', 'Palembang', '02/13/2023', '05/14/2023', '5025261096'),
('MEM0000013', '084249424648', 'Bandung', '02/14/2023', '05/15/2023', '5025255025'),
('MEM0000014', '085003593273', 'Semarang', '02/21/2023', '05/22/2023', '5025267974'),
('MEM0000015', '089129406652', 'Surabaya', '02/22/2023', '05/23/2023', '5025271418'),
('MEM0000016', '084776510811', 'Depok', '02/26/2023', '05/27/2023', '5025277845'),
('MEM0000017', '083987613629', 'Batam', '02/27/2023', '05/28/2023', '5025265722'),
('MEM0000018', '087136512040', 'Batam', '03/01/2023', '05/30/2023', '5025270931'),
('MEM0000019', '083119005180', 'Bandung', '03/03/2023', '06/01/2023', '5025276968'),
('MEM0000020', '086466460319', 'Batam', '03/06/2023', '06/04/2023', '5025253185'),
('MEM0000021', '089836273142', 'Bandung', '03/08/2023', '06/06/2023', '5025276052'),
('MEM0000022', '089502196900', 'Depok', '03/09/2023', '06/07/2023', '5025244853'),
('MEM0000023', '089549005691', 'Bandung', '03/19/2023', '06/17/2023', '5025257144'),
('MEM0000024', '083817694658', 'Semarang', '03/27/2023', '06/25/2023', '5025241114'),
('MEM0000025', '081063664527', 'Medan', '03/28/2023', '06/26/2023', '5025260863'),
('MEM0000026', '081704193302', 'Tangerang', '03/30/2023', '06/28/2023', '5025250319'),
('MEM0000027', '082590803823', 'Depok', '03/31/2023', '06/29/2023', '5025271424');

-- DATA MEJA

INSERT INTO MEJA (ME_ID, ME_KAPASITAS, ME_STATUS) VALUES 
  ('01', 4, '1'),
  ('02', 2, '1'),
  ('03', 4, '0'),
  ('04', 2, '0'),   -- STATUS 1 ARTINYA TERISI 
  ('05', 4, '1'),   -- STATUS 0 ARTINYA KOSONG
  ('06', 4, '1'),
  ('07', 6, '0'),
  ('08', 2, '1'),
  ('09', 4, '0'),
  ('10', 4, '0');
