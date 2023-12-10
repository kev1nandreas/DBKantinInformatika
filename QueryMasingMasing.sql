--querydaffa
--1
SELECT c_nama, k_nama
FROM customer
JOIN transaksi ON customer_c_nrp = c_nrp
JOIN karyawan ON k_nik = karyawan_k_nik
WHERE t_tanggal_transaksi BETWEEN '2023-09-25' AND '2023-10-10'
AND t_metode_pembayaran = 'Kartu debit';
--2
SELECT ked_nama, COUNT(mn_id) AS jumlah_menu
FROM kedai
LEFT JOIN menu ON kedai_ked_id = ked_id AND mn_jenis = 'Makanan'
GROUP BY ked_nama
ORDER BY ked_nama;
--3
SELECT * FROM customer
WHERE c_nrp IN (
    SELECT customer_c_nrp
    FROM membership
    WHERE EXTRACT(YEAR FROM m_tanggal_kadluwarsa) = 2023
);
--4
SELECT k_nama, jumlah_transaksi
FROM (
    SELECT k_nama, COUNT(t_id) AS jumlah_transaksi
    FROM karyawan 
    LEFT JOIN transaksi ON k_nik = karyawan_k_nik
    WHERE EXTRACT(MONTH FROM t_tanggal_transaksi) = 9
    GROUP BY k_nama
)
ORDER BY jumlah_transaksi ASC;

--query
