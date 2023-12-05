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
  ('K03', 'Kantin Mungil Informatika'),
  ('K04', 'Ombens IF');

--DATA MENU
INSERT INTO menu (mn_id, mn_nama, mn_harga, mn_jenis, kedai_ked_id) VALUES 
  ('C01', 'Mie Pangsit Ayam', 14000, 'Makanan', 'K02'),
  ('C02', 'Mie Pangsit Ayam Bakso', 16000, 'Makanan', 'K02'),
  ('C03', 'Mie Pangsit Ayam Ceker', 16000, 'Makanan', 'K02'),
  ('C04', 'Mie Pangsit Komplit', 16000, 'Makanan', 'K02'),
  ('C05', 'Siomay Biasa', 14000, 'Makanan', 'K02'),
  ('C06', 'Siomay Goreng', 16000, 'Makanan', 'K02'),
  ('C07', 'Nasi Goreng', 12000, 'Makanan', 'K02'),
  ('C08', 'Nasi Goreng Telur', 13000, 'Makanan', 'K02'),
  ('C09', 'Nasi Goreng Ayam', 15000, 'Makanan', 'K02'),
  ('C10', 'Nasi Goreng Spesial', 18000, 'Makanan', 'K02'),
  ('C11', 'Nasi Goreng Geprek', 17000, 'Makanan', 'K02'),
  ('C12', 'Nasi Geprek Ayam', 15000, 'Makanan', 'K02'),
  ('C13', 'Nasi Geprek Ayam Saus Telur Asin', 17000, 'Makanan', 'K02'),
  ('C14', 'Nasi Geprek Ayam Mozarella', 15000, 'Makanan', 'K02'),
  ('C15', 'Nasi Geprek Telur', 15000, 'Makanan', 'K02'),
  ('C16', 'Nasi Geprek Jeroan', 15000, 'Makanan', 'K02'),
  ('C17', 'Nasi Geprek Ayam Rempah', 15000, 'Makanan', 'K02'),
  ('C19', 'Kerupuk Bungkus', 3000, 'Makanan', 'K02'),
  ('C20', 'Nasi Campur', 10000, 'Makanan', 'K02'),
  ('C21', 'Nasi Krawu Ayam', 13000, 'Makanan', 'K02'),
  ('C22', 'Nasi Krawu Daging', 16000, 'Makanan', 'K02'),
  ('C23', 'Nasi Uduk', 13000, 'Makanan', 'K02'),
  ('C24', 'Nasi Ayam Lodoh', 10000, 'Makanan', 'K02'),
  ('C25', 'Kwetiaw Goreng', 15000, 'Makanan', 'K02'),
  ('C24', 'Bakso', 14000, 'Makanan', 'K02'),
  ('C25', 'Nasi Madura', 16000, 'Makanan', 'K01'),
  ('C26', 'Nasi Serpang', 18000, 'Makanan', 'K01'),
  ('C27', 'Nasi Kuning', 14000, 'Makanan', 'K01'),
  ('C28', 'Nasi Babat Madura', 13000, 'Makanan', 'K01'),
  ('C29', 'Nasi Gila', 12000, 'Makanan', 'K01'),
  ('C30', 'Nasi Rawon', 16000, 'Makanan', 'K01'),
  ('C31', 'Nasi Opor', 10000, 'Makanan', 'K01'),
  ('C32', 'Nasi Ayam Rica-Rica', 10000, 'Makanan', 'K01'),
  ('C33', 'Nasi Pecel + Peyek', 9000, 'Makanan', 'K01'),
  ('C34', 'Nasi Cumi Hitam', 10000, 'Makanan', 'K01'),
  ('C35', 'Chicken Steak Crispy', 13000, 'Makanan', 'K01'),
  ('C36', 'Chicken Steak Grilled', 13000, 'Makanan', 'K01'),
  ('C37', 'Chicken Blackpepper', 15000, 'Makanan', 'K01'),
  ('C38', 'Nasi Soto Daging', 17000, 'Makanan', 'K01'),
  ('C39', 'Nasi Soto Ayam', 15000, 'Makanan', 'K01'),
  ('C40', 'Soto Mie Bogor', 17000, 'Makanan', 'K01'),
  ('C41', 'Tahu Telor', 14000, 'Makanan', 'K01'),
  ('C42', 'Tahu Tek', 12000, 'Makanan', 'K01'),
  ('C43', 'Ketoprak', 14000, 'Makanan', 'K01'),
  ('C44', 'Gado-Gado', 14000, 'Makanan', 'K01'),
  ('C45', 'Batagor', 6000, 'Makanan', 'K01'),
  ('C46', 'Nasi Putih', 3000, 'Makanan', 'K01'),
  ('C47', 'Ayam Goreng', 5000, 'Makanan', 'K01'),
  ('C48', 'Telor Ceplok', 3000, 'Makanan', 'K01'),
  ('C49', 'Telor Dadar', 3000, 'Makanan', 'K01'),
  ('C50', 'Bakwan Jagung', 1000, 'Makanan', 'K01'),
  ('C51', 'Tahu/Tempe', 1000, 'Makanan', 'K01');
  

--DATA KARYAWAN
INSERT INTO karyawan (k_nik,k_nama,k_jenis_kelamin,k_email,k_umur,k_no_telp, kedai_ked_id) VALUES
('1264683115471700', 'Carol Williams', 'L', 'wcarol@example.org', 29, '082542333815', 'K02'),
('4246321716258604', 'Sara Rogers', 'P', 'rsara@example.net', 35, '082658104522', 'K03'),
('6057077645410277', 'Anthony Murphy', 'P', 'manthony@example.net', 23, '082564889565', 'K01'),
('2508714836124945', 'Janet Kirk', 'P', 'kjanet@example.org', 25, '082601792606', 'K01'),
('9298557228857178', 'Jennifer Buchanan', 'L', 'bjennifer@example.org', 40, '082705139266', 'K02'),
('9892486148938912', 'Patricia Martinez', 'P', 'mpatricia@example.net', 37, '082495875645', 'K03')
('5612871662187826', 'Liam Miller', 'P', 'millerl@example.org', 41, '086167895070', 'K04'),
('7274267390586417', 'Gary Monroe', 'L', 'monroeg@example.net', 28, '082314253748', 'K04');

