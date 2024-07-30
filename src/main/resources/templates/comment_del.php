<?php
header("content-type:text/html; charset=UTF-8");

 $no_s = $_GET['no_s']; //게시글 번호(1)
 $bbs_no = $_GET['bbs_no']; //게시글 번호(2)
 $bbsname = $_GET['bbsname'];

 $comment_no = $_GET['comment_no']; //코멘트 순번
 $replys = $_GET['replys']; //코멘트 답글번호
 $replys_all = $_GET['replys_all']; //코멘트 삭제
 $reply_rr = $_GET['reply_rr']; //코멘트의 답글 삭제

 include('./db_connect.php');
 $connect = dbconn();
 $member = member();

 $query = "select * from comment where id='$member[id]' and no='$comment_no' and bbsname='$bbsname'";
 $result = mysqli_query($connect, $query);
 $data = mysqli_fetch_array($result);

 if($member['id'] != $data[id])Error('본인의 글만 삭제 가능합니다.');
 if(!$no_s)Error('해당 게시물이 없습니다.');

  $q_count = "select count(*) from comment where bbs_no='$bbs_no' and replys='$comment_no' and bbsname='$bbsname'";
  $r_count = mysqli_query($connect, $q_count);
  $count = mysqli_fetch_array($r_count);
  $total_comment = $count[0] + 1;

  echo $total_comment;

  if($replys_all == 'all') {  //코멘트와 답글 삭제 하기
  	$query_1 = "delete from comment where bbs_no='$bbs_no' and no='$comment_no' and bbsname='$bbsname'";
  	$result_1 = mysqli_query($connect, $query_1);

    if($bbsname == 'notice') {
      $query_2 = "delete from notice where bbs_no='$bbs_no' and replys='$comment_no'";
      $query = "update notice set comment=comment-$total_comment where no='$bbs_no'";
    } else if($bbsname == 'minutes') {
      $query_2 = "delete from minutes where bbs_no='$bbs_no' and replys='$comment_no'";
      $query = "update minutes set comment=comment-$total_comment where no='$bbs_no'";
    } else if($bbsname == 'hello') {
      $query_2 = "delete from hello where bbs_no='$bbs_no' and replys='$comment_no'";
      $query = "update hello set comment=comment-$total_comment where no='$bbs_no'";
    } else if($bbsname == 'project') {
      $query_2 = "delete from project where bbs_no='$bbs_no' and replys='$comment_no'";
      $query = "update project set comment=comment-$total_comment where no='$bbs_no'";
    } else if($bbsname == 'gallery') {
      $query_2 = "delete from gallery where bbs_no='$bbs_no' and replys='$comment_no'";
      $query = "update gallery set comment=comment-$total_comment where no='$bbs_no'";
    } else if($bbsname == 'exam') {
      $query_2 = "delete from exam where bbs_no='$bbs_no' and replys='$comment_no'";
      $query = "update exam set comment=comment-$total_comment where no='$bbs_no'";
    } else if($bbsname == 'reference') {
      $query_2 = "delete from reference where bbs_no='$bbs_no' and replys='$comment_no'";
      $query = "update reference set comment=comment-$total_comment where no='$bbs_no'";
    }
    $result_2 = mysqli_query($connect, $query_2);
    $result = mysqli_query($connect, $query);
  }

  if($reply_rr == 'rr') { //답글만 삭제 인 경우
   $query_1 = "delete from comment where no='$comment_no' and bbs_no='$bbs_no' and replys='$replys' and bbsname='$bbsname'";
   $result_1 = mysqli_query($connect, $query_1);

   if($bbsname == 'notice') {
     $query = "update notice set comment=comment-1 where no='$bbs_no'";
   } else if($bbsname == 'minutes') {
     $query = "update minutes set comment=comment-1 where no='$bbs_no'";
   } else if($bbsname == 'hello') {
     $query = "update hello set comment=comment-1 where no='$bbs_no'";
   } else if($bbsname == 'project') {
     $query = "update project set comment=comment-1 where no='$bbs_no'";
   } else if($bbsname == 'gallery') {
     $query = "update gallery set comment=comment-1 where no='$bbs_no'";
   } else if($bbsname == 'exam') {
     $query = "update exam set comment=comment-1 where no='$bbs_no'";
   } else if($bbsname == 'reference') {
     $query = "update reference set comment=comment-1 where no='$bbs_no'";
   }
   $result = mysqli_query($connect, $query);
  }
?>

<script>
  window.alert("댓글이 삭제되었습니다.");
  location.href='view.php?id=<?=$member['id']?>&no=<?=$bbs_no?>&bbsname=<?=$bbsname?>&lo_reply_1=#lo_reply_1';
</script>
