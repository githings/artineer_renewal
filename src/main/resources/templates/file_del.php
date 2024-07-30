<?php
header("content-type:text/html; charset=UTF-8");

include("./db_connect.php");
$connect = dbconn();
$member = member();

if(!$member['id']) Error("로그인 후 이용해 주세요.");

$no = $_GET['no'];

$bbsname = $_GET['bbsname'];

if($bbsname == 'notice') {
  $query = "select * from notice where no='$no' and id='$member[id]'";
} else if($bbsname == 'minutes') {
  $query = "select * from minutes where no='$no' and id='$member[id]'";
} else if($bbsname == 'reference') {
  $query = "select * from reference where no='$no' and id='$member[id]'";
} else if($bbsname == 'hello') {
  $query = "select * from hello where no='$no' and id='$member[id]'";
} else if($bbsname == 'project') {
  $query = "select * from project where no='$no' and id='$member[id]'";
} else if($bbsname == 'gallery') {
  $query = "select * from gallery where no='$no' and id='$member[id]'";
}

$result = mysqli_query($connect, $query);
$data = mysqli_fetch_array($result);
if(!$result)die("연결에 실패 하였습니다.".mysqli_error($connect));

if($data['file']) {

  if($bbsname == 'notice') {
    $qy = "update notice set
    file = ''
    where no='$no' and id='$data[id]'";
  } else if($bbsname == 'minutes') {
    $qy = "update minutes set
    file = ''
    where no='$no' and id='$data[id]'";
  } else if($bbsname == 'reference') {
    $qy = "update reference set
    file = ''
    where no='$no' and id='$data[id]'";
  } else if($bbsname == 'hello') {
    $qy = "update hello set
    file = ''
    where no='$no' and id='$data[id]'";
  } else if($bbsname == 'project') {
    $qy = "update project set
    file = ''
    where no='$no' and id='$data[id]'";
  } else if($bbsname == 'gallery') {
    $qy = "update gallery set
    file = ''
    where no='$no' and id='$data[id]'";
  }

  mysqli_query($connect, $qy);

  $del_file = "./data/".$data['file'];
  if($data['file'] && is_file($del_file)) unlink($del_file);
}

mysqli_close($connect);
?>

<script language="JavaScript">
  alert('파일이 삭제 되었습니다.');
  opener.location.reload();
  window.close();
</script>
