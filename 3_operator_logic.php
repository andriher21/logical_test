<!DOCTYPE html>
<html>
<head>
<title>array_loop</title>
</head>
<body>

<?php

$angka = 7;
$pembagi = 2;
$sisa = $angka;
$hasil = 0;
    while($sisa >= $pembagi ){
      $sisa = $sisa - $pembagi;
      $hasil++;
    }
echo "Angka : $angka <br>";
echo "Pembagi : $pembagi <br>";
echo " Hasilnya adalah : $hasil";
?>

</body>
</html>