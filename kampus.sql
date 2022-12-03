-- buat database fakultas
CREATE DATABASE seal_fakultas;

-- buat table jurusan
CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

-- buat table mahasiswa
CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum ('Laki-Laki', 'perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES jurusan (id)
);

-- masukin data jurusan
insert into jurusan (kode,nama) values ('APBL','Teknik Informatika');
insert into jurusan (kode,nama) values ('AKTS','Teknik Sipil');

-- masukin data mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (1,'35101311', 'Alisa', 'perempuan', 'Banyuwangi', '2002-07-22', 'Jl. Songgon');
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat)
values (2,'35101312', 'Ali Esqiel', 'laki-laki', 'Bandung', '2001-10-13', 'Jl. Ikanhiu');

-- update data mahasiswa
update mahasiswa set alamat = "Jl. Ikanhiu" where id = 2;

-- delete data mahasiswa
delete from mahasiswa where id=2;