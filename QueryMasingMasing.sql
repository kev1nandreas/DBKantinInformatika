--querydaffa
--1
SELECT c_nama, k_nama
FROM customer
JOIN transaksi ON customer_c_nrp = c_nrp
JOIN karyawan ON k_nik = karyawan_k_nik
WHERE t_tanggal_transaksi BETWEEN '2023-09-25' AND '2023-10-10'
AND t_metode_pembayaran = 'Kartu debit';
--2



--query
