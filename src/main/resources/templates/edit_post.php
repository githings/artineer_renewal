<?php
header("content-type:text/html; charset=UTF-8");

include("./db_connect.php");
$connect = dbconn();
$member = member();

if(!$member['id']) Error("로그인 후 이용해 주세요.");

$id = $member['id'];
$subject = $_POST['subject'];
$story = $_POST['story'];

$no = $_POST['no'];
$bbsname = $_POST['bbsname'];

if($_FILES['file']['size'][0] != 0) {
  $file_count = count($_FILES['file']['name']);
  $size = 0;
  $tates = date("mdhis", time());
  $dir = "./data/";
  $files = "";

  for($i=0; $i<$file_count; $i++) {
    $size += $_FILES['file']['size'][$i];
    $file_name[] = strtolower($_FILES['file']['name'][$i]);
    $file_split[] = explode(".", $file_name[$i]);
    $ext_explode[] = $file_split[$i][count($file_split[$i])-2.3];
    $file_type[] = $file_split[$i][count($file_split[$i])-1];
    $file[] = chr(rand(97,122)).chr(rand(97,122)).$tates.rand(1,9).".".$file_type[$i];
    move_uploaded_file($_FILES['file']['tmp_name'][$i], $dir.$file[$i]);

    if($i == ($file_count-1)) {
      $files .= $file[$i];
    } else {
      $files .= $file[$i].",";
    }

    if($bbsname == 'hello') {
      $img_ext = array('jpg','jpeg','gif','png','bmp');
      if(array_search($file_type[$i], $img_ext) === false) Error("이미지 파일이 아닙니다.");
    } else if($bbsname == 'project') {
      $img_ext = array('jpg','jpeg','gif','png','bmp');
      if(array_search($file_type[$i], $img_ext) === false) Error("이미지 파일이 아닙니다.");
    } else if($bbsname == 'gallery') {
      $img_ext = array('jpg','jpeg','gif','png','bmp');
      if(array_search($file_type[$i], $img_ext) === false) Error("이미지 파일이 아닙니다.");
    }
  }
  if($size > 20971520) Error("파일용량은 20MB 이하로 제한합니다.");

  if($bbsname == 'notice') {
    $query = "update notice set
    file = '$files'
    where no = '$no' ";
  } else if ($bbsname == 'minutes') {
    $query = "update minutes set
    file = '$files'
    where no = '$no' ";
  } else if ($bbsname == 'hello') {
    $query = "update hello set
    file = '$files'
    where no = '$no' ";
  } else if ($bbsname == 'project') {
    $query = "update project set
    file = '$files'
    where no = '$no' ";
  } else if ($bbsname == 'gallery') {
    $query = "update gallery set
    file = '$files'
    where no = '$no' ";
  } else if ($bbsname == 'reference') {
    $query = "update reference set
    file = '$files'
    where no = '$no' ";
  } else if ($bbsname == 'exam') {
    $query = "update exam set
    file = '$files'
    where no = '$no' ";
  }
  mysqli_query($connect, $query);
}

if(!$subject) Error('제목을 입력하세요.');
if(!$story) Error('내용을 입력하세요.');

if($bbsname == 'notice') {
  $query = "update notice set
  subject = '$subject',
  story = '$story'
  where no = '$no'
  ";
}
else if($bbsname == 'reference') {
  $query = "update reference set
  subject = '$subject',
  story = '$story'
  where no = '$no'
  ";
}
else if($bbsname == 'minutes') {
  $query = "update minutes set
  subject = '$subject',
  story = '$story'
  where no = '$no'
  ";
}
else if($bbsname == 'hello') {
  $query = "update hello set
  subject = '$subject',
  story = '$story'
  where no = '$no'
  ";
}
else if($bbsname == 'project') {
  $query = "update project set
  subject = '$subject',
  story = '$story'
  where no = '$no'
  ";
}
else if($bbsname == 'gallery') {
  $query = "update gallery set
  subject = '$subject',
  story = '$story'
  where no = '$no'
  ";
}
else if($bbsname == 'exam') {
  $query = "update exam set
  subject = '$subject',
  story = '$story'
  where no = '$no'
  ";
}

mysqli_query($connect, "set names utf8");
mysqli_query($connect, $query);
mysqli_close($connect);
?>

<?php if($bbsname == 'notice') { ?>
  <script>
  window.alert('글 수정 완료!');
  location.href = './view.php?no=<?=$no?>&id=<?=$id?>&bbsname=<?=$bbsname?>';
  </script>
  <?php }?>
  <?php if($bbsname == 'reference') {?>
    <script>
    window.alert('글 수정 완료!');
    location.href = './view.php?no=<?=$no?>&id=<?=$id?>&bbsname=<?=$bbsname?>';
    </script>
    <?php }?>
    <?php if($bbsname == 'minutes') {?>
      <script>
      window.alert('글 수정 완료!');
      location.href = './view.php?no=<?=$no?>&id=<?=$id?>&bbsname=<?=$bbsname?>';
      </script>
      <?php }?>
      <?php if($bbsname == 'hello') {?>
        <script>
        window.alert('글 수정 완료!');
        location.href = './view.php?no=<?=$no?>&id=<?=$data['id']?>&bbsname=<?=$bbsname?>';
        </script>
        <?php }?>
        <?php if($bbsname == 'project') {?>
          <script>
          window.alert('글 수정 완료!');
          location.href = './view.php?no=<?=$no?>&id=<?=$data['id']?>&bbsname=<?=$bbsname?>';
          </script>
          <?php }?>
          <?php if($bbsname == 'gallery') {?>
            <script>
            window.alert('글 수정 완료!');
            location.href = './view.php?no=<?=$no?>&id=<?=$data['id']?>&bbsname=<?=$bbsname?>';
            </script>
            <?php }?>
            <?php if($bbsname == 'exam') {?>
              <script>
              window.alert('글 수정 완료!');
              location.href = './view.php?no=<?=$no?>&id=<?=$data['id']?>&bbsname=<?=$bbsname?>';
              </script>
              <?php }?>
