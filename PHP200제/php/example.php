<script type="text/javascript">

function run(){
    alert("hello world");
}
<?="run();"?>

</script>

<?
    $str="here!";
    function getfile(){
        global $str;
        return $str;
    }
    echo "<script>run();</script>"
?>

<script language="javascript">
    function getfile(){
    document.getElementById('aa').innerHTML = "<?=getfile()?>" // = 은 echo로 대체가능
}
</script>

<div id="aa"></div>
<input type="button" value="click me" onclick="getfile()">