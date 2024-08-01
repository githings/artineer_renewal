<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">

    <title> :: ARTINEERrrrrrrr :: </title>

    <link rel="stylesheet" href="./style/init.css">
    <link rel="stylesheet" href="./style/about.css">
    <link rel="stylesheet" href="./style/header.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="./scripts/header.js"></script>
    <link rel="shortcut icon" href="./favicon.ico">
  </head>

  <body>
    <?php
    include ("./db_connect.php");
    $connect = dbconn();
    $member = member();
    ?>
    <div class="wrap">
      <div id="header">
        <div class="header_position">

          <!-- header fixed logo -->
          <div class="header_fixed_img">
            <a href="./index.php" target="_self"><img src="./image/logo.png"></a>
          </div>

          <!-- header fixed user (login, register) -->
          <div class="header_fixed_user">
              <?php if(!$member['id']) {?>
                <div class="member"><a style="cursor:pointer;">로그인하세요</a></div>
              <div class="member_bubble">
                <li class="member_sub"><a style="cursor:pointer;" id="login_toggle">로그인</a></li>
                <li>
                  <div class="login" hidden>
                    <form action="./login_post.php" name="login" method="post" id="form">
                      <input type="text" name="id" size="10" id="id" placeholder="아이디" style="width:115px; height:25px;">
                      <input type="password" name="pw" size="10" id="pw" placeholder="비밀번호" style="width:115px; height:25px;">
                      <input type="submit" value="로그인" id="login_btn" style="cursor:pointer;">
                    </form>
                  </div>
                  <div id="message"></div>
                </li>
                <li class="member_sub"><a href="./register.php">회원가입</a></li>
              </div>
              <div class="tail"></div>
                    <?php } else {?>
                    <div class="member"><a style="cursor:pointer;"><?php echo $member['name']."(".$member['year']."기)";?></a></div>
                    <div class="member_bubble">
                    <li class="member_sub"><a href="./logout.php">로그아웃</a></li>
                    <li class="member_sub"><a href="./modify.php?no=<?=$member['no']?>&id=<?=$member['id']?>">정보수정</a></li>
                  </div>
                  <div class="tail"></div>
                    <?php }?>
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

        <!-- fixed -->
        <div id="container_box"></div>

        <div class="container_position">
          <div class="container_about">

            <div class="about_layout">
              <img class="container_about_img" src="./image/we_are.png" alt="">
              <h1>WE ARE</h1>
              <h3>ARTINEER</h3>
              <br>
              <br>
              <h2>Wonkwang Univ. Department of Computer Science</h2>
              <br>
              <h3>SOFTWARE PROJECT GROUP</h3>
              <br>
              <h3>SINCE 2017</h3>
              <br>
              <h3>IKSAN DAERO 460, IKSAN-SI, JEOLLABUK-DO, KOREA</h3>
              <h3>COLLEGE OF ENGINEERING</h3>
              <br>
              <br>
            </div>

            <div class="about_layout">
              <img class="container_about_img" src="./image/major_activity.png" alt="">
              <h1>MAJOR ACTIVITY</h1>
              <br>
              <br>
              <h3>학기별 프로젝트    +    멘토/멘티    =    공모전 출전</h3>
              <br>
              <br>
              <h3>학과 수업 코칭,   대외 활동, 전시회 관람 등</h3>
              <br>
              <br>
              <div class="major_activity_field">
                <h3>C</h3>
                <h3>JAVA</h3>
                <h3>Android</h3>
                <h3>Web</h3>
              </div>
            </div>

            <div class="about_layout">
              <img class="container_about_img" src="./image/were_goal.png" alt="">
              <h1>WE'RE GOAL</h1>
              <h2>Expressing thoughts into the real world</h2>
            </div>

          </div>
        </div>
      </div>

      <!-- footer -->
      <div id="footer">
        <div class="footer_fixed">
          <h4>© 2018. ARTINEER</h4>
          <h4>Design. THIRTY</h4>
          <h4>Development. THIRTY</h4>
        </div>
      </div>
    </div>

  </body>

</html>
