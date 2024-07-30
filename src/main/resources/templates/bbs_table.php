<?php
header("content-type:text/html; charset=UTF-8");

include ("./db_connect.php");
$connect = dbconn();

$sql = "CREATE TABLE project
     (no int not null auto_increment,
	 PRIMARY KEY(no),
	 id char(15),
	 name char(15),
   subject char(150),
   story text,
   hit int not null,
   year int not null,
   file char(100),
	 regdate char(20),
	 ip char(20)
      )";

if(!$sql) die("테이블 생성에 실패 하였습니다.".mysql_error());

if($sql) echo ("정상적으로 실행 되었습니다.");
mysqli_query($connect, $sql);
?>
