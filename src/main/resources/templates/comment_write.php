<?php
header('content-type:text/html; charset=UTF-8');

 $id = $_POST['id'];
 $bbsname = $_POST['bbsname'];
 $bbs_no = $_POST['bbs_no'];
 $replys = $_POST['replys'];
 $memo = $_POST['memo'];

 include ('./db_connect.php');
 $connect = dbconn();
 $member = member();

 if(!$member['id']) Error('로그인 후 이용하세요.');
 if(!$memo) Error('내용을 입력하세요.');
 if(!$bbs_no) Error('접근이 잘못되었습니다.');

 $regdate = date("Y-m-d (H:i)", time());

 $query = "INSERT INTO comment(bbsname, bbs_no, id, name, year, memo, replys, regdate)
 VALUES('$bbsname', '$bbs_no', '$member[id]', '$member[name]', '$member[year]', '$memo', '$replys', '$regdate')";
 mysqli_query($connect, $query);

  if($bbsname == 'notice') {
    $query = "update notice set comment=comment+1 where no='$bbs_no'";
  } else if($bbsname == 'minutes') {
    $query = "update minutes set comment=comment+1 where no='$bbs_no'";
  } else if($bbsname == 'hello') {
    $query = "update hello set comment=comment+1 where no='$bbs_no'";
  } else if($bbsname == 'project') {
    $query = "update project set comment=comment+1 where no='$bbs_no'";
  } else if($bbsname == 'gallery') {
    $query = "update gallery set comment=comment+1 where no='$bbs_no'";
  } else if($bbsname == 'exam') {
    $query = "update exam set comment=comment+1 where no='$bbs_no'";
  } else if($bbsname == 'reference') {
    $query = "update reference set comment=comment+1 where no='$bbs_no'";
  }

  mysqli_query($connect, $query);
?>

<script>
window.alert("댓글이 등록되었습니다.");
location.href='view.php?no=<?=$bbs_no?>&id=<?=$id?>&bbsname=<?=$bbsname?>&lo_reply_1=#lo_reply_1';
</script>
