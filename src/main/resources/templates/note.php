<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">

    <title> :: ARTINEER :: </title>

    <link rel="stylesheet" href="./style/init.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="./scripts/header.js"></script>
    <link rel="stylesheet" href="./style/header.css">
    <link rel="stylesheet" href="./style/note.css">
    <link rel="shortcut icon" href="./favicon.ico">
  </head>
  <script>
    alert("방명록 페이지 공사중");
    history.back();
  </script>

  <body>
    <?php
    include ("./db_connect.php");
    $connect = dbconn();
    $member = member();
    ?>
    <div id="header">
      <div class="header_position">

        <!-- header fixed logo -->
        <div class="header_fixed_img">
          <a href="./index.php" target="_self"><img src="./image/logo.png"></a>
        </div>

        <!-- header fixed user (login, register) -->
        <div class="header_fixed_user">
            <?if(!$member['id']) {?>
              <div class="member"><a style="cursor:pointer;">로그인하세요</a></div>
            <div class="member_bubble">
              <li class="member_sub"><a style="cursor:pointer;" id="login_toggle">로그인</a></li>
              <li>
                <div class="login" hidden>
                  <form action="./login_post.php" name="login" method="post" id="form">
                    <input type="text" name="id" size="10" id="id" placeholder="아이디">
                    <input type="password" name="pw" size="10" id="pw" placeholder="비밀번호">
                    <input type="submit" value="로그인" id="login_btn" style="cursor:pointer;">
                  </form>
                </div>
                <div id="message"></div>
              </li>
              <li class="member_sub"><a href="./register.php">회원가입</a></li>
            </div>
            <div class="tail"></div>
                  <?} else {?>
                  <div class="member"><a style="cursor:pointer;"><?echo $member['name']."(".$member['year']."기)";?></a></div>
                  <div class="member_bubble">
                  <li class="member_sub"><a href="./logout.php">로그아웃</a></li>
                  <li class="member_sub"><a href="./modify.php?no=<?=$member['no']?>&id=<?=$member['id']?>">정보수정</a></li>
                </div>
                <div class="tail"></div>
                  <?}?>
        </div>

        <!-- header logo (ARTINEER) -->
        <div class="header_logo">
          <h2>ARTINEER</h2>
        </div>

        <!-- header category -->
        <div class="header_category">
          <ul>
            <li class="fixed_menu" id="about">
              <a href="./about.php" target="_self">ABOUT</a>
            </li>
              <li class="fixed_menu" id="notice">
                <a href="#">NOTICE</a> <!-- 공지사항, 회의록, 가입인사 -->
              </li>
            <li class="fixed_menu" id="activity">
              <a href="#">ACTIVITY</a> <!-- 프로젝트, 활동사진, 자료실 -->
            </li>
            <li class="fixed_menu" id="note">
              <a href="./note.php" target="_self">NOTE</a>
            </li>
          </ul>
          <div class="notice_sub">
            <li class="sub">
              <a href="./notice.php" target="_self">공지사항</a>
            </li>
            <li class="sub">
              <a href="./minutes.php" target="_self">회의록</a>
            </li>
            <li class="last_sub">
              <a href="./hello.php" target="_self">가입인사</a>
            </li>
          </div>
          <div class="activity_sub">
            <li class="sub">
                <a href="./project.php" target="_self">프로젝트</a>
              </li>
              <li class="sub">
                <a href="./gallery.php" target="_self">활동사진</a>
              </li>
              <li class="sub">
                <a href="./exam.php" target="_self">시험족보</a>
              </li>
              <li class="last_sub">
                <a href="./reference.php" target="_self">자료실</a>
              </li>
          </div>
          <div class="menu_pointer">
            <div class="none_pointer"></div>
            <div class="pointer"><span id="notice_pointer" hidden>▼</span></div>
            <div class="pointer"><span id="activity_pointer" hidden>▼</span></div>
            <div class="none_pointer"></div>
          </div>
        </div>

      </div>
    </div>

    <!-- container -->
    <div id="container">
      <div class="container_position">
        <?php
        $_page = $_GET['_page'];

        $view_total = 10;
        if(!$_page)$_page = 1;
        $page = ($_page-1) * $view_total;

        $query = "select count(*) from note";
        mysqli_query($connect, "set names utf8");
        $result = mysqli_query($connect, $query);
        $temp = mysqli_fetch_array($result);
        $totals = $temp[0];
        ?>
        <!-- TO DO : note(타임라인 형식의 방명록) 구현 -->
        <div class="note">
          <div class="note_title">
            <h1>방명록</h1>
            <h3>NOTE</h3>
          </div>
          <div class="note_write">
            <form action="./note_post.php" method="post" enctype="multipart/form-data">
              <table border="0" align="center" class="note_write_table">
                <tr>
                  <td align="center" class="table_name"><input type="text" name="name" size="10" placeholder="이름"></td>
                  <td align="center" class="table_pw"><input type="password" name="pw" size="30" placeholder="비밀번호"></td>
                </tr>
                <tr>
                  <td align="center" class="table_memo" colspan="2"><textarea name="memo" width="100%" placeholder="내용을 입력하세요." style="resize: none"></textarea></td>
                </tr>
                <tr>
                    <td colspan="2" align="right"><input type="submit" class="note_button" style="cursor: pointer;" value="작성"></td>
                </tr>
              </table>
            </form>
          </div>

          <div class="note_view">
            <?php
            $query = "select * from note order by no desc limit $page, $view_total";
            $result = mysqli_query($connect, $query);
            while($data = mysqli_fetch_array($result)) {
            ?>
            <table class="note_view_table" border="0" align="center">
              <tr>
                <td><?=$data['name']?></td>
                <td align="right"><?=$data['regdate']?></td>
              </tr>
              <tr>
                <td colspan="2"><?=$data['memo']?></td>
              </tr>
              <tr>
                <td colspan="2" align="right"><button class="note_button" style="cursor:pointer;" onclick="if(prompt('비밀번호를 입력해주세요.')==='<?=$data['pw']?>'){location='note_del.php?no=<?=$data['no']?>';}else{alert('비밀번호가 맞지 않습니다.')}">삭제</button></td>
              </tr>
            </table>
            <?}?>
            <span class="list_page"><?include ('./list_page.php');?></span>
          </div>
        </div>

      </div>
    </div>

    <div id="footer">
      <div class="footer_fixed">
        <h4>© 2018. ARTINEER</h4>
        <h4>Design. THIRTY</h4>
        <h4>Development. THIRTY</h4>
      </div>
    </div>

  </body>

</html>
