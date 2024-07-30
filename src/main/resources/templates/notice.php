<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">

    <title> :: ARTINEER :: </title>

    <link rel="stylesheet" href="./style/init.css">
    <link rel="stylesheet" href="./style/bbs.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="./scripts/header.js"></script>
    <link rel="stylesheet" href="./style/header.css">
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
        <?php
        $_page = $_GET['_page'];

        $search_text = $_GET['search_text'];
        $search_mode = $_GET['search_mode'];

        $view_total = 10;
        if(!$_page)$_page = 1;
        $page = ($_page-1) * $view_total;

        $where = "no";
        if($search_text) {
          if($search_mode == 1) $tmp = "subject";
          if($search_mode == 2) $tmp = "story";
          if($search_mode == 3) {
            $where = "(subject like '%$search_text%' or story like '%$search_text%')";
          } else {
            $where = "$tmp like '%$search_text%'";
          }
        }

        $query = "select count(*) from notice where $where";
        mysqli_query($connect, "set names utf8");
        $result = mysqli_query($connect, $query);
        $temp = mysqli_fetch_array($result);
        $totals = $temp[0];
        ?>

        <div class="container_position">
          <!-- 공지사항 게시판 -->
          <div class="containter_table">
            <div class="table_title">
              <h1>공지사항</h1>
              <h3>Notice</h3>
            </div>
            <table class="sub_news" border="1" cellspacing="0" summary="게시판의 글제목 리스트">
              <caption>게시판 리스트</caption>
              <colgroup>
                <col width="30">
                <col width="150">
                <col width="50">
                <col width="50">
                <col width="30">
              </colgroup>

              <thead>
                <tr>
                  <th scope="col">번호</th>
                  <th scope="col">제목</th>
                  <th scope="col">글쓴이</th>
                  <th scope="col">날짜</th>
                  <th scope="col">조회수</th>
                </tr>
              </thead>

              <tbody>
                <?php
                $query = "select * from notice where $where order by no desc limit $page, $view_total";
                $result = mysqli_query($connect, $query);
                while($data = mysqli_fetch_array($result)) {
                ?>
                <tr>
                  <td><?=$data['no']?></td>
                  <td class="title">
                    <a href="./view.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=notice"><?=mb_substr($data['subject'], 0, 35, 'UTF-8');?> <font color="#20cbd3">(<?=$data['comment']?>)</font>
                      <?php
                        $date1 = str_replace('-','',$data['regdate']);
                        $date2 = str_replace(' ','',$date1);
                        $date3 = str_replace('(','',$date2);
                        $date4 = str_replace(':','',$date3);
                        $date5 = str_replace(')','',$date4);

                        $date = strtotime($date5);
                        $time = time();
                        if(($time-$date) < (60*60*24*2)) {
                          echo "<img src='../image/new_icon.png'>";
                        }
                      ?>
                    </a>
                  </td>
                  <td class="name"><?=$data['name']."(".$data['year']."기)"?></td>
                  <td class="date"><?=$data['regdate']?></td>
                  <td class="hit"><?=$data['hit']?></td>
                  <?php }?>
                </tr>
                <tr>
                  <td colspan="5"><?php include ('./list_page.php');?></td>
                </tr>
              </tbody>
            </table>
              <?php
              mysqli_query($connect, "set names utf8");
              $result = mysqli_query($connect, $query);
              $data = mysqli_fetch_array($result);
              ?>
            <button class="table_write_btn" type="button" onclick="location.href='./write.php?no=<?=$data['no']+1?>&id=<?=$data['id']?>&bbsname=notice'">글쓰기</button>
            <table class="search_table">
              <form action="<?=$PHP_SELE?>">
              <tr>
                <td>
                  <select class="search_mode" name="search_mode">
                    <option value="3">제목+내용</option>
                    <option value="1">제목</option>
                    <option value="2">내용</option>
                  </select>
                </td>
                <td class="search_text"><input type="text" name="search_text" size="10"></td>
                <td class="search_btn"><input type="submit" value="검색"></td>
              </tr>
              </form>
            </table>
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
    </div>

  </body>
</html>
