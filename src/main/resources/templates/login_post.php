<?php
header("content-type:text/html; charset=UTF-8");

include ("./db_connect.php");
$connect = dbconn();

$id = $_POST['id'];
$pws = $_POST['pw'];
$pw = md5($pws);
$is_ajax = $_POST['is_ajax'];

if(!isset($_POST['is_ajax'])) exit;
if(!isset($_POST['id'])) exit;
if(!isset($_POST['pw'])) exit;

$query = " select * from member where id = '$id'";
mysqli_query($connect, "set names utf8");
$result = mysqli_query($connect, $query);
$member = mysqli_fetch_array($result);

if(!$id) {
  echo "fail_1";
  exit;
}
elseif(!$member['id']) {
  echo "fail_2";
  exit;
}

if(!$pw) {
  echo "fail_3";
  exit;
}
elseif($member['pw'] != $pw) {
  echo "fail_4";
  exit;
}

if($member['id'] and $member['pw'] == $pw) {
  $tmp = $member['id']."//".$member['pw'];
  setcookie("COOKIES", $tmp, time()+60*60*24, "/");
  echo "success";
}
?>
