<? 
    include_once $_SERVER['DOCUMENT_ROOT']."/admin/head.php";
    
    session_destroy();
    back('로그아웃 되었습니다.');

//index.php -> logout.php(세션파괴) -> index.php
?>
