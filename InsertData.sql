---DATA CUSTOMER
INSERT INTO customer (c_nrp, c_nama) VALUES
  ('5025250319', 'Michael Fitzpatrick'),
  ('5025250564', 'Linda Butler'),
  ('5025267974', 'Emily Mclaughlin'),
  ('5025261096', 'Mark Merritt'),
  ('5025244544', 'Briana Terrell'),
  ('5025257144', 'Dale Davis'),
  ('5025276816', 'Laura Olson'),
  ('5025241114', 'Stephanie Miller'),
  ('5025267537', 'Regina Pugh'),
  ('5025255453', 'Beth Ramsey'),
  ('5025271418', 'Abigail Stephens'),
  ('5025265722', 'Molly Wilson'),
  ('5025255025', 'Debra Brooks'),
  ('5025270242', 'Victoria Palmer'),
  ('5025273006', 'Jessica Dixon'),
  ('5025251181', 'Jackson Blair'),
  ('5025269510', 'Tracy Bowman'),
  ('5025272956', 'Hector Hernandez'),
  ('5025250844', 'Sarah Cook'),
  ('5025249041', 'Ashley Caldwell'),
  ('5025276052', 'Brenda Riley'),
  ('5025261227', 'Sharon Cox'),
  ('5025276968', 'Carmen Manning'),
  ('5025248555', 'Kevin Terry'),
  ('5025246116', 'Theresa Mendoza'),
  ('5025266819', 'Margaret Miller'),
  ('5025260863', 'Stacey Robinson'),
  ('5025270931', 'Nancy Vargas'),
  ('5025273950', 'Julie Barry'),
  ('5025240637', 'Nathan Kelly'),
  ('5025244853', 'Jay Hurst'),
  ('5025270873', 'Bryan Hart'),
  ('5025263419', 'Barbara Stein'),
  ('5025253150', 'Jill Rice'),
  ('5025260505', 'Carlos Thomas'),
  ('5025244517', 'Joseph Schmitt'),
  ('5025277845', 'Beth Wu MD'),
  ('5025241791', 'Alan Kane'),
  ('5025251951', 'Jonathan Fox'),
  ('5025244442', 'Carla Reilly'),
  ('5025240184', 'Lindsey Small'),
  ('5025278700', 'Casey Jackson'),
  ('5025276657', 'Susan Torres DDS'),
  ('5025275635', 'Steven Brown'),
  ('5025271424', 'Steven Owens'),
  ('5025253185', 'Kelsey Washington'),
  ('5025267994', 'Peter Hale'),
  ('5025245152', 'Douglas Mitchell'),
  ('5025248167', 'Lauren Mcdonald'),
  ('5025264138', 'Jill Mora');
--DATA KEDAI
INSERT INTO kedai (ked_id, ked_nama) VALUES
  ('K01', 'Warung Bu Sol'),
  ('K02', 'Kedai Mak Nanun'),
  ('K03', 'Kantin Mungil Informatika');
<<<<<<< HEAD

INSERT INTO menu (mn_id, mn_nama, mn_harga, mn_jenis, kedai_ked_id) VALUES 
  ('C01', 'Mie Pangsit Ayam', 14000, 'Makanan', 'Kedai Mak Nanun'),
  ('C02', 'Mie Pangsit Ayam Bakso', 16000, 'Makanan', 'Kedai Mak Nanun'),
  ('C03', 'Mie Pangsit Ayam', 14000, 'Makanan', 'Kedai Mak Nanun'),
  ('C04', 'Mie Pangsit Ayam', 14000, 'Makanan', 'Kedai Mak Nanun'),
  ('C05', 'Mie Pangsit Ayam', 14000, 'Makanan', 'Kedai Mak Nanun'),
  ('C06', 'Mie Pangsit Ayam', 14000, 'Makanan', 'Kedai Mak Nanun'),
  ('C07', 'Mie Pangsit Ayam', 14000, 'Makanan', 'Kedai Mak Nanun'),
  
=======
--DATA KARYAWAN
INSERT INTO KARYAWAN (K_NIK,K_NAMA,K_JENIS_KELAMIN,K_EMAIL,K_UMUR,K_NO_TELP, KEDAI_KED_ID) VALUES
('1264683115471700', 'Carol Williams', 'L', 'wcarol@example.org', 29, '082542333815', 'K02'),
('4246321716258604', 'Sara Rogers', 'P', 'rsara@example.net', 35, '082658104522', 'K03'),
('6057077645410277', 'Anthony Murphy', 'P', 'manthony@example.net', 23, '082564889565', 'K01'),
('2508714836124945', 'Janet Kirk', 'P', 'kjanet@example.org', 25, '082601792606', 'K01'),
('9298557228857178', 'Jennifer Buchanan', 'L', 'bjennifer@example.org', 40, '082705139266', 'K02'),
('9892486148938912', 'Patricia Martinez', 'P', 'mpatricia@example.net', 37, '082495875645', 'K03');
>>>>>>> d7421a2100d72c2582e6a7b48d4be807c9cd276e
