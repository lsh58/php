<?php
    include $_SERVER['DOCUMENT_ROOT'].'/php/108-2-connectDB.php';

    $sql = "SELECT max(japanese) FROM schoolRecord;";
    $result = $dbConnect->query($sql); //쿼리 송신
    $score = $result->fetch_array(MYSQLI_ASSOC);
    echo '가장 높은 일본어 점수 : '.$score['max(japanese)'];
?>