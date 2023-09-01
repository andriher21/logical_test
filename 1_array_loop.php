<!DOCTYPE html>
<html>
<head>
<title>array_loop</title>
</head>
<body>

<?php

$aplikasi[1] ='gtAkademik';
$aplikasi[2] ='gtFinansi';
$aplikasi[3] ='gtPerizinan';
$aplikasi[4] ='eCampuz';
$aplikasi[5] ='eOviz';
$i=1;
    while($i <= count($aplikasi)){
        echo "$aplikasi[$i] <br>";
        $i++;
    }

?>

</body>
</html>