-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2023-12-04 09:56:09.601

-- tables
-- Table: customer
CREATE TABLE customer (
    c_nrp char(10)  NOT NULL,
    c_nama varchar(250)  NOT NULL,
    CONSTRAINT customer_pk PRIMARY KEY (c_nrp)
);

-- Table: karyawan
CREATE TABLE karyawan (
    k_nik char(16)  NOT NULL,
    k_nama varchar(250)  NOT NULL,
    k_jenis_kelamin char(1)  NOT NULL,
    k_email varchar(50)  NOT NULL,
    k_umur int  NOT NULL,
    k_no_telp varchar(13)  NOT NULL,
    kedai_ked_id char(10)  NOT NULL,
    CONSTRAINT karyawan_pk PRIMARY KEY (k_nik)
);

-- Table: kedai
CREATE TABLE kedai (
    ked_id char(3)  NOT NULL,
    ked_nama varchar(250)  NOT NULL,
    CONSTRAINT kedai_pk PRIMARY KEY (ked_id)
);

-- Table: meja
CREATE TABLE meja (
    me_id char(2)  NOT NULL,
    me_customer_datang timestamp  NOT NULL,
    me_customer_pergi timestamp  NOT NULL,
    CONSTRAINT meja_pk PRIMARY KEY (me_id)
);

-- Table: membership
CREATE TABLE membership (
    m_id_membership char(10)  NOT NULL,
    m_no_telp varchar(13)  NOT NULL,
    m_alamat varchar(250)  NOT NULL,
    m_tanggal_bergabung date  NOT NULL,
    m_tanggal_kadluwarsa date  NOT NULL,
    customer_c_nrp char(10)  NOT NULL,
    CONSTRAINT membership_pk PRIMARY KEY (m_id_membership)
);

-- Table: menu
CREATE TABLE menu (
    mn_id char(3)  NOT NULL,
    mn_nama varchar(20)  NOT NULL,
    mn_harga int  NOT NULL,
    mn_jenis varchar(20)  NOT NULL,
    kedai_ked_id char(10)  NOT NULL,
    CONSTRAINT menu_pk PRIMARY KEY (mn_id)
);

-- Table: status_meja
CREATE TABLE status_meja (
    sm_id char(2)  NOT NULL,
    sm_status boolean  NOT NULL,
    meja_me_id char(2)  NOT NULL,
    CONSTRAINT status_meja_pk PRIMARY KEY (sm_id)
);

-- Table: transaksi
CREATE TABLE transaksi (
    t_id char(10)  NOT NULL,
    t_tanggal_transaksi date  NOT NULL,
    t_metode_pembayaran varchar(15)  NOT NULL,
    customer_c_nrp char(10)  NOT NULL,
    karyawan_k_nik char(16)  NOT NULL,
    CONSTRAINT transaksi_pk PRIMARY KEY (t_id)
);

-- Table: transaksi_meja
CREATE TABLE transaksi_meja (
    transaksi_t_id char(10)  NOT NULL,
    meja_me_id char(2)  NOT NULL,
    CONSTRAINT transaksi_meja_pk PRIMARY KEY (transaksi_t_id,meja_me_id)
);

-- Table: transaksi_menu
CREATE TABLE transaksi_menu (
    transaksi_t_id char(10)  NOT NULL,
    menu_mn_id char(10)  NOT NULL,
    CONSTRAINT transaksi_menu_pk PRIMARY KEY (transaksi_t_id,menu_mn_id)
);

-- foreign keys
-- Reference: kedai_karyawan (table: karyawan)
ALTER TABLE karyawan ADD CONSTRAINT kedai_karyawan
    FOREIGN KEY (kedai_ked_id)
    REFERENCES kedai (ked_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: membership_customer (table: membership)
ALTER TABLE membership ADD CONSTRAINT membership_customer
    FOREIGN KEY (customer_c_nrp)
    REFERENCES customer (c_nrp)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: menu_kedai (table: menu)
ALTER TABLE menu ADD CONSTRAINT menu_kedai
    FOREIGN KEY (kedai_ked_id)
    REFERENCES kedai (ked_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: status_meja_meja (table: status_meja)
ALTER TABLE status_meja ADD CONSTRAINT status_meja_meja
    FOREIGN KEY (meja_me_id)
    REFERENCES meja (me_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: transaksi_customer (table: transaksi)
ALTER TABLE transaksi ADD CONSTRAINT transaksi_customer
    FOREIGN KEY (customer_c_nrp)
    REFERENCES customer (c_nrp)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: transaksi_karyawan (table: transaksi)
ALTER TABLE transaksi ADD CONSTRAINT transaksi_karyawan
    FOREIGN KEY (karyawan_k_nik)
    REFERENCES karyawan (k_nik)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: transaksi_meja_meja (table: transaksi_meja)
ALTER TABLE transaksi_meja ADD CONSTRAINT transaksi_meja_meja
    FOREIGN KEY (meja_me_id)
    REFERENCES meja (me_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: transaksi_meja_transaksi (table: transaksi_meja)
ALTER TABLE transaksi_meja ADD CONSTRAINT transaksi_meja_transaksi
    FOREIGN KEY (transaksi_t_id)
    REFERENCES transaksi (t_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: transaksi_menu_menu (table: transaksi_menu)
ALTER TABLE transaksi_menu ADD CONSTRAINT transaksi_menu_menu
    FOREIGN KEY (menu_mn_id)
    REFERENCES menu (mn_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- Reference: transaksi_menu_transaksi (table: transaksi_menu)
ALTER TABLE transaksi_menu ADD CONSTRAINT transaksi_menu_transaksi
    FOREIGN KEY (transaksi_t_id)
    REFERENCES transaksi (t_id)  
    NOT DEFERRABLE 
    INITIALLY IMMEDIATE
;

-- End of file.

