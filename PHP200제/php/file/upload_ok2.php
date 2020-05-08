<?
    $root = $_SERVER['DOCUMENT_ROOT'];
    include_once $root."/file/db.php";

    $file = $_FILES['upload'];

    foreach($file['name'] as $key => $arr){ 
            $fileName = $file['name'][$key];
            $tmp = $file['tmp_name'][$key];
            $uploadUrl = './'.$file['name'][$key];

            move_uploaded_file($tmp,$uploadUrl);
    }
    // echo "<pre>";    
    // var_dump($file);    
    // echo $file['name'];
    // echo $file['size'];
    // echo $file['tmp_name'];

    // $fileName = $file['name'];
    // $tmp = $file['tmp_name'];
    // $uploadUrl = './'.$file['name'];

    // if(move_uploaded_file($tmp,$uploadUrl)){
    //     echo "업로드 성공";
    // }else{
    //     echo "업로드 실패";
    // }
    $query = "insert into files (name,name2) values ('$name[0]'.'$name[1]');";
    mysqli_query($dbConnect,$query);
    
?>
