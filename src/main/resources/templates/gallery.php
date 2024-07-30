<?php ob_start();?>
<!DOCTYPE html>
<html>

  <head>
    <meta charset="utf-8">

    <title> :: ARTINEER :: </title>

    <link rel="stylesheet" href="./style/init.css">
    <link rel="stylesheet" href="./style/gallery.css">
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

      <div id="container">
        <?php
        $_page = $_GET['_page'];

        $search_text = $_GET['search_text'];
        $search_mode = $_GET['search_mode'];

        $view_total = 9;
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

        $query = "select count(*) from gallery where $where";
        mysqli_query($connect, "set names utf8");
        $result = mysqli_query($connect, $query);
        $temp = mysqli_fetch_array($result);
        $totals = $temp[0];
        ?>
        <div class="container_position">

          <!-- TO DO : 프로젝트 게시판 (1차: 갤러리 형태, 목표:조각별로 맞춰지는 사진)-->
          <div class="container_title">
            <h1>활동사진</h1>
            <h3>Gallery</h3>
          </div>
          <!--갤러리 시작-->
          <div class="gallery">
            <?php
            $query = "select * from gallery where $where order by no desc limit $page, $view_total";
            $result = mysqli_query($connect, $query);
            while($data = mysqli_fetch_array($result)) {
            ?>
            <!--1개 사진-->
            <div class="gallery-item">
              <a href="./view.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=gallery">
              <div class="gallery-item-image">
                <div class="gallery-item-image-control">
                  <?php if(!$data['file']) {?>
                    <a href="./view.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=gallery"><img src="./image/no_image.jpg"></a>
                  <?php } else {
                    $files = explode(",", $data['file']);
                    ?>
                    <a href="./view.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=gallery"><img src="./data/<?=$files[0]?>">
                    </a>
                  <?php }?>
                </div>
              </div>
              <div class="gallery-item-description">
                <table class="sub_news" cellspacing="0">
                  <tr>
                    <th>제목</th>
                    <td colspan="3"><a href="./view.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=gallery"><?=mb_substr($data['subject'], 0, 11, 'UTF-8');?> <font color="#20cbd3">(<?=$data['comment']?>)</font>
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
                  </tr>
                  <tr>
                    <th >글쓴이</th>
                    <td class="name"><?=$data['name']?></td>
                    <th>조회수</th>
                    <td><?=$data['hit']?></td>
                  </tr>
                </table>
              </div>
              </a>
            </div>
            <?php }?>
          </div>
          <span class="list_page"><?php include ('./list_page.php');?></span>
          <?php
          mysqli_query($connect, "set names utf8");
          $result = mysqli_query($connect, $query);
          $data = mysqli_fetch_array($result);
          ?>
          <button class="table_write_btn" type="button" onclick="location.href='./write.php?no=<?=$data['no']+1?>&id=<?=$member['id']?>&bbsname=gallery'">글쓰기</button>
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

      <div id="footer">
        <div class="footer_fixed">
          <h4>© 2018. ARTINEER</h4>
          <h4>Design. THIRTY</h4>
          <h4>Development. THIRTY</h4>
        </div>
      </div>

    </body>

  </php>
