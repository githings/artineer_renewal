<?php
function dbconn() {
  $host = "localhost";
  $username = "wkuartineer";
  $password = "artineer2017!";
  $dbname = "wkuartineer";
  $connect = mysqli_connect($host, $username, $password, $dbname);
  mysqli_query($connect, "set names uft8");
  if(!$connect) die("연결에 실패하였습니다.".mysqli_error($connect));
  return $connect;
}

function Error($msg) {
  echo "
  <script>
  window.alert('$msg');
  history.back(1);
  </script>
  ";
  exit;
}

function member() {
  global $connect;
  $temps = $_COOKIE["COOKIES"];
  $cookies = explode("//", $temps);
  $query = "SELECT * FROM member WHERE id = '$cookies[0]'";
  mysqli_query($connect, "set names utf8");
  $result = mysqli_query($connect, $query);
  $member = mysqli_fetch_array($result);
  return $member;
}
?>
