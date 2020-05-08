<?
    $root = $_SERVER['DOCUMENT_ROOT'];
    include_once $root."/ex_join/db.php";

    $query = "select * from join_ order by num asc";
    $result = mysqli_query($dbConnect, $query);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <a href="request.php">가입하기</a>
    <article>
        <h2>회원리스트</h2>
        <table>
            <thead>
                <th>NUM</th>
                <th>ID</th>
                <th>PW</th>
                <th>SEX</th>
                <th>CITY</th>
                <th>WHAT</th>
                <th>CONTENT</th>
            </thead>
            <tbody>
            <?
                while($row = mysqli_fetch_array($result)){
            ?>
                <tr>
                    <td><?=$row['num'];?></td>
                    <td><?=$row['id'];?></td>
                    <td><?=$row['pw'];?></td>
                    <td><?=$row['s'];?></td>
                    <td><?=$row['city'];?></td>
                    <td><?=$row['what'];?></td>
                    <td><?=$row['content'];?></td>
                    <td>
                    <a href="modify.php?num=<?=$row['num']?>">[수정]</a>
                    <a href="delete.php?num=<?=$row['num']?>">[삭제]</a>
                    </td>
                </tr>
            <? } ?>
            </tbody>
        </table>
    </article>

</body>
</html>