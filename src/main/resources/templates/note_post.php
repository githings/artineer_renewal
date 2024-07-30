<?php
header("content-type:text/html; charset=UTF-8");

include("./db_connect.php");
$connect = dbconn();

$name = $_POST['name'];
$pw = $_POST['pw'];
$memo = $_POST['memo'];
$regdate = date("Y-m-d (H:i)", time());
$ip = getenv("REMOTE_ADDR");

if(!$name) Error('이름을 입력하세요.');
if(!$pw) Error('비밀번호를 입력하세요.');
if(!$memo) Error('내용을 입력하세요.');


$query = "insert into note(name, pw, memo, regdate, ip)
values('$name','$pw','$memo','$regdate','$ip')";

mysqli_query($connect, "set names utf8");
mysqli_query($connect, $query);
mysqli_close($connect);
?>

<script>
window.alert('글 작성 완료!');
location.href = './note.php';
</script>
