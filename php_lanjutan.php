<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1> Input Nama dan Diulang </h1>
    <form action="<?php $_SERVER['PHP_SELF'] ?>" method="post">
        <label>Nama</label>
        <input type="text" name="nama">
        <label>Jumlah</label>
        <input type="text" name="no">
        <input type="submit" name="submit" value="Submit">
    </form>
    <?php
        if(!empty($_POST['submit'])) {

            switch($_POST['nama']) {
                case "Alisa";
                    $pesan = $_POST['nama']." adalah mahasiswi Poliwangi";
                break;
                case "Jazilah";
                    $pesan = $_POST['nama']." dari jurusan Teknik Informatika";
                break;
                default;
                    $pesan =$_POST['nama']." sedang apa yaa?";    
            }

            for ($i=0;$i<$_POST['no'];$i++) {
                echo $pesan."<br>";
            }
        } else {
            echo "Anda belum input nama tersebut";
        }
    ?>
</body>
</html>