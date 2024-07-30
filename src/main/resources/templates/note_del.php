<?php
header("content-type:text/html; charset=UTF-8");

include("./db_connect.php");
$connect = dbconn();
$member = member();

$no = $_GET['no'];

$sql = "select * from note where no='$no'";
$result = mysqli_query($connect, $sql);
$data = mysqli_fetch_array($result);

$query = "delete from note where no='$no'";
mysqli_query($connect, $query);
?>

<script>
window.alert('삭제되었습니다.');
location.href = './note.php';
</script>
