<!DOCTYPE html>
<html>
<head>
<title></title>
</head>
<body>

<?php


    for($i=1;$i <= 50;$i++){
        if(is_int($i/3) && is_int($i/5)){
            echo "$i FooBar <br>";
        }
        
        else if(is_int($i/5)){
            echo "$i Bar <br>";
        }
        else if(is_int($i/3)){
            echo "$i Foo <br>";
            }

    }

?>

</body>
</html>