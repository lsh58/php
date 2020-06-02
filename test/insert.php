<?php

    include 'db.php';

    $name = $_GET["name"];
    $tel = $_GET["tel"];
    $email = $_GET["emial"];
    $date = date("y-m-d");

    echo $name;
    echo $tel;
    echo $email;

    $query = "INSERT INTO member(name, tel, email, date) VALUES ('$name','$tel','$email','$date')";
    // $query = "SELECT * FROM `member` WHERE 1"
    mysqli_query($dbConnect,$query);

    echo "<script> location.href='index.php'; </script>";
?>

