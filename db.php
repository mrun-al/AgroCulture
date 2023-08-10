<?php

    $serverName = "localhost";
    $userName = "root";
    $password = "";
    $dbName = "agroculture";

    $port = "3306";
    $conn = mysqli_connect($serverName, $userName, $password, $dbName, $port) or die("Connect failed: %s\n". $conn -> error);
 
    return $conn;
    
   ?>
    
    
<!--     
    
    
    ;
    if (!$conn)
    {
        die("Connection failed: " . mysqli_connect_error());
    }

?> -->
