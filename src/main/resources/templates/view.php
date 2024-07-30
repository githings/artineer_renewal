<?php ob_start();?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title> :: ARTINEER :: </title>

    <link rel="stylesheet" href="./style/init.css">
    <link rel="stylesheet" href="./style/view.css">
    <link rel="stylesheet" href="./style/header.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script type="text/javascript" src="./scripts/header.js"></script>
    <link rel="shortcut icon" href="./favicon.ico">
  </head>

  <body>
    <?php
    include("./db_connect.php");
    $connect = dbconn();
    $member = member();

    $bbsname = $_GET['bbsname'];

    if($bbsname == 'project') {
      if(!$member['id']) {
        echo "<script>
        window.alert('로그인 후 이용해 주세요.');
        location.href='project.php';
        </script>";
      }
      else if($member['level'] == 2)Error("관리자로부터 가입 승인 후 이용해 주세요.");
    }
    else if($bbsname == 'minutes') {
      if(!$member['id']) {
        echo "<script>
        window.alert('로그인 후 이용해 주세요.');
        location.href='minutes.php';
        </script>";
      }
      else if($member['level'] == 2)Error("관리자로부터 가입 승인 후 이용해 주세요.");
    }
    else if($bbsname == 'gallery') {
      if(!$member['id']) {
        echo "<script>
        window.alert('로그인 후 이용해 주세요.');
        location.href='gallery.php';
        </script>";
      }
      else if($member['level'] == 2)Error("관리자로부터 가입 승인 후 이용해 주세요.");
    }
    else if($bbsname == 'reference') {
      if(!$member['id']) {
        echo "<script>
        window.alert('로그인 후 이용해 주세요.');
        location.href='reference.php';
        </script>";
      }
      else if($member['level'] == 2)Error("관리자로부터 가입 승인 후 이용해 주세요.");
    }
    else if($bbsname == 'notice') {
      if(!$member['id']) {
        echo "<script>
        window.alert('로그인 후 이용해 주세요.');
        location.href='notice.php';
        </script>";
      }
    }
    else if($bbsname == 'exam') {
      if(!$member['id']) {
        echo "<script>
        window.alert('로그인 후 이용해 주세요.');
        location.href='exam.php';
        </script>";
      }
      else if($member['level'] == 2)Error("관리자로부터 가입 승인 후 이용해 주세요.");
    }
    else if($bbsname == 'hello') {
      if(!$member['id']) {
        echo "<script>
        window.alert('로그인 후 이용해 주세요.');
        location.href='hello.php';
        </script>";
      }
    }
    else {
      if(!$member['id']) {
        echo "<script>
        window.alert('로그인 후 이용해 주세요.');
        location.href='index.php';
        </script>";
      }
    }

    $no = $_GET['no'];
    $id = $_GET['id'];

    $re_wt = $_GET['re_wt'];  //코멘트 답글입력란 생성  값이 (Y)면 .....
    $lo_reply_1 = $_GET['lo_reply_1']; //페이지 로케이션
    $comment_no = $_GET['comment_no']; //코멘트 순번.

    $bbsname = $_GET['bbsname'];

    $bbs = $no;
    if($no != $_COOKIE['hit_bbs_'.$no]) {
      if($bbsname == 'notice') {
        $_query = "update notice set hit = hit+1 where no = '$no'";
      } else if ($bbsname == 'minutes') {
        $_query = "update minutes set hit = hit+1 where no = '$no'";
      } else if ($bbsname == 'reference') {
        $_query = "update reference set hit = hit+1 where no = '$no'";
      } else if ($bbsname == 'hello') {
        $_query = "update hello set hit = hit+1 where no = '$no'";
      } else if ($bbsname == 'project') {
        $_query = "update project set hit = hit+1 where no = '$no'";
      } else if ($bbsname == 'gallery') {
        $_query = "update gallery set hit = hit+1 where no = '$no'";
      } else if ($bbsname == 'exam') {
        $_query = "update exam set hit = hit+1 where no = '$no'";
      }
      mysqli_query($connect, $_query);
      setcookie("hit_bbs_".$no, $no, time()+60*60*24, "/");
    }

    ?>
    <!--php end-->

    <div class="wrap">

      <!--header-->
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
        <div class="container_position">

          <!--글보기 table-->
          <div class="view_table_position">
            <table class="view_table" cellspacing="0" border="0">
              <?php
              if($bbsname == 'notice') {
                $query = "select * from notice where no='$no'";
              } else if ($bbsname == 'minutes') {
                $query = "select * from minutes where no='$no'";
              } else if ($bbsname == 'reference') {
                $query = "select * from reference where no='$no'";
              } else if ($bbsname == 'hello') {
                $query = "select * from hello where no='$no'";
              } else if ($bbsname == 'project') {
                $query = "select * from project where no='$no'";
              } else if ($bbsname == 'gallery') {
                $query = "select * from gallery where no='$no'";
              } else if ($bbsname == 'exam') {
                $query = "select * from exam where no='$no'";
              }
              mysqli_query($connect, "set names utf8");
              $result = mysqli_query($connect, $query);
              $data = mysqli_fetch_array($result);
              ?>
              <tr class="table_title">
                <th>제목</th>
                <td colspan="3"><?=$data['subject']?></td>
              </tr>
              <tr>
                <th class="table_th">글쓴이</th>
                <td class="table_name"><?=$data['name']."(".$data['year']."기)"?></td>
                <th class="table_th" colspan="1">날짜</th>
                <td class="table_date" colspan="1" align="center"><?=$data['regdate']?></td>
              </tr>
              <tr>
                <th class="table_th">첨부파일</th>
                <td colspan="1" class="table_file">
                  <?php
                  if($data['file']) {
                    $files = explode(",", $data['file']);
                    for($i=0; $i<count($files); $i++) {
                  ?>
                  <a href="./data/<?=$files[$i]?>" download><?=$files[$i]?></a>
                  <?php }
                  } else {
                      echo "없음";
                  }
                  ?>
                </td>
                <th class="table_th">조회수</th>
                <td class="table_hit" align="center"><?=$data['hit']?></td>
              </tr>
              <tr>
                <td class="table_view" colspan="8">
                  <div>
                    <?php
                      if($data['file']) {
                      $img_ext = array('jpg','jpeg','gif','png');
                      for($i=0; $i<count($files); $i++) {
                        $file_split[] = explode(".", $files[$i]);
                        $file_type[] = $file_split[$i][count($file_split[$i])-1];
                        if(array_search($file_type[$i], $img_ext) === false) {
                        }
                        else { ?>
                      <div class="view_img">
                        <img width="100%" src="./data/<?=$files[$i]?>">
                      </div>
                      <br>
                    <?php } } } ?>
                      <?=nl2br($data['story'])?>
                  </div>
                </td>
              </tr>
              <tr class="view_edit">
                <?php
                $q_count = "select count(*) from comment where bbs_no='$data[no]' and bbsname='$bbsname'";
                $r_count = mysqli_query($connect, $q_count);
                $count = mysqli_fetch_array($r_count);
                $total_count = $count[0]; //코멘트 총개수
                ?>
                <td align="left">댓글(<?=$total_count?>)</td>
                <td colspan="8" align="right">
                  <button onclick="history.back(-1)" style="cursor:pointer;">목록</button>
                  <?php if($bbsname == 'notice') {?>
                    <button style="cursor:pointer;" onclick="location='edit.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=notice';">수정</button>
                  <?php } else if ($bbsname == 'minutes') {?>
                    <button style="cursor:pointer;" onclick="location='edit.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=minutes';">수정</button>
                  <?php } else if ($bbsname == 'reference') {?>
                    <button style="cursor:pointer;" onclick="location='edit.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=reference';">수정</button>
                  <?php } else if ($bbsname == 'hello') {?>
                    <button style="cursor:pointer;" onclick="location='edit.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=hello';">수정</button>
                  <?php } else if ($bbsname == 'project') {?>
                    <button style="cursor:pointer;" onclick="location='edit.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=project';">수정</button>
                  <?php } else if ($bbsname == 'gallery') {?>
                    <button style="cursor:pointer;" onclick="location='edit.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=gallery';">수정</button>
                  <?php } else if ($bbsname == 'exam') {?>
                    <button style="cursor:pointer;" onclick="location='edit.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=exam';">수정</button>
                  <?php }?>
                  <?php if($bbsname == 'notice') {?>
                    <button style="cursor:pointer;" onclick="if(confirm('정말 삭제하시겠습니까?')==true){location='del.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=notice';}else{return;}">삭제</button>
                  <?php } else if ($bbsname == 'minutes') {?>
                    <button style="cursor:pointer;" onclick="if(confirm('정말 삭제하시겠습니까?')==true){location='del.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=minutes';}else{return;}">삭제</button>
                  <?php } else if ($bbsname == 'reference') {?>
                    <button style="cursor:pointer;" onclick="if(confirm('정말 삭제하시겠습니까?')==true){location='del.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=reference';}else{return;}">삭제</button>
                  <?php } else if ($bbsname == 'hello') {?>
                    <button style="cursor:pointer;" onclick="if(confirm('정말 삭제하시겠습니까?')==true){location='del.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=hello';}else{return;}">삭제</button>
                  <?php } else if ($bbsname == 'project') {?>
                    <button style="cursor:pointer;" onclick="if(confirm('정말 삭제하시겠습니까?')==true){location='del.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=project';}else{return;}">삭제</button>
                  <?php } else if ($bbsname == 'gallery') {?>
                    <button style="cursor:pointer;" onclick="if(confirm('정말 삭제하시겠습니까?')==true){location='del.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=gallery';}else{return;}">삭제</button>
                  <?php } else if ($bbsname == 'exam') {?>
                      <button style="cursor:pointer;" onclick="if(confirm('정말 삭제하시겠습니까?')==true){location='del.php?no=<?=$data['no']?>&id=<?=$data['id']?>&bbsname=exam';}else{return;}">삭제</button>
                  <?php }?>
                </td>
              </tr>
            </table>
            <!-------코맨트 출력---------->
            <table id='lo_reply_1' width="100%" border="0">
            <?php
            $q = "select * from comment where bbs_no='$data[no]' and replys='0' and bbsname='$bbsname' order by regdate asc, no asc";
            $r = mysqli_query($connect, $q);
            while($d=mysqli_fetch_array($r)) {
            ?>
            <table id="comment_view_table" border="0">
              <tr>
                <td class="comment_view_name">
                  <span>
                    <?=$d['name']?>(<?=$d['year']?>기)
                  </span>
                </td>

                <td class="comment_view_date" align="right">
                  <?=$d['regdate']?>
                </td>

                <td class="comment_view_name" align='right' width="80px">
                  <?if($member['id']){?>
                    <a href='view.php?id=<?=$id?>&no=<?=$no?>&bbsname=<?=$bbsname?>&re_wt=Y&comment_no=<?=$d['no']?>#lo_reply_2' onfocus="this.blur()" style="text-decoration: none; padding-right: 5px;">
                      <font color='#20cbd3' style="font-weight: normal;">답글</font>
                    </a>
                    <?php }?>
                </td>
              </tr>

              <tr>
                <td class="comment_view_memo" colspan='4' valign='top'>
                  <?=nl2br($d['memo'])?>
                  <div align='right'>
                    <a href='./comment_del.php?bbsname=<?=$bbsname?>&comment_no=<?=$d['no']?>&no_s=<?=$data['no']?>&bbs_no=<?=$d['bbs_no']?>&replys_all=all' onfocus='this.blur()'  style="font-size: 12px; text-decoration: none; padding-right: 5px;">
                      <font color='#20cbd3' onclick="return confirm('삭제하시겠습니까?')">삭제</font>
                    </a>
                  </div>
                </td>
              </tr>
            </table>

            <?php
            ////////////// 코맨트 (답글-출력)/////////////
            $q_2="select * from comment where bbs_no='$data[no]' and replys='$d[no]' order by regdate asc";
            $r_2= mysqli_query($connect, $q_2);
            while($d_2=mysqli_fetch_array($r_2)) {
            ?>

              <td colspan='3'>
                <table id="reply_view_table" border="0">
                  <tr>
                    <td rowspan="2" align='center' style="color: #20cbd3; font-weight: bold;" width="10%">└</td>
                    <td class="reply_view_name"><?=$d_2['name']?>(<?=$d_2['year']?>기)</td>
                    <td class="reply_view_date"><?php
                    echo $d_2_Y= substr($d_2['regdate'],0,4)."-";
                    echo $d_2_m= substr($d_2['regdate'],4,2)."-";
                    echo $d_2_d= substr($d_2['regdate'],6,2)."&nbsp;(";
                    echo $d_2_h= substr($d_2['regdate'],8,2).":";
                    echo $d_2_i= substr($d_2['regdate'],10,2).")";
                    ?></td>
                  </tr>
                  <tr>
                    <td class="reply_view_memo" colspan="3">
                      <span ><?=$d_2['memo']?></span>
                      <div align="right">
                        <a href="comment_del.php?bbsname=<?=$bbsname?>&comment_no=<?=$d_2['no']?>&no_s=<?=$data['no']?>&bbs_no=<?=$d_2['bbs_no']?>&replys=<?=$d_2['replys']?>&reply_rr=rr" onfocus="this.blur()"  style="font-size: 12px; text-decoration: none; padding-right: 5px;">
                          <font color='#20cbd3' onclick="return confirm('삭제하시겠습니까?')">삭제</font>
                        </a>
                      </div>
                    </td>
                  </tr>
                </table>
              </td>

            <?php	}
            //////////////  코맨트 (답글-출력) [끝]///////////// ?>



            <? /// 코맨트 (답글-입력) ///
             if($re_wt=='Y' and $comment_no==$d['no']){
            ?>
            <table id="reply_write_table" border="0" cellspacing='0' cellpadding='0'>
              <form name='replys' action='comment_write.php' method='post'>
                <input type="hidden" name='id' value='<?=$data['id']?>'>
                <input type="hidden" name='bbsname' value='<?=$bbsname?>'>
                <input type="hidden" name='bbs_no' value='<?=$data['no']?>'>
                <input type="hidden" name='replys' value='<?=$d['no']?>'>

              <tr>
                <td id='lo_reply_2' align='center' width="15%">
                  <span>└</span>
                </td>

                <td align='center' width="70%">
                  <textarea class="reply_write_text" name='memo' rows='3'></textarea>
                </td>

                <td align='center' width="15%">
                  <input type="submit" value='등록'>
                </td>
              </tr>
              </form>
            </table>

            <?php
            	}
            } /// 코맨트 (답글-입력) [끝] ///?>
             </table>

            <?php /////////// 코맨트 (입력) ////////////
              if($member['id']) {  //회원아이디가 있으면 실행
            ?>
              <table id="comment_write_table" border='0' cellspacing='0' cellpadding='0'>
                <tr>
                  <form name='replys' action='comment_write.php' method='post'>
                    <input type="hidden" name='bbs_no' value='<?=$data['no']?>'>
                    <input type="hidden" name='replys' value='0'>
                    <input type="hidden" name='id' value='<?=$data['id']?>'>
                    <input type="hidden" name='bbsname' value='<?=$bbsname?>'>

                  <td class="comment_write_name" width="15%" align='center'>
                    <?=$member['name']?><br>(<?=$member['year']?>기)
                  </td>

                  <td width="70%" align='center'>
                    <textarea class=" comment_write_text" name='memo' rows='3'></textarea>
                  </td>

                  <td width="15%" align='center'>
                    <input type="submit" value='등록'>
                  </td>
                  </form>
                </tr>
              </table>
            	<?php } //회원아이디가 있으면 여기까지?>
             <!---//////////코맨트 (입력) [끝] //////////--->

            </td>
            </tr>
            </table>

          </div>
        </div>
      </div>

      <!--footer-->
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
