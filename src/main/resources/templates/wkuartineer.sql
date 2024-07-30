-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- 생성 시간: 19-07-05 15:38
-- 서버 버전: 5.7.26
-- PHP 버전: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 데이터베이스: `wkuartineer`
--

-- --------------------------------------------------------

--
-- 테이블 구조 `comment`
--

CREATE TABLE `comment` (
  `no` int(11) NOT NULL,
  `bbsname` char(15) NOT NULL,
  `bbs_no` int(11) NOT NULL,
  `id` char(15) NOT NULL,
  `name` char(15) NOT NULL,
  `year` int(11) NOT NULL,
  `replys` int(11) NOT NULL,
  `memo` text NOT NULL,
  `regdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `comment`
--

INSERT INTO `comment` (`no`, `bbsname`, `bbs_no`, `id`, `name`, `year`, `replys`, `memo`, `regdate`) VALUES
(1, 'hello', 69, 'dongin1009', '정동인', 1, 0, '말투가 귀여우시네요 형', '2019-06-24 (00:32)'),
(2, 'hello', 66, 'dongin1009', '정동인', 1, 0, '나 혈액형 뭐게~', '2019-06-24 (00:34)'),
(3, 'hello', 64, 'dongin1009', '정동인', 1, 0, '황인욱 - 포장마차 들어봐 좋다', '2019-06-24 (00:34)'),
(4, 'hello', 68, 'dongin1009', '정동인', 1, 0, '황인욱 - 포장마차 들어보셔요', '2019-06-24 (00:35)'),
(5, 'hello', 67, 'dongin1009', '정동인', 1, 0, '경안이 특기 : 재밌게 말하기', '2019-06-24 (00:36)'),
(6, 'hello', 65, 'dongin1009', '정동인', 1, 0, '배드민턴은 잘 모르겟고 난 세팍타크로는 잘하는데', '2019-06-24 (00:37)'),
(7, 'hello', 63, 'dongin1009', '정동인', 1, 0, '나 캐리커쳐 그려주라', '2019-06-24 (00:38)'),
(8, 'hello', 62, 'dongin1009', '정동인', 1, 0, '형준이 손으로 프로그램 만들자 ㅋ', '2019-06-24 (00:38)'),
(9, 'hello', 61, 'dongin1009', '정동인', 1, 0, '자기소개 멋지다 준호', '2019-06-24 (00:39)'),
(10, 'hello', 59, 'dongin1009', '정동인', 1, 0, '특기 : 댄스', '2019-06-24 (00:40)'),
(11, 'hello', 57, 'dongin1009', '정동인', 1, 0, '굳 이긴 한데 특기가 정말 멋있네요 ㅎ', '2019-06-24 (00:41)'),
(12, 'hello', 56, 'dongin1009', '정동인', 1, 0, 'ㅋㅋㅋ 익준 안녕 ', '2019-06-24 (00:41)');

-- --------------------------------------------------------

--
-- 테이블 구조 `exam`
--

CREATE TABLE `exam` (
  `no` int(11) NOT NULL,
  `id` char(15) DEFAULT NULL,
  `name` char(15) DEFAULT NULL,
  `subject` char(150) DEFAULT NULL,
  `story` text,
  `hit` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `file` char(100) DEFAULT NULL,
  `comment` int(11) NOT NULL,
  `regdate` char(20) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `exam`
--

INSERT INTO `exam` (`no`, `id`, `name`, `subject`, `story`, `hit`, `year`, `file`, `comment`, `regdate`, `ip`) VALUES
(1, 'fusc0', '김성준', '2015 영상처리 기말고사 정성태 교수님', '<p><br></p>', 46, 1, 'gc10191133526.jpg', 0, '2018-10-19 (11:33)', '210.112.150.175'),
(2, 'fusc0', '김성준', '2015 영상처리 중간고사 정성태 교수님', '<p><br></p>', 47, 1, 'ay10191135543.jpg', 0, '2018-10-19 (11:35)', '210.112.150.175'),
(3, 'fusc0', '김성준', '2017 영상처리 중간고사 정성태 교수님', '<p><br></p>', 46, 1, 'gl10191140239.jpg', 0, '2018-10-19 (11:40)', '210.112.150.175'),
(4, 'fusc0', '김성준', '2018 데이터베이스 중간고사 최동운 교수님', '<p><br></p>', 78, 1, 'ck10191140453.jpg', 0, '2018-10-19 (11:40)', '210.112.150.175'),
(5, 'fusc0', '김성준', '2018 영상처리 중간고사 정성태 교수님', '<p><br></p>', 55, 1, 'mh10191141081.jpg', 0, '2018-10-19 (11:41)', '210.112.150.175'),
(6, 'hyeonji7423', '정현지', '2018년 2학기 중간고사 C언어 이종민, 정호일', '<p>이종민, 정호일 교수님 출제.</p>\r\n', 59, 2, 'yu10250434378.docx', 0, '2018-10-25 (16:34)', '210.112.150.173'),
(7, 'hyeonji7423', '정현지', '2018 수학 중간고사 박종육', '<p>2학기 수학 박종육 교수님.</p>\r\n', 61, 2, 'yq10250442062.jpg,eo10250442068.jpg', 0, '2018-10-25 (16:42)', '210.112.150.173'),
(8, 'yun', '윤기동', '2018년도 운영체제 기말고사 (이종민 교수님)', '2018년도 1학기 운영체제 과목 시험 족보', 60, 1, 'rd11010159598.pdf', 0, '2018-11-01 (13:59)', '118.221.237.39'),
(9, 'yun', '윤기동', '2018년도 HCI 기말고사 (정호일 교수님)', 'PPT 5문제 그대로 동일하게 나왔습니다.', 40, 1, 'wg12051022503.png', 0, '2018-12-05 (22:22)', '118.221.237.39'),
(10, 'fusc0', '김성준', '2018 영상처리 기말고사 정성태 교수님', '열공 ㅎㅎ', 58, 1, 'ac12101103104.jpeg', 0, '2018-12-10 (23:03)', '117.111.16.106'),
(11, 'fusc0', '김성준', '2018 데이터베이스 기말고사 최동운 교수님', '이론 문제 하나도 안내네..', 58, 1, 'fm12121201308.jpeg', 0, '2018-12-12 (12:01)', '117.111.16.218'),
(12, 'hyeonji7423', '정현지', '2019 웹 프로그래밍 중간고사 김영운교수님', '2019 웹 프로그래밍 중간고사 김영운교수님', 13, 2, 'kz05151104291.pdf', 0, '2019-05-15 (23:04)', '123.212.249.215'),
(13, 'pms9158', '박명수', '2019 수학 중간고사 서혜영교수님', '2019 수학 중간고사 서혜영교수님', 10, 3, 'xm06110127231.hwp', 0, '2019-06-11 (01:27)', '175.208.93.252');

-- --------------------------------------------------------

--
-- 테이블 구조 `gallery`
--

CREATE TABLE `gallery` (
  `no` int(11) NOT NULL,
  `id` char(15) DEFAULT NULL,
  `name` char(15) DEFAULT NULL,
  `subject` char(150) DEFAULT NULL,
  `story` text,
  `hit` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `file` char(100) DEFAULT NULL,
  `comment` int(11) NOT NULL,
  `regdate` char(20) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `gallery`
--

INSERT INTO `gallery` (`no`, `id`, `name`, `subject`, `story`, `hit`, `year`, `file`, `comment`, `regdate`, `ip`) VALUES
(2, 'yun', '윤기동', '아티니어 18년도 회의 사진', '회의 중 사진&nbsp;', 72, 1, 'rs11010205548.jpg,me11010205549.jpg', 0, '2018-11-01 (14:05)', '118.221.237.39'),
(3, 'yun', '윤기동', '2018년도 엠티사진', '다같이 재밌게 다녀온 엠티사진..', 69, 1, 'fu12051030436.jpeg,mw12051030439.jpeg,qb12051030438.jpeg,rv12051030432.jpeg,nj12051030435.jpeg', 0, '2018-12-05 (22:30)', '118.221.237.39'),
(4, 'yun', '윤기동', '컴공인의날 동아리 경진대회', '2018 컴공인의날 동아리 경진대회 사진', 63, 1, 'ia12051032076.jpeg,yz12051032072.jpeg,fv12051032077.jpeg,uo12051032076.jpeg,up12051032071.jpeg', 0, '2018-12-05 (22:32)', '118.221.237.39'),
(5, 'artineer', '관리자', '2018 아티니어 엠티 1', '2018 아티니어 엠티<br /><br />&nbsp;', 33, 0, 'oo03140221255.jpg,mp03140221253.jpg,zi03140221257.jpg,gq03140221257.jpg,ip03140221254.jpg', 0, '2019-03-14 (14:20)', '210.112.150.40'),
(6, 'artineer', '관리자', '2018 아티니어 엠티 2', '2018 아티니어 엠티', 23, 0, 'yu03140222133.jpg,cm03140222133.jpg,if03140222133.jpg,jg03140222137.jpg,iq03140222136.jpg', 0, '2019-03-14 (14:22)', '210.112.150.40'),
(7, 'artineer', '관리자', '2018 아티니어 엠티 3', '2018 아티니어 엠티', 35, 0, 'ff03140222404.jpg,qd03140222402.jpg,xg03140222406.jpg,dp03140222408.jpg', 0, '2019-03-14 (14:22)', '210.112.150.40'),
(8, 'artineer', '관리자', '2019 벚꽃 단체사진 1', '2019.04.08', 19, 0, 'dd04080800155.jpg,at04080800159.jpg,yt04080800159.jpg,el04080800151.jpg', 0, '2019-04-08 (20:00)', '61.245.248.195'),
(9, 'artineer', '관리자', '2019 벚꽃 단체사진 2', '2019.04.08', 36, 0, 'uw04080801227.jpg,yo04080801222.jpg,xe04080801227.jpg,hp04080801229.jpg', 0, '2019-04-08 (20:01)', '61.245.248.195'),
(1, 'fusc0', '김성준', '2018 단체사진', '2018.04.10', 50, 1, 'fe04100320293.jpg,dj04100320298.jpg,is04100320291.jpg,fw04100320294.jpg', 0, '2018-04-10 (15:14)', '61.245.248.195'),
(10, 'hyeonji7423', '정현지', '아티니어 단체사진', '아티니어 단체사진', 25, 2, 'lv04131215344.jpg,lg04131215344.jpg,ll04131215347.jpg', 0, '2019-04-13 (00:15)', '123.212.249.215'),
(80, 'hyeonji7423', '정현지', '2019 아티니어 회식', '아티니어 회식', 17, 2, 'xo05151107219.jpg,wx05151107211.jpg,sf05151107217.jpg,le05151107213.jpg', 0, '2019-05-15 (23:07)', '123.212.249.215');

-- --------------------------------------------------------

--
-- 테이블 구조 `hello`
--

CREATE TABLE `hello` (
  `no` int(11) NOT NULL,
  `id` char(15) DEFAULT NULL,
  `name` char(15) DEFAULT NULL,
  `subject` char(150) DEFAULT NULL,
  `story` text,
  `hit` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `file` char(100) DEFAULT NULL,
  `comment` int(11) NOT NULL,
  `regdate` char(20) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `hello`
--

INSERT INTO `hello` (`no`, `id`, `name`, `subject`, `story`, `hit`, `year`, `file`, `comment`, `regdate`, `ip`) VALUES
(1, 'fusc0', '김성준', '안녕하세요. 1기 김성준입니다!', '- 성명 : 김성준\r\n\r\n- 학과 : 컴퓨터공학과\r\n\r\n- 학번 : 20131153\r\n\r\n- 기수 : 1기\r\n\r\n- 취미 : 축구, 여행, 사진\r\n\r\n- 특기 : 컴퓨터\r\n\r\n- 개발경험 : 웹 프론트엔드, 백엔드 개발\r\n\r\n- 가입동기 : 기존에 있던 학술 동아리와는 다르게 자유로운 분위기로 많은 인원을 수용하고, 학교 교육과정보단 더 심화적인 프로그래밍을 배울 수 있는 동아리를 만들고 싶어서 설립하게 됐습니다ㅎㅎ\r\n\r\n- 자기소개 : 다들 모르셨겠지만 저는 현재 아티니어에서 부회장을 맡고 있습니다!ㅋㅋ 항상 조용히 묵묵하게 회장 뒤에서 동아리 운영을 보좌하고 있죠ㅎㅎㅎ 저는 웹 코딩을 잘하진 못하고 아주 조금 할 줄 알아요! 웹개발을 혼자 공부하고 있는 회원이 있다면 부족하지만 제가 도움을 줄 수 있는 선에서 도와드릴게요. 잘 부탁드립니다~', 94, 1, 'cm05160257235.png', 0, '2018-05-08 (14:45)', '1.211.104.154'),
(5, 'dongin1009', '정동인', '안녕하십니까 1기 정동인입니다.', '- 성명 : 정동인\r\n\r\n- 학과 : 컴퓨터소프트웨어공학과\r\n\r\n- 학번 : 20173247\r\n\r\n- 기수 : 1기\r\n\r\n- 취미 : 말하기, 프로그래밍\r\n\r\n- 특기 : 말하기\r\n\r\n- 개발경험 : C언어 기초, 웹 아주 기초\r\n\r\n- 가입동기 : 컴퓨터소프트웨어공학과를 진학하고 수업시간에 공부하는 것만으로는 진정한 프로그래머가 될 수 없다고 생각했습니다. 아티니어에서의 좋은 활동 및 배움을 통해 진정한 프로그래머가 되고자 가입했습니다.\r\n\r\n- 자기소개 : 안녕하십니까 컴퓨터소프트웨어공학과 2학년 정동인입니다. 저는 1남 3녀중 장남입니다. 사는 곳은 현재 전주에서 통학을 하고 있습니다. 원광대학교 컴퓨터소프트웨어공학과에 진학한지 어언 1년이 지났지만 전공에 대한 지식은 아직도 한없이 부족하다고 생각합니다. 선배님들 후배님들 동기들과 함께 아티니어의 본질 그대로의 순기능을 살려 정말 진정한 대학생활을 해보고 싶습니다. 잘 부탁드립니다!', 80, 1, 'of05110100316.jpg', 0, '2018-05-11 (12:56)', '61.245.230.11'),
(6, 'kongsai8', '홍세연', '세연이에요', '<p><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 성명 : 홍세연</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 학과 : 컴퓨터소프트웨이공학과</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 학번 : 20173270</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 기수 : 1기</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 취미 : 롤</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 특기 :&nbsp;</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 개발경험 : 씨언어,앱인벤터,자바개발중</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 가입동기 : 재미있게 공부하고싶어서 들어왔습니다</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 자기소개 : 17학번 대장 홍세연입니다람쥐</span>&nbsp;</p>', 61, 1, 'zu05110127278.jpg', 0, '2018-05-11 (13:03)', '211.36.144.128'),
(7, 'dolto', '홍도완', '홍도완(2기)', '<p>성명 : 홍도완\r\n\r\n학과 : 컴퓨터소프트웨어공학과\r\n\r\n학번 : 20183294\r\n\r\n기수 : 2기\r\n\r\n취미 : 낙서아이디어, 게임, 게임개발, 마우스도트,국궁&nbsp; </p><p>특기 : 잡생각\r\n\r\n개발경험 : 유전적 알고리즘으로 적을이기도록 진화시켜보았다.</p><p><a href=\"https://youtu.be/O1Z2SNwzRU4\" target=\"_self\">https://youtu.be/O1Z2SNwzRU4</a></p><p>양치기 대전쟁(보드게임)&nbsp;<a href=\"https://youtu.be/7zb3UedbPpk\" target=\"_self\">https://youtu.be/7zb3UedbPpk</a></p><p>가입동기 : 그래픽, 기계(아두이노), 소프트웨어의 결합을 배우고싶어서.\r\n\r\n자기소개 : 게임개발자를 꿈꾸는 홍도완입니다.</p>', 55, 2, 'qt05110111152.jpg', 0, '2018-05-11 (13:11)', '210.112.150.24'),
(8, 'yun', '윤기동', '안녕하세요 1기 윤기동입니다.', '<p>- 성명 : 윤기동</p><p><br></p><p>- 학과 : 컴퓨터공학과</p><p><br></p><p>- 학번 : 20131194</p><p><br></p><p>- 기수 : 1기</p><p><br></p><p>- 취미 : 버스킹, 드럼, 오버워치</p><p><br></p><p>- 특기 : 코딩</p><p><br></p><p>- 개발경험 : 안드로이드, 웹, 네트워킹, DS</p><p><br></p><p>- 가입동기 : 처음 컴퓨터공학과를 입학했을 때 IT관련 지식에 대해서 굉장히 막연했었습니다.</p><p>그리고 저학년 친구들과 고학년 친구들과의 교류도 굉장히 적었습니다. 이러한 부분에 대해서 우리 동아리를 통해서라도 작게나마 서로 교류가 될수 있는 공간을 마련하고 싶었기에 만들게 되었습니다.</p><p><br></p><p>컴퓨터 소프트웨어 공학과로 바뀐 지금 들어오고 있는 학생들은 많지만 이들을 관리해줄 동아리 수 가 적다는 것을 느꼈습니다. 이 이유로 2017년 부터 진행하게되었습니다.</p><p><br>- 자기소개 : 아티니어 초기 회장직을 맡고 있는 윤기동이라고 합니다. 단순히 학술동아리가 아니라 컴퓨터 공학과가 서로 소통하고 교류하는 동아리가 되었으면 좋겠습니다!&nbsp;</p><p><br></p>', 62, 1, 'cv05110356595.jpg', 0, '2018-05-11 (15:56)', '121.186.216.70'),
(9, 'w030w58', '정희지', '정희지(1기)', '<p><br></p><p>- 성명 : &nbsp;정희지</p><p><br></p><p>- 학과 : 디지털콘텐츠공학과</p><p><br></p><p>- 학번 : 20173311</p><p><br></p><p>- 기수 : 1기</p><p><br></p><p>- 취미 : 영화감상 논평, 일러스트레이터 디자인, 요리</p><p><br></p><p>- 특기 : 잠자기</p><p><br></p><p>- 개발경험 : c언어 기초, html 기초, 파이썬 기초, ppt</p><p><br></p><p>- 가입동기 : 대학교를 재학하면서 학과에서 하는 좋은수업 말고도 대학생활에서 내 자신이 관심있는 분야에 더 다양하고 더 세세한 배움과 정보를 활동으로 얻고, 그 배움을 다른 사람들에게 도움을 주며 소통을 할수있는 활동을 꿈꾸었습니다. &nbsp;</p><p><br></p><p>이런 활동을 할 수있는 곳을 찾아보던 중 아티니어가 있었습니다. 아티니어에 가입해 대학생활을 지내면서 꿈꾼 활동 이루고 싶어서 지원하게 되었습니다.</p><p><br></p><p>- 자기소개 : 안녕하세요 디지털콘텐츠공학과 17학번 정희지 입니다. 작년때부터 수업을 들어오며 It분야에 관심이 있었고 , 더 다양하고 세세한 부분을 알고싶어 동아리 지원하게 되었습니다. &nbsp;열심히 동아리 활동에 참여해 알고싶어했던 부분과 부족한 부분을 배워가며 열심히 활동하겠습니다! 잘 부탁드립니다!</p>', 48, 1, 'xs05110653594.png', 0, '2018-05-11 (18:53)', '223.39.145.172'),
(11, 'dkfb22', '박지강', '가입인사', '<p>이름 : 박지강</p><p><br></p><p>학과 : 컴퓨터소프트웨어계열</p><p><br></p><p>학번 : 20183159</p><p><br></p><p>기수 : 2기</p><p><br></p><p>취미 : 인터넷방송 시청, 음악•영화 감상, 게임</p><p><br></p><p>개발경험 : 없음(c언어를 배우고 있습니다.)</p><p><br></p><p>가입동기 : 전문지식을 배우거나 대학생활에 유용한 경험을 들을 수 있을 기회라고 생각하여 가잊하게 되었습니다.</p><p><br></p><p>자기소개 : 이름을 잘못 입력해서 박지간이라고 써버렸네요. 많이 부족하지만 잘부탁드립니다.</p><p>&nbsp;</p><p><br></p>', 49, 2, 'yu05111023111.jpg', 0, '2018-05-11 (22:23)', '125.182.70.169'),
(13, 'tjddus', '이성연', '1기. 이성연입니다.', '<p><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 성명 : 이성연</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 학과 : 컴퓨터공학과</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 학번 : 20131199</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 기수 : 1기</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 취미 : 영화감상, 소설 책 읽기</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 특기 : 컴퓨터</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 개발경험 : 자바, 안드로이드 스튜디오</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 가입동기 : 학교에서 배우는 수업에서 멈추지 않고 모든 동아리 사람들과 더 많은 것을</span></p><p><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">배우고 싶었기에 만들게 되었습니다.</span></p><p><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 자기소개 : 안녕하세요. 저는 아티니어에서 자바 수업을 가르치고 있는 이성연입니다.</span></p><p><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"font-size: 13px;\">현재 아티니어 임원진들과 함께 아티니어 동아리에서 활동하고 있습니다. 자바수업이나&nbsp;</span></span></p><p><span style=\"font-family: &quot;맑은 고딕&quot;;\"><span style=\"font-size: 13px;\">궁금</span></span><span style=\"font-size: 13px; font-family: &quot;맑은 고딕&quot;;\">한게 있는 사람들은 저한테 물어봐주셔도 됩니다. 감사합니다.!</span></p>', 62, 1, 'qa05120335147.jpg', 2, '2018-05-12 (15:35)', '222.236.238.73'),
(14, 'gkfka0588', '최하람', '안녕하세Yo', '<p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 성명 : 최하람<br><br>- 학과 : 컴퓨터소프트웨어계열학과<br><br>- 학번 : 201731644<br><br>- 기수 : 2기<br><br>- 취미 : 게임, 운동<br><br>- 특기 : 컴퓨터<br><br>- 개발경험 : (AutoCAD, Inventor)심화 (CATIA,&nbsp;Solid works)기초</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br>- 가입동기 : 학교에서 배우는것 의외에 추가적으로 배우고 싶어서 가입했습니다.</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br>- 자기소개 : 안녕하세요. 컴퓨터소프트웨어공학과 2학년 최하람입니다. 다들 잘부탁 드려요</p>', 56, 2, 'ub05120856466.jpg', 0, '2018-05-12 (20:56)', '218.158.196.129'),
(15, 'o10325', '오수빈', '오수빈(1기)', '<p><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 성명 : 오수빈</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 학과 :&nbsp;디지털콘텐츠공학과</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 학번 :&nbsp;20173298</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 기수 :&nbsp;1기</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 취미 :&nbsp;롤</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 특기 :&nbsp;책 빨리읽기</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 개발경험 :&nbsp;안드로이드 스튜디오</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 가입동기 :&nbsp;전공과 관련된 지식이 부족해 더 공부하고 배우고싶어서 지원하게 되었습니다.</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 자기소개 : 안녕하세요 저는 디지털콘텐츠공학과 17학번 오수빈입니다. 다들 얼른 친해져서 같이 공부하고 놀았으면 좋겠습니다. 잘 부탁드려요~</span>&nbsp;</p>', 71, 1, 'wc05131246594.jpg', 0, '2018-05-13 (00:46)', '218.158.252.157'),
(18, 'jh9770', '김주환', '가입인사', '<p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 성명 : 김주환</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br></p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 학과 : 컴퓨터공학과</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br></p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 학번 : 20131157</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br></p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 기수 : 1기</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br></p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 취미 : 테니스,게임</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br></p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 특기 : 잡지식많음</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br></p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 개발경험 : 안드로이드, 웹 , C ,&nbsp;</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br></p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 가입동기 : 학과후배들이 단순히 학교수업만 따라가는것이 아니라</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; margin-left: 80px;\">새로운것을 경험하고 다양한방면으로 나아갔으면 좋겠다라는생각으로</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; margin-left: 80px;\">친구들과함께 동아리를 만들게 되었습니다.</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; margin-left: 80px;\">아티니어에서 다양한 경험들을 해보셧으면 좋겠습니다</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; margin-left: 80px;\"><br></p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 자기소개 : 초대학술부장을 맡은 김주환입니다.</p><p style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; margin-left: 80px;\">공부도열심히하고 대학생활 즐겁게 하셧으면 좋겠습니다</p>', 38, 1, 'df05280443199.jpg', 1, '2018-05-28 (16:43)', '61.245.230.110'),
(19, 'tpgml944', '임세희', '임세희 (2기)', '<span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 성명 : 임세희</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 학과 : 컴퓨터소프트웨어공학과</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 학번 :&nbsp;20173242</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 기수 : 2기</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 취미 : 영화보기</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 특기 :&nbsp;</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 개발경험 : c, java, html</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 가입동기 : 전공 관련하여 부족한 부분들을 심화적으로 배우고자 가입하게 되었습니다 !</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px;\">- 자기소개 : 안녕하세요 컴퓨터소프트웨어공학과 2학년 임세희 입니다. 열심히 활동하겠습니다 !</span>', 64, 2, 'jn05300254388.jpg', 0, '2018-05-30 (14:54)', '210.112.150.143'),
(20, 'glwlsdl0326', '천희진', '2기 천희진입니다', '<p style=\"text-align: center; margin-left: 0px;\" align=\"center\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\">- 성명 : 천희진</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\">- 학과 :&nbsp;컴퓨터소프트웨어공학과</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\">- 학번 :&nbsp;20160857</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\">- 기수 :&nbsp;2</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\">- 취미 :독서 ㅎㅎ</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\">- 특기 :&nbsp;</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\">- 개발경험 :&nbsp;</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\">- 가입동기 :&nbsp;주환이오빠에게 씨언어 배우려고 들어오게 됐습니당~~~</span><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><br style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\">- 자기소개 : 안녕하세요~~~ 컴퓨터소프트웨어공학과 16학번이지만&nbsp;</span></p><p style=\"text-align: center; margin-left: 0px;\" align=\"center\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\">1년휴학해서 2학년인 천희진입니다~~ 잘 부탁드립니다~~~~</span>&nbsp;</p><p style=\"text-align: center; margin-left: 0px;\" align=\"center\"><span style=\"font-family: &quot;맑은 고딕&quot;; font-size: 13px; text-align: start;\">아티니어 화이팅~~~~</span></p>', 62, 2, '', 0, '2018-05-30 (15:10)', '211.36.135.8'),
(21, 'cd2301', '도준영', '도준영(2기)', '<p align=\"center\" style=\"font-family:;\" center;\"=\"\" 13px;=\"\" 고딕\";=\"\" 맑은=\"\"><span style=\"font-size: 13px;\">- 성명 : 도준영</span><br style=\"font-size: 13px;\"><br style=\"font-size: 13px;\"><span style=\"font-size: 13px;\">- 학과 : 디지털콘텐츠공학과</span><br style=\"font-size: 13px;\"><br style=\"font-size: 13px;\"><span style=\"font-size: 13px;\">- 학번 :&nbsp;20183317</span><br style=\"font-size: 13px;\"><br style=\"font-size: 13px;\"><span style=\"font-size: 13px;\">- 기수 :&nbsp;2</span><br style=\"font-size: 13px;\"><br style=\"font-size: 13px;\"><span style=\"font-size: 13px;\">- 취미 :게임,그림</span><br style=\"font-size: 13px;\"><br style=\"font-size: 13px;\"><span style=\"font-size: 13px;\">- 특기 : 게임</span><br style=\"font-size: 13px;\"><br style=\"font-size: 13px;\"><span style=\"font-size: 13px;\">- 개발경험 : 없음</span><br style=\"font-size: 13px;\"><br style=\"font-size: 13px;\"><span style=\"font-size: 13px;\">- 가입동기 : 개발경험이없어 &nbsp;모르는게 많아 가입했읍니당</span><br style=\"font-size: 13px;\"><br style=\"font-size: 13px;\"><span style=\"font-size: 13px;\">- 자기소개 : 디콘18학번 도준영입니다</span></p><p align=\"center\" style=\"font-family:;\" center;\"=\"\" 13px;=\"\" 고딕\";=\"\" 맑은=\"\"><span style=\"font-size: 13px;\">잘부탁드립니다</span></p>', 51, 2, 'kp09271242565.jpg', 0, '2018-09-27 (00:42)', '175.223.37.89'),
(23, 'tmdtlss131', '유승진', '반갑습니다 1기 유승진입니다', '<p>- 성명 : 유승진<br><br>- 학과 : 컴퓨터소프트웨어공학과<br><br>- 학번 : 20131193<br><br>- 기수 : 1기<br><br>- 취미 : 축구,ppt발표<br><br>- 특기 : 말하기<br><br>- 개발경험 : D/B , C#<br><br>- 가입동기 : 무었보다 소통이 필요한 컴퓨터 소프트웨어 공학과 였습니다. 시간이 흘러감에따라 개인의 중요성이 늘어났고 그에따라 소통이 많이 부족해져 많이 아쉬웠습니다. 하지만 2017년 회장 윤기동과 함께</p><p>업 증진 및 소통에 따른 교류감 개선이 필요해 아트니어란 학술동아리를 만드는 계획에 임했습니다.</p><p>그래서 2018년 개설되어 학술 뿐만아니라 원광대 컴소공에 속해있는 모든 분들이 자신감을 가지고<br>학업생활에있어 즐거움을 줄려고 노력하고 있습니다. 이에 저 뿐만아닌 1기 분들이 많은 노력을 하고<br>있으니 많은 지원 바랍니다.^^<br><br>- 자기소개 :&nbsp; 안녕하십니까 저는 2018년도 컴소공 학생회장을 맡고 있습니다. 작년부터 학생회+동아리 인원이 </p><p>증가함에따라 많은 부분에서 생각을 했습니다. 이 부분에대해 \"어떻게 개선되면 좋을지\",\"학우분들을</p><p>어떻게하면 학교를 재밌게 다닐 수 있을지\" 학생회 차원에 많이 생각을해 봤습니다. </p><p>기존에 학생회와 동아리를 함께 진행할려 했으나 교류 할 기준점이 없다고 생각해&nbsp;윤기동(현 회장)</p><p>과&nbsp;학술에 있어서 누구보다 자신있고 선후배 및 동기와 교류감에 있어&nbsp;수준을 최고로 올리고 싶었습</p><p>다. 그래서 이렇게 아트니어가&nbsp;&nbsp;만들어지게 되었습니다. 저는 취미 특기같은경우 따로 기재하긴했지만</p><p>저거를 제외하고도 많은걸 좋아합니다. 항상 저뿐만아니라 1기분들은 열려있으니 학과생활 및 학술에 관련해 <br>많이 연락해주세요 . </p><p><br></p>', 59, 1, 'mp10191130163.jpg', 0, '2018-10-19 (11:30)', '175.208.53.33'),
(22, 'hyeonji7423', '정현지', '정현지(2기)', '<p align=\"center\" style=\"font-family:;\" center;\"=\"\" auto;=\"\" 13px;=\"\" 고딕\";=\"\" 맑은=\"\"><span>- 성명 : 정현지</span><br><br><span>- 학과 : 컴퓨터 소프트웨어 공학과</span><br><br><span>- 학번 :&nbsp;20183274</span><br><br><span>- 기수 :&nbsp;2</span><br><br><span>- 취미 : 문화생활(콘서트 &amp; 뮤지컬 등), 네일아트</span><br><br><span>- 특기 : ..</span><br><br><span>- 개발경험 : 없음</span><br><br><span>- 가입동기 : 강의프로젝트가 있는 것을 보고 동아리에 관심을 가지게 되어 가입하게 되었습니다.</span><br><br><span>- 자기소개 : 컴공 18학번 정현지 입니다. 동아리 활동 열심히 하겠습니다. 잘 부탁 드립니다.</span></p>', 88, 2, '', 0, '2018-10-02 (21:36)', '223.38.24.166'),
(24, 'hh0630', '황현', '아티니어 1기 황현입니다', '- 성명 : 황 &nbsp;현<br />\r\n- 학과 : 컴퓨터공학과<br />\r\n- 학번 : 20131219<br />\r\n- 기수 : 1기<br />\r\n- 취미 : 음악 듣기, 기타 연주, 운동<br />\r\n- 특기 : 혼자놀기(?)<br />\r\n- 개발경험 : 안드로이드 어플리케이션, 웹 프론트엔드<br />\r\n- 가입동기 : 단순히 학술만을 위한 동아리가 아닌 자신의 생각을 실현시키는 개발활동을<br />\r\n하고싶었습니다. 제 생각과 가장 근접하고 활동적인 동아리라고 생각되어 &#39;아티니어&#39;와<br />\r\n함께 하게 되었습니다!<br />\r\n- 자기소개 : 현재 컴퓨터공학과 13학번으로 4학년에 재학 중이며 음악과 디자인에 관심이&nbsp;<br />\r\n많습니다! 좋아하는 걸 할 때 가장 행복하며 계속해서 제가 좋아하는걸 많이 해나갈 생각<br />\r\n입니다.<br />\r\n&nbsp; 아티니어에서는 &#39;Presentation&#39;과목 강사로 활동 중이며 웹분야에 관심이 많습니다!<br />\r\n어렵게 생각하지 말고 다들 잘 지낼 수 있으면 좋겠습니다!', 75, 1, 'dy10260513261.jpg', 0, '2018-10-26 (17:13)', '118.221.237.39'),
(25, 'leh2353', '이은휴', '아티니어 2기 이은휴 입니다.', '- 성명 : 이은휴<br /><br />- 학과 : 컴퓨터 소프트웨어 공학과<br /><br />- 학번 :&nbsp;20183255<br /><br />- 기수 :&nbsp;2<br /><br />- 취미 : 게임<br /><br />- 특기 : 밤새기<br /><br />- 개발경험 : 없음<br /><br />- 가입동기 : 강의 프로그램과 다른 동기들의 추천으로 들어오게 되었습니다.<br /><br />- 자기소개 : 컴소공 이은휴 입니다. 잘 부탁 드립니다.', 18, 2, '', 0, '2019-03-07 (12:34)', '210.112.150.36'),
(26, 'bluecat', '김예린', '가입했다~~~ 2019 3기', 'Yay~~<br />안냥하세염!!', 21, 3, 'js03120742288.jpg', 1, '2019-03-12 (19:42)', '210.112.150.12'),
(27, 'bluedog', '소혜민', '19학번 소혜민', '- 성명 : 소혜민<br /><br />- 학과 : 컴퓨터 소프트웨어 공학과<br /><br />- 학번 : 20192702<br /><br />- 기수 : 3기<br /><br />- 취미 : 게임, 영화나 드라마 보기, 그림<br /><br />- 특기 : 그림<br /><br />- 개발경험 : X<br /><br />- 가입동기 : 여러가지 강좌를 들을 수 있는 혜택!<br /><br />- 자기소개 : 19학번 소혜민입니다! 잘 부탁드려요!', 23, 3, 'qn03120747269.jpg', 1, '2019-03-12 (19:47)', '210.112.150.12'),
(28, 'nkh3122', '노국환', '안녕하세요 3기 노국환입니다.', '<span style=\"background-color:transparent; color:#000000\">- 성명 : 노국환</span><br /><br /><span style=\"background-color:transparent; color:#000000\">- 학과 : 컴퓨터소프트웨어계열</span><br /><br /><span style=\"background-color:transparent; color:#000000\">- 학번 : 20192700</span><br /><br /><span style=\"background-color:transparent; color:#000000\">- 기수 : 3기</span><br /><br /><span style=\"background-color:transparent; color:#000000\">- 취미 : 판타지소설읽기</span><br /><br /><span style=\"background-color:transparent; color:#000000\">- 특기 : ..?</span><br /><br /><span style=\"background-color:transparent; color:#000000\">- 개발경험 : C언어 조금 Api 조금</span><br /><br /><span style=\"background-color:transparent; color:#000000\">- 가입동기 : 수업외에 공부를 하고 싶어서 들어왔습니다.</span><br /><br /><span style=\"background-color:transparent; color:#000000\">- 자기소개 :&nbsp;</span> 안녕하세요. 19학번 노국환입니다. 비록 모르는게 많아도 천천히 알려주면 잘할 자신 있습니다. 잘 부탁드립니다.', 22, 3, '', 0, '2019-03-12 (21:16)', '59.2.238.198'),
(29, 'mingi6777', '장민기', '가입인사', '- 성명 : 장민기\r\n\r\n- 학과 : 컴퓨터소프트웨어\r\n\r\n- 학번 :20192812\r\n\r\n- 기수 : 3기\r\n\r\n- 취미 : 노래듣기부르기 문홰생활기 자기개발하기\r\n\r\n- 특기 : 이공계에 좋아해\r\n\r\n- 개발경험 : 흥미와 관심\r\n\r\n- 가입동기 : 동아리를 가입해보고\r\n싶었고 아티니어에 동아리활동이 마음에 들어서입니다\r\n\r\n- 자기소개 : 친하게 지내자\r\n\r\n안녕하세요 이번에 아티니어동아리에 가입하게된<br />컴퓨터소프트웨어과19학번 장민기입니다<br />앞으로 잘부탁 드립니다&nbsp; 3기 입니다<br />&nbsp;', 19, 2, '', 0, '2019-03-12 (21:17)', '218.151.23.48'),
(30, 'chsmin0509', '천승민', '안녕하세요 19학번 천승민입니다.', '19학번 천승민입니다^^', 19, 3, 'kk03120917519.jpg', 1, '2019-03-12 (21:17)', '106.242.119.107'),
(31, 'ehdus9999', '김도연', '3기 김도연', '- 성명 :김도연<br /><br />- 학과 :컴소공<br /><br />- 학번 :20173185<br /><br />- 기수 :3<br /><br />- 취미 : 게임<br /><br />- 특기 :친해지면 편하다는 말 자주 듣습니다! 먼저 말 걸어주시면 감사하겠습니다!!<br /><br />- 개발경험 :C언어<br /><br />- 가입동기 :앞으로 배울 전공 공부<br /><br />- 자기소개 :17학번 2학년 김도연이라고 합니다 잘 부탁드려요', 13, 3, '', 0, '2019-03-12 (21:20)', '118.221.152.22'),
(32, '07153', '황종민', '안녕하세요 19학번 황종민입니다', '안녕하세요 19학번 새내기 황종민입니다<br />학과는 컴퓨터소프트웨어 학과이고요<br />학번은 20192839입니다<br />아티니어 3기 멤버가 되었습니다 ㅎㅎ<br />취미는 농구나 게임을 주로 해요.<br />특기는 딱히 말할게없네요 ㅠㅠ<br />개발경험은 아직은 없습니다<br />가입동기는 어려운 컴퓨터 코딩이나 보안관련에 흥미가있어서 들어오게 되었습니다.<br />저는 전라남도 광양에서 왔고요. 아무튼 잘부탁드립니다 ㅎㅎ ㅈㅅ<br />이상 부족한글 읽어 주셔서 감사합니다 ^^7', 18, 3, '', 0, '2019-03-12 (21:27)', '222.105.6.168'),
(33, 'shjun0660', '심형준', '19학번 심형준 가입인사', '안녕하십니까 이번에 새로 들어온 3기 19학번 심형준입니다 잘부탁드립니다!', 21, 3, '', 1, '2019-03-12 (22:04)', '106.242.124.162'),
(34, 'pms9158', '박명수', '19학번 박명수', '- 성명: 박명수<br />- 학과: 컴퓨터 소프트웨어 공학과<br />- 학번: 20192757<br />- 기수: 3<br />- 취미: 게임, 노래방가기<br />- 특기: 착하다는 말 어릴적부터 많이 들어왔습니다!<br />- 개발경험: 아직 없습니다!<br />- 가입동기: 강좌가 있는게 굉장히 메리트 있어보여서 들어왔습니다~<br />- 자기소개: 안녕하십니까 19학번 컴퓨터 소프트 웨어 공학과 박명수 입니다! 서울에서 거주하다가 이번에 원광대 붙어서 지금 전주 금암동으로 내려와서 할머니랑 같이 살고있습니다 친목이랑 또 경험쌓고 선배분들께 많이 배우려고 아티니어 가입하게 되었습니다! 여기 들어오게 되서 너무 좋고 앞으로 잘 부탁드립니다~!', 20, 3, 'tb03121011388.jpg', 0, '2019-03-12 (22:11)', '175.208.93.252'),
(35, 'parkhw369', '박천주', '가입인사!', '- 성명 :박천주<br />- 학과 :컴퓨터소프트웨어공학과<br />- 학번 :20192768<br />- 기수 :3<br />- 취미 :배드민턴<br />- 특기 :<br />- 개발경험 :<br />- 가입동기 : 컴퓨터에 대해 아는것없이 들어와서 조금이라도 더 배우고싶어서 가입하게되었습니다<br />- 자기소개 : 안녕하세요 전라북도 무주에서온 박천주라고 합니다', 16, 3, 'vr03121037037.jpg', 0, '2019-03-12 (22:37)', '182.231.161.154'),
(36, 'osh3931', '오현식', '안녕하세요 19학번 오현식입니다', '안녕하세요 19학번 오현식입니다 잘부탁드립니다', 15, 3, '', 1, '2019-03-13 (12:02)', '223.39.150.66'),
(38, 'seven1033', '박성영', '가입인사', '- 성명 : 박성영<br /><br />- 학과 : 컴퓨터소프트웨어공학과<br /><br />- 학번 : 20192761<br /><br />- 기수 : 3<br /><br />- 취미 : 휴대폰보기,컴퓨터게임 등<br /><br />- 특기 : ?<br /><br />- 개발경험 : 없음<br /><br />- 가입동기 :프로그래밍 실력 향상을 위해<br /><br />- 자기소개 : 19학번 신입생 박성영입니다.잘 부탁드립니다&nbsp;', 20, 3, 'qh03130156151.jpg', 0, '2019-03-13 (13:56)', '211.36.138.111'),
(40, 'seungwon2020', '정승원', '안녕하세요 19학번입니다~~', '우선 아티니어에 가입하게 되어 영광이며 제가 소속된 동아리인 만큼 항상 최선을 다하겠습니다!&nbsp;', 22, 3, '', 1, '2019-03-13 (14:27)', '210.112.150.36'),
(41, 'alsgur0327', '김민혁', '19학번 김민혁', '성명 : 김민혁<br /><br />학과 : 컴퓨터소프트웨어공학과<br /><br />학번 : 20192728<br /><br />기수 : 3<br /><br />취미 : 게임, 영화, 당구<br /><br />특기 : 엄청 잘 놈<br /><br />개발경험 :<br /><br />가입동기 : 컴퓨터에 대해서 알아갈려고 왔습니다<br /><br />자기소개 : 울산에서 왔구요. 친해지면 엄청 잘 놀구요 먹는거도 좋아합니다<br />&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 열심히 하겠습니다 빠이팅!<br />&nbsp;', 18, 3, '', 0, '2019-03-13 (19:12)', '106.242.122.92'),
(42, 'zartineer', '이지원', '안녕하세요. 이지원이라고 합니다.', '- 성명 :&nbsp; 이지원<br /><br />- 학과 : 컴퓨터 공학과<br /><br />- 학번 :&nbsp; 20142877<br /><br />- 기수 : 3<br /><br />- 취미 : 운동<br /><br />- 특기 : 다크템플러처럼 은신하기<br /><br />- 개발경험 : x<br /><br />- 가입동기 : 신입생 및 재학생들에게 리눅스 교육과 같이 보안을 공부를 할 친구들을 찾아 들어왔습니다.<br /><br />- 자기소개 : 같이 보안쪽 공부 할 사람을 찾고 있습니다. 보안쪽이 워낙 광범위해서 다 알진 모르지만 아는 범위 안에서 가르쳐 드릴게요. 그리고 보안기사(산업기사)&nbsp;같이 준비할 사람 구합니다.', 16, 3, '', 0, '2019-03-13 (19:14)', '211.225.119.19'),
(44, 'asdyddnjs00', '조용원', '안녕하세용', '조용원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />컴퓨터 소프트웨어 공학과<br />20192821<br />3기<br />잠자기<br />축구<br />없음<br />동아리소개시간에 아티니어가 가장기억에남아서 가입하고싶었습니다<br />19학번 새내기 조용원입니다 잘부탁드립니다!', 20, 3, '', 0, '2019-03-13 (19:18)', '110.8.74.201'),
(45, 'chan091955', '윤찬영', '안녕하세요. 3기 윤찬영입니딘.', '- 성명 :&nbsp; 윤찬영<br /><br />- 학과 :&nbsp; 컴퓨터소프트웨어공학과<br /><br />- 학번 :&nbsp; 20192794<br /><br />- 기수 :&nbsp; 3기<br /><br />- 취미 :&nbsp; 유튜브영상보기, 영화감상, 책읽기, 컴퓨터게임 등등<br /><br />- 특기 :&nbsp; 주변사람들과 어울리기?<br /><br />- 개발경험 :&nbsp; 없습니다.<br /><br />- 가입동기 :&nbsp; 컴알못이라 동아리에서 진행하는 강의를 들으면서 실력을 키우고싶어서 입니다.<br /><br />- 자기소개 :&nbsp; 컴소공 19학번 신입생 윤찬영입니다. 잘부탁드립니다.', 21, 3, 'sj03130718339.jpg', 0, '2019-03-13 (19:18)', '175.223.34.91'),
(46, 'ms4754', '문승민', '가입인사', '- 성명 : 문승민<br /><br />- 학과 : 컴퓨터 소프트웨어 공학과<br /><br />- 학번 : 20192753<br /><br />- 기수 : 3<br /><br />- 취미 : 게임,컴퓨터 조립,수리<br /><br />- 특기 : 컴퓨터 관련된것들<br /><br />- 개발경험 : x<br /><br />- 가입동기 : 프로그래밍 등 컴퓨터 관련된것에대해 더 자세히 배우고싶어서 가입햇습니다.<br /><br />- 자기소개 : 잘하진 못하지만 열심히 하겟습니다.잘부탁드립니다.', 18, 3, '', 0, '2019-03-13 (19:30)', '106.242.122.187'),
(47, 'ironman1024', '심보경', '아티니어 3기 심보경입니다.', '- 성명 :&nbsp; 심보경<br /><br />- 학과 : 컴퓨터 소프트웨어 학과<br /><br />- 학번 : 20183379<br /><br />- 기수 : 3기<br /><br />- 취미 :&nbsp;<br /><br />- 특기 :&nbsp;<br /><br />- 개발경험 : 없습니다................(아직)..........<br /><br />- 가입동기 : 컴.소로 전과하면서 자연스럽게 동기들의 소개로 가입하게 되었습니다.<br /><br />- 자기소개 : 안녕하세요~ 앞으로 아티니어에 적응 잘해서 활발한 활동 하겠습니다!!', 14, 3, '', 0, '2019-03-13 (19:47)', '211.213.84.81'),
(48, 'duck3822', '국덕현', '안녕하세요 19학번 국덕현입니다', '성명: 국덕현<br /><br />학과: 컴퓨터소프트웨어공학과<br /><br />학번: 20192721<br /><br />기수: 3<br /><br />취미: 컴퓨터 게임<br /><br />특기:&nbsp;딱히 없습니댬<br /><br />개발경험: 없습니다<br /><br />가입동기: 동아리 소개가&nbsp;가장 인상깊었어요<br /><br />자기소개: 저눈요 진쨔 알코올쓰레기에요 저보다 못마시는 사람 못봤어요 ㅠㅠ !! 친해지면 말이&nbsp;많아지는 타입이에요!! 그렇다구&nbsp;피곤하게 하지 않아요!! 동아리에서 많이 배워가고 싶어요!! 감사합니다', 19, 3, '', 0, '2019-03-13 (19:52)', '1.227.233.196'),
(49, 'careea', '조예리', '3기 조예리입니다.', '성명:조예리<br />학과:컴퓨터소프트웨어공학과<br />학번:20183278<br />기수:3기<br />취미: 듣기<br />특기:&nbsp;<br />개발경험:무<br />가입동기: 강의를듣기위해서 들어왔습니다.<br />자기소개: 안녕하세요 이번에 들어온 조예리입니다 잘부탁드립니다.', 17, 3, '', 0, '2019-03-13 (20:40)', '121.154.158.196'),
(50, 'jshee0114', '정송희', '안녕하세요 아티니어 3기 정송희입니다.', '- 성명 : 정송희<br /><br />- 학과 : 컴퓨터소프트웨어공학과<br /><br />- 학번 : 20183268<br /><br />- 기수 : 3기<br /><br />- 취미 : 음악감상, 계획표 짜기, 청소하기<br /><br />- 특기 : 배우기<br /><br />- 개발경험 : 무&nbsp;<br /><br />- 가입동기 : 대학생때 학교 수업 이외의 좀 더 폭 넓은 컴퓨터의 세계를 알고싶어서 가입하게됐습니다.<br /><br />- 자기소개 : 안녕하십니까 아니티어 3기로 들어온 정송희라고 합니다. 잘 부탁드립니다!!', 17, 3, '', 0, '2019-03-13 (20:40)', '211.230.133.2'),
(51, 'mmm0695', '이민기', '20192800 이민기', '- 성명 : 이민기<br /><br />- 학과 : 컴퓨터소프트웨어공학과<br /><br />- 학번 : 20192800<br /><br />- 기수 : 3기<br /><br />- 취미 : 야구 운동 게임<br /><br />- 특기 : 운동<br /><br />- 개발경험 : x<br /><br />- 가입동기 : 아티니어의 다양한 활동을 보고 가입하게 되었습니다.<br /><br />- 자기소개 :안녕하세요. 저는 19학번 이민기입니다. 이번에 아티니어에 들어와서 많은 공부를 하고 싶습니다.', 15, 3, '', 0, '2019-03-13 (20:47)', '61.85.187.213'),
(52, '20192820', '조승현', '안녕하세요 :)', '<strong>성명 : 조승현</strong><br />학과: 컴퓨터소프트웨어공학과<br />학번: 20192820<br />기수: 3기<br />취미: 여행다니면서 사진이나 동영상 찍고 인생샷이나 영상만드는게 취미입니다.<br />특기: 잘모르겠어용<br />개발경험: 아직은 없는것 같습니다<br />가입동기: 에니악,모스,비트,아티니어 중에서 제일 커리큘럼이나 선배분들이 맘에 들어서 가입하게 되었습니다.<br />자기소개: 2019학년 신입생으로 들어오게된 조승현이라고 합니다. 아직 많이 부족하고 모르는게 많지만 이끌어 주신다면 꽉 붙잡고 잘 따라가겠습니다 :)', 14, 3, '', 0, '2019-03-14 (17:55)', '106.242.122.109'),
(53, 'playgm1', '박재연', '3기 박재연입니다.', '이름 : 박재연<br /><br />학과 : 컴퓨터소프트웨어공학과<br /><br />학번 : 20192765<br /><br />기수 : 3기<br /><br />취미 : 프리미어 프로, 에펙 사용하여 영상편집하기<br /><br />특기 : 영상편집, 간단한 게임 만들기<br /><br />개발경험 : 게임메이커 스튜디오라는 프로그램을 사용하여 간단한 모바일 게임을 만들어본 적이 있습니다.<br /><br />가입동기 : 유니티를 배우고 싶어서 가입했습니다.<br /><br />자기소개 : 조용한 성격이지만 친해지면 말을 많이 하고 관심있는 것에는 열정적으로 활동해서 동아리 활동도 재미있게 열심히 활동할 것 같습니다!', 10, 3, '', 0, '2019-03-14 (21:06)', '125.182.57.53'),
(54, 'c1004sos', '전준영', '3기 전준영입니다.', '-성명 :&nbsp; 전준영<br /><br />- 학과 : 컴퓨터소프트웨어공학과<br /><br />- 학번 : 20192816<br /><br />- 기수 : 3기<br /><br />- 취미 : 컴퓨터 게임, 조립, 관련 정보 읽기<br /><br />- 특기 : 게임을 잘함.<br /><br />- 개발경험 : X<br /><br />- 가입동기 : 선배, 동기들과 친해지고&nbsp; 프로그래밍 실력을 쌓고 싶어서.<br /><br />- 자기소개 : 잘부탁드립니다. 빠지지않고 열심히 활동하겠습니다.', 9, 3, '', 0, '2019-03-14 (21:26)', '125.182.24.139'),
(55, 'merick123', '전민수', '가입인사', '이름: 전민수<br />학과: 컴퓨터소프트웨어공학과<br />학번: 20192814<br />기수: 3기<br />취미: 동영상 시청, 유투브, (가끔 일본어 공부)<br />특기: 운동<br />개발경험: 없습니다.<br />가입동기: 아직 컴퓨터소프트 관련 지식이 많이 없어 배우고 싶어서 지원을 했고, 동기 그리고 선배들이랑 친해지고 싶어서 지원했습니다.<br />자기소개: 경기도에서 온 전민수입니다. 컴퓨터 관련된 것들을 아직 잘 몰라 많이 배우고 싶고 다른 사람들이랑 친해지고 싶습니다. 앞으로도 잘 부탁드립니다.', 9, 3, '', 0, '2019-03-14 (21:30)', '106.242.119.105'),
(56, 'cjy1234567', '최익준', '3기 최익준 입니다~', '이름 : 최익준<br />학과 : 컴퓨터소프트웨어공학<br />학번 : 20192830<br />기수 : 3기<br />취미 : 음악감상, 게임<br />특기 : 노예근성<br />개발경험 : 중학생때 C언어 잠깐 공부 했었고, 고등학교 입학후 1,2학년을 컴퓨터 동아리에 가입하여&nbsp;&nbsp; 겉핥기 식으로 C언어, 파이썬, 리눅스, 포렌식 등을 공부 했었습니다.<br />가입동기 : 입학식날 동아리 소개시간에&nbsp;동아리 목표가 마음에 들었고, 친구(홍도완)가 아티니어 자유롭고 좋은곳이라 하여 가입하게되었습니다.<br />자기소개 : 매우 소심한 성격이지만, 사람만나는걸 정말 좋아합니다. 제가 먼저 다가가기도 하겠지만, 그렇지 못한경우 먼저 다가와 주세요. 동아리 활동 열심히 하겠습니다&nbsp;잘 부탁드립니다.', 16, 3, '', 1, '2019-03-14 (22:19)', '220.124.149.174'),
(57, 'qg1422', '최지원', '3기 최지원입니다', '- 성명 : 최지원<br /><br />- 학과 : 컴퓨터 소프트웨어 공학과<br /><br />- 학번 : 20173265<br /><br />- 기수 : 3기(실수로 정보에 2기로 적엇어요)<br /><br />- 취미 : 게임(롤, 오버워치 등등)<br /><br />- 특기 : 잠자기<br /><br />- 개발경험 : 별로없습니다<br /><br />- 가입동기 : 처음에는 회장님이 권유하셨는데 얘기를 들어보니까 후배들을 가르쳐주면서 나한테도 도움이 될것같고 서로 시너지 효과를 볼수 있을것 같아서 들어오게 되었습니다<br /><br />- 자기소개 : 안녕하세요 3기 최지원입니다 잘부탁드립니다&nbsp;', 21, 2, '', 1, '2019-03-15 (00:43)', '222.236.208.105'),
(59, 'dbsrlf00', '최윤길', '안녕하세용', '- 성명 : 최윤길<br /><br />- 학과 : 컴퓨터소프트웨어공학<br /><br />- 학번 : 20192709<br /><br />- 기수 : 3기<br /><br />- 취미 : 노래<br /><br />- 특기 : 게임..?<br /><br />- 개발경험 : 무<br /><br />- 가입동기 : 동아리를 통해 여러 프로그레밍을 경험해보고 싶어서 입니다.<br /><br />- 자기소개 : 낯을 많이 가리지만 친해지면 편하게 대할수 있습니다', 19, 3, '', 1, '2019-03-15 (16:34)', '223.39.131.214'),
(60, 'bluecat', '김예린', '20192697 김예린', '김예린<br />컴.소.공<br />20192697<br />기수 3기&nbsp;<br />취미 피아노치기<br />특기 단거리마라톤<br />개발경험 전무<br />가입동기 공부를 위해서<br />자기소개 보안쪽을 꿈꾸고 있는 신입생 김예린입니다!', 21, 3, 'ja03150508412.jpg', 0, '2019-03-15 (17:08)', '39.7.54.12'),
(61, 'wnsgh1259', '김준호', '안녕하세요', '-&nbsp;성명 : 김준호&nbsp;<br /><br />- 학과 : 컴퓨터소프트웨어학과<br /><br />- 학번 : 20192735<br /><br />- 기수 : 3<br /><br />- 취미 : 기계를 다루는 것 (스마트폰, 노트북 수리 가능), 게임<br /><br />- 특기 : 많은 끈기<br /><br />- 개발경험 : 간단한 공치기 게임<br /><br />- 가입동기 : 프로그램 제작, 프로그래밍 언어에 대하여 심도있게 공부하고 싶기 때문에<br /><br />- 자기소개 : 안녕하세요. 19학번 소프트웨어학과 신입생 김준호 라고합니다.<br />저는 리더쉽보단 팔로우쉽이 강하여 가르쳐 주시는 것들을 잘 할 수 있습니다.&nbsp;<br />좋은 지식들을 많이 알려 주시기 바랍니다.<br />감사합니다.', 37, 3, '', 1, '2019-03-15 (17:15)', '110.70.52.242'),
(62, 'shjun0660', '심형준', '2019', '- 성명 : 심형준<br /><br />- 학과 : 컴퓨터 소프트웨어공학과<br /><br />- 학번 : 20192784<br /><br />- 기수 : 3<br /><br />- 취미 : 게임,종이접기 등등<br /><br />- 특기 : 손으로 만들기를 잘 합니다<br /><br />- 개발경험 : 없음<br /><br />- 가입동기 : 컴퓨터 공학에 접하게 된것이 대학 때가 처음이므로 많은 것이 뒤쳐질 우려가 커서 선배님들께 보충과 도움 등을 받고싶고 선배들과 동기들과 더 친해지고파 가입하게 되었습니다<br /><br />- 자기소개 : 안녕하십니까 아티니어 3기 심형준입니다 다같이 친하고 좋은 선후배 동기가 되도록 열심히 하겠습니다 잘부탁 드립니다!', 50, 3, '', 1, '2019-03-15 (18:34)', '106.242.124.162'),
(63, 'yg8162', '이연경', '3기 이연경입니다.', '- 성명 : 이연경<br /><br />- 학과 : 컴퓨터 소프트웨어 공학과<br /><br />- 학번 : 20183253<br /><br />- 기수 : 3기<br /><br />- 취미 : 그림 그리기,게임<br /><br />- 특기 : 사진찍기<br /><br />- 개발경험 : 1학년때 전공수업 실습<br /><br />- 가입동기 : 동기들의 추천을 받아서&nbsp;<br /><br />- 자기소개 : 안녕하세요 18학번 컴퓨터 소프트웨어 공학과 이연경입니다.<br />앞으로 잘부탁드립니다.^^&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;', 31, 3, '', 1, '2019-03-15 (19:30)', '122.38.165.13'),
(64, 'tempch44', '박치현', '3기 박치현', '- 성명 : 박치현<br />- 학과 :컴퓨터소프트웨어공학과<br />- 학번 :20192769<br />- 기수 : 3기수<br />- 취미 : 노래듣기<br />- 특기 : 딱히없습니다<br />- 개발경험 :조금 있어요<br />- 가입동기 :평소에 혼자 다루기 벅찼던걸 배워보고싶어서 가입했습니다.&nbsp;<br />- 자기소개 : 19학번 박치현입니다. 잘부탁드립니다!', 34, 3, '', 1, '2019-03-15 (23:31)', '119.206.1.188'),
(65, 'seungwon2020', '정승원', '19학번 정승원입니다', '- 성명 : 정승원<br /><br />- 학과 : 컴퓨터소프트웨어공학과<br /><br />- 학번 : 20192818<br /><br />- 기수 : 3기<br /><br />- 취미 : 배드민턴, 컴퓨터 튜닝<br /><br />- 특기 : 설계?<br /><br />- 개발경험 : 파이썬을 이용한 문제 해결, 아두이노를 이용한 각종 장치 개발<br /><br />- 가입동기 : 자신이 원하는 수업을 골라 들을 수 있어서<br /><br />- 자기소개 : 반갑습니다 19학번 컴퓨터소프트웨어공학과 정승원입니다. 많이 부족하지만 앞으로 열심히 노력하겠습니다.', 29, 3, '', 1, '2019-03-16 (15:38)', '175.223.15.177'),
(66, 'zz730127', '김현', '19학번 김현입니다', '성명:김현<br />학과:컴퓨터 소프트웨어 공학과<br />학번:20192743<br />기수:3<br />취미:혈액형맞추기<br />특기:상대방 경청하고 이야기하기<br />개발경험:솔직히없음..<br />가입동기:자기개발및 C언어 도움받으며 배우기<br />자기소개: 비록 지금은&nbsp;동아리를위해 일하기는 서툴지만&nbsp;많은 사람들과 협력하고 자기개발도하며 동아리원들과 친분도쌓고 싶어서&nbsp;아트니어를 찾았습니다 !!', 36, 3, '', 1, '2019-03-16 (16:08)', '106.242.119.46'),
(67, 'ruddks', '박경안', '19학번 박경안입니다.', '-성명 : 박경안&nbsp;<br /><br />- 학과 : 컴퓨터소프트웨어공학과<br /><br />- 학번 : 20192755<br /><br />- 기수 : 3<br /><br />- 취미 : 게임<br /><br />- 특기 :&nbsp;<br /><br />- 개발경험 : 없습니다<br /><br />- 가입동기 : 첫날 동아리 회장님의 설명을 듣고 가입하고 싶어졌습니다<br /><br />- 자기소개 :&nbsp; 안녕하세요 신입생19학번 박경안입니다. 잘부탁드립니다.', 33, 3, '', 1, '2019-03-16 (18:50)', '106.242.123.64'),
(68, 'rhqudco1204', '고병채', '안녕하세요.', '- 성명 : 고병채<br /><br />- 학과 : 컴퓨터 소프트웨어공학과<br /><br />- 학번 : 20160873<br /><br />- 기수 : 3기<br /><br />- 취미 : 노래듣기<br /><br />- 특기 :&nbsp;<br /><br />- 개발경험 : 없습니다.<br /><br />- 가입동기 : 혼자 공부하기 어려워서 동아리를 찾던 중 소개받고 가입하게 됐습니다.<br /><br />- 자기소개 : 안녕하세요. 학번은 16이지만 2학년이고 전과했습니다. 잘부탁드립니다.', 38, 3, '', 1, '2019-03-28 (13:41)', '223.62.179.95'),
(69, 'scott9217', '김태원', '3기 김태원', '안녕하세요~&nbsp;<br /><br />- 성명 : 김태원<br /><br />- 학과 : 컴퓨터소프트웨어공학과<br /><br />- 학번 : 20161647<br /><br />- 기수 : 3기<br /><br />- 취미 : 책 읽기, 음악듣기, 맛집탐방<br /><br />- 특기 : 있는데 아직 잘모르겠습니다.<br /><br />- 개발경험 : 없습니다.<br /><br />- 가입동기 : 19학년도에 2학년으로 전과하게되었는데 공부도 배우고싶고 경험을 쌓고 싶어서 가입하게되었습니다!!<br /><br />- 자기소개 : 안녕하세요! 이번에 들어오게된 16학번 김태원입니다. 나이는 24살이고 이번년도에 군복학하고 2학년으로 전과해서 잘 모르는게 많지만 열심히 하겠습니다! 잘부탁드려여~&nbsp;', 31, 3, 'en03281120286.jpg', 1, '2019-03-28 (23:19)', '182.237.202.87');

-- --------------------------------------------------------

--
-- 테이블 구조 `member`
--

CREATE TABLE `member` (
  `no` int(11) NOT NULL,
  `id` varchar(15) NOT NULL,
  `pw` varchar(32) NOT NULL,
  `name` varchar(15) NOT NULL,
  `sex` char(6) DEFAULT NULL,
  `birth` char(12) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `email` char(50) DEFAULT NULL,
  `addr` varchar(40) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `regdate` char(20) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `member`
--

INSERT INTO `member` (`no`, `id`, `pw`, `name`, `sex`, `birth`, `tel`, `email`, `addr`, `year`, `level`, `regdate`, `ip`) VALUES
(1, 'artineer', '48d8f4b4ee8e31efacb6e0ade8efec8c', '관리자', 'male', '2018/05/08', '010-0000-0000', 'artineer@artineer.net', '원광대학교 공과대학 컴퓨터소프트웨어공학과', 0, 0, '2018-05-07 (17:06)', '112.173.139.59'),
(2, 'fusc0', 'b1bf2ae5c059bf0d8315e80bd49d1c57', '김성준', 'male', '1994/07/30', '010-2349-3021', 'fusc0@naver.com', '충남 보령시', 1, 0, '2018-05-07 (17:07)', '112.173.139.59'),
(3, 'yun', '5f1d65f27e370c36dfd845f6dc78b869', '윤기동', 'male', '1994/05/30', '010-6750-3708', 's2mos2@naver.com', '전북 익산시 신용동 358-2 대학원룸 305호', 1, 0, '2018-05-07 (23:43)', '125.138.24.53'),
(4, 'hueu4862', '4e7608f97af12ca7652c84eaa691204f', '김고은', 'female', '1994/08/17', '010-3356-1947', 'oooxx9633@naver.com', '전라북도 익산시 ', 1, 1, '2018-05-08 (10:45)', '110.70.51.2'),
(5, 'hh0630', '6cbb959f367ef910ba161febd2d6baf8', '황현', 'male', '1994/06/30', '010-7467-9632', 'hyun940630@naver.com', '전남 순천', 1, 0, '2018-05-08 (12:55)', '210.112.150.12'),
(6, 'tjddus', '74d2e5ea606845d99f1c4946755159f8', '이성연', 'male', '1994/04/03', '010-8774-5889', 'tmdwnstjddus@naver.com', '강남구', 1, 0, '2018-05-08 (16:37)', '210.112.150.148'),
(7, 'dhr05038', 'b0160dbc09bef99722ae199fe334cb9a', '김동만', 'male', '1998/04/08', '010-2112-4786', 'kdm980408@naver.com', '대전 중구 문화동', 2, 2, '2018-05-08 (17:46)', '223.39.146.236'),
(8, 'rlagytns00', '3062fff29783df3cfe04072390822590', '박준언', 'male', '1996/03/12', '010-6649-1181', 'rlagytns0209@naver.com', '서울특별시 중랑구 상봉동 듀오트리스아파트 a동 2303호', 2, 0, '2018-05-08 (17:49)', '223.39.152.66'),
(9, 'gkfka0588', 'a375df89cd034ad8fa0ee71794b85b6a', '최하람', 'male', '1998/01/06', '010-9801-5867', 'ChoeHaram@gmail.com', '전라북도 군산시 신풍3길24', 2, 1, '2018-05-08 (17:53)', '39.7.58.227'),
(10, 'alter0', '6c0bc553e701fd82a4b17f9df32083b9', '최재윤', 'male', '1998/08/02', '010-7704-0475', 'dev.alter0@gmail.com', '익산대로 68길 20', 1, 2, '2018-05-08 (22:58)', '118.43.154.208'),
(11, 'soclsrn11223', '248643f83db6bef0245b638116ddadea', '최조용', 'male', '1994/12/08', '010-5269-7619', 'soclsrn11223@naver.com', '인천광역시 서구 완정로 64번길 7 영남탑스빌아파트', 1, 2, '2018-05-09 (09:47)', '117.111.27.145'),
(12, 'dolto', 'e433fb2d849a89bc9dd7697693545720', '홍도완', 'male', '1999/08/10', '010-5542-6765', 'hdw80@naver.com', '전주시 완산구 안행1길 14', 2, 1, '2018-05-09 (09:59)', '210.112.150.24'),
(13, 'lio1996', '677c934f3bb899c374d1514ad9362b0b', '김학찬', 'male', '1996/05/21', '010-6698-2694', 'lio1996@naver.com', '전라북도 익산시 영등동', 2, 2, '2018-05-09 (10:00)', '210.112.150.24'),
(14, 'jsh0501', '0971a04597c188156d2056e7f7d2c646', '정승현', 'male', '1994/05/01', '010-7502-7989', 'vkdldjehr100@naver.com', '서울시 서대문구 대현동 혜우아파트 1601호', 2, 2, '2018-05-09 (10:02)', '39.7.54.213'),
(15, 'bbang419', '0985251f3d13076beec69aca778ea31f', '김주환', 'male', '1994/04/21', '010-9770-8741', 'bbang4193769@naver.com', '경기도 안산시 감골로 59', 1, 0, '2018-05-09 (10:20)', '175.223.22.192'),
(16, 'pospd1', '7b18b83832ec5ca94550241ffd6533fa', '양현규', 'male', '1999/10/11', '010-9494-2084', 'pospd1@naver.com', '전라북도 전주시 덕진구 석소로29', 2, 1, '2018-05-09 (10:55)', '210.112.150.24'),
(17, 'phcho0715', '324b58763bf434d1a02a2689530d70d5', '박세리', 'female', '1998/01/01', '010-2721-7315', 'phcho0715@naver.com', '전북 전주시 완산구 삼천천변 1길 32(남양아파트 104동1005호)', 1, 1, '2018-05-09 (11:03)', '210.112.150.24'),
(18, 'insu0202', '64a87c0ea58d7206cc995384bcce77d0', '정인수', 'male', '1999/02/02', '010-2332-0452', 'insu151004@naver.com', '익산 글로벌 교류 센터', 2, 2, '2018-05-09 (12:00)', '59.2.232.235'),
(19, 'hssh9199', 'e9acb85fbcc59ad83e895f390ce60ce9', '최산하', 'female', '1999/04/12', '010-3831-0385', 'tksgk0385@naver.com', '인천서구모월곶로41 아시아드로제비앙 101동1502호', 2, 2, '2018-05-09 (12:10)', '203.226.207.104'),
(20, 'bjkds72', 'dc99051f6873bceeacd544bd1f67f973', '김준혁', 'male', '1999/03/20', '010-2038-5616', 'bjkdssjun@naver.com', '전주시 덕진구 송천동 현대 3차 아파트 307동 1405호', 2, 2, '2018-05-09 (12:13)', '223.33.160.146'),
(21, 'xortl98', '62752265af85c03ba1049f0c189881b5', '한석호', 'male', '1998/11/28', '010-8536-6520', 'xortl98@naver.com', '익산시 궁동로 129 904동 1203호', 1, 2, '2018-05-09 (14:05)', '61.245.230.143'),
(22, 'wlghksdbs112', 'cab48c23a35cb53770f02f9337e9c66c', '윤지환', 'male', '1998/01/13', '010-8078-4488', 'ji7431@naver.com', '전주시 덕진구 송천동 한라비발디', 1, 2, '2018-05-09 (14:06)', '61.245.230.93'),
(23, 'hyun94091', 'befcb2fb1c634ccf25263465e74f8b1a', '신성현', 'male', '1994/09/16', '010-3707-3670', 'hyun94091@naver.com', '전북 익산시 동서로 195', 2, 1, '2018-05-09 (14:08)', '61.245.230.173'),
(24, 'o10325', '34a7eb11f1083890031ea705eae85e7d', '오수빈', 'female', '1998/10/09', '010-2013-4077', 'o10325@daum.net', '익산시 영등동 우남샘물타운 105-1118', 1, 1, '2018-05-09 (14:31)', '61.245.230.52'),
(25, 'leh2353', '409dfd7579849bfbf7067b44016317c1', '이은휴', 'female', '1999/04/23', '010-9203-6197', 'leh@naver.com', '전주시 완산구 황강서원 2길 4-10 행안빌 201호', 2, 0, '2018-05-09 (17:32)', '61.245.230.154'),
(26, 'hyeonji7423', 'ef3109f13d9ab7ab2cb0137de18dea61', '정현지', 'female', '1999/04/09', '010-7603-2690', 'guswl8507@naver.com', '전북 익산시 모현동 1가 배산로93 110동 603호 (배산에코르아파트)', 2, 0, '2018-05-09 (17:32)', '61.245.230.52'),
(27, 'kimsujin4291', '81dc9bdb52d04dc20036dbd8313ed055', '김수진', 'female', '1999/04/29', '010-5482-0429', 'kimsujin429@daum.net', '익산시 모현동', 1, 1, '2018-05-09 (17:35)', '61.245.230.170'),
(28, '1', '00abaa410e9bf5418e594821b3b93239', '안호성', 'male', '1998/09/02', '010-3363-4872', '98hhss@naver.com', '서울시 강남구 일원로 127 (101동 305호)', 2, 2, '2018-05-09 (17:41)', '14.63.122.223'),
(29, 'gkwhdtn73', '18765730800ecb0cadeba342fc93acbf', '하종수', 'male', '1998/12/26', '010-2530-0132', 'gkwhdtn73@naver.com', '남원시 오들1길 90 102-1403', 2, 2, '2018-05-10 (10:51)', '59.2.100.103'),
(30, 'jh9770', '4bf4b7334b7ab876d00f00b8c60414ea', '김주환', 'male', '1994/04/21', '010-9770-8741', 'bbang4193769@naver.com', '경기도 안산시 감골로 59 713-106', 1, 0, '2018-05-10 (18:28)', '61.245.232.111'),
(31, 'glwlsdl0326', 'a84048ae7c8316b6c84f92e9d2dd3d7c', '천희진', 'female', '1997/03/26', '010-3926-8646', 'glwlsdl0326@naver.com', '익산시 신동 힐링하우스 203호', 2, 1, '2018-05-11 (02:32)', '117.111.1.198'),
(32, 'dongin1009', 'd870620aa5c83b90d95aeab6249927da', '정동인', 'male', '1998/07/26', '010-9867-9864', 'dongin1009@naver.com', '전라북도 전주시 완산구 삼천동 세창짜임아파트 106동 1803호', 1, 0, '2018-05-11 (12:42)', '61.245.230.11'),
(33, 'suitos', '7620856d7e18eb8d76079f7824ed7e3d', '임채문', 'male', '1993/10/19', '010-3852-0778', 'suitos@naver.com', '전주시 덕진구 진북동 우성아파트 113/2003', 1, 2, '2018-05-11 (12:47)', '1.211.104.148'),
(34, 'warmyeol0987', '0b1f16d6453557a1db165a02991f5346', '유정은', 'female', '1999/05/29', '010-3484-2538', 'warmyeol0987@naver.com', '익산시 모현동 동신아파트', 2, 1, '2018-05-11 (13:00)', '59.2.225.70'),
(35, 'kongsai8', '953f3e249680b16c0bf3ae0c0360f4d5', '홍세연', 'female', '1998/08/13', '010-9670-4434', 'kongsai8@naver.com', '전주시완산구송정3길5-10', 1, 0, '2018-05-11 (13:01)', '211.36.144.128'),
(36, 'yujin6538', '80f09a5fa816b7d7da75631d4d7f8afe', '한유진', 'female', '1999/10/28', '010-6538-7412', 'yujin6538@naver.com', '궁동로129 902동1006호', 2, 1, '2018-05-11 (13:04)', '210.112.150.24'),
(37, 'dkfb22', '64e233afde9f6034fea8f127def2dbca', '박지강', 'male', '1998/09/22', '010-4657-9926', 'dkfb22@naver.com', '전주시 안행로175 103동402호', 2, 1, '2018-05-11 (13:12)', '210.112.150.24'),
(38, 'angel9944', 'f3c5a4e39d59c95963f0494ee08e1e49', '성하림', 'female', '1998/01/14', '010-9524-6254', 'halim1512@naver.com', '익산시 부송동', 2, 2, '2018-05-11 (13:54)', '211.230.210.56'),
(39, '20143426', 'd1636b1010af44c35b6a3d81483e01e8', '박호현', 'male', '1995/04/27', '010-3647-3054', 'adam1725@naver.com', '전주시', 2, 2, '2018-05-11 (14:06)', '110.70.58.199'),
(40, 'cd2301', '608298bb503732ccb64020daf5a9b610', '도준영', 'male', '1999/04/23', '010-5324-5301', 'ehwnsdud2301@naver.com', '서울시 강동구 천호1동', 2, 1, '2018-05-11 (14:06)', '39.7.15.211'),
(41, 'hmy0015', '7a4f0a75bd7a466ea7693416cf5076a9', '황민영', 'female', '1996/08/04', '010-3242-0693', 'hmk0015@naver.com', '전라북도 군산시 나운로39, 205동 701호', 2, 2, '2018-05-11 (15:37)', '121.154.244.5'),
(42, 'w030w58', '9d3c0713c9a31e9a4a193b04fe3ecfa5', '정희지', 'female', '1998/09/23', '010-3272-2895', 'w030w58@1', '익산시 신동 800-14 로뎀하우스', 1, 1, '2018-05-11 (16:08)', '175.208.61.1'),
(43, 'wk20152993', 'bce09683620aece7939615f8378abd76', '박채원', 'female', '1996/09/16', '010-2112-0204', 'uiuiaaa@naver.com', '전라북도 익산시 피렌체원룸', 1, 2, '2018-05-11 (17:42)', '223.39.140.86'),
(44, 'seohyun5265', 'd05dce2adc638f7ab06ed79d7fd275e4', '홍서현', 'female', '1998/11/28', '010-6641-3658', 'give2cat@naver.com', '전라북도 익산시 영등동 제일2차아파트 302동 801호', 2, 2, '2018-05-11 (21:57)', '220.124.59.193'),
(45, 'yoyu4256', '043214df8a95548ec987c5835ebf6707', '유세훈', 'male', '1999/03/02', '010-5065-1252', 'dbtpgns805@naver.com', '전주시 덕진구 붓내 3길 29', 2, 2, '2018-05-11 (21:59)', '223.39.139.81'),
(46, 'diwar2580', '0a705deaf2c2dce8d369c8c609d95d6f', '김채린', 'female', '1999/03/01', '010-6894-3379', 'dr2018@naver.com', '전라북도 전주시 덕진구 솔내 9길 7 102동 1505호', 2, 2, '2018-05-11 (22:09)', '110.70.14.108'),
(47, 's52025', 'ada82509154bb81d384e6fe82e1f430c', '이재범', 'male', '1998/02/10', '010-8940-8616', 's52025@naver.com', '익산시 동서로 13길 4', 1, 2, '2018-05-11 (22:16)', '110.70.54.209'),
(48, 'ostarry', 'a1e745260a8f44336c05df4176bc55a5', '오승택', 'male', '1998/07/28', '010-6372-9678', 'ostarry@naver.com', '경기도 광주시 초월읍 경충대로 1127번길 15', 2, 2, '2018-05-11 (22:31)', '222.236.209.156'),
(49, 'hoho0203', '1920858a4a95fef5cda6d86f1dc88ee7', '이광호', 'male', '1995/02/03', '010-7533-6144', 'hoho0203@gmail.com', '전라북도 전주시 완산구 서원로 272 오성은하아파트 1동 401호', 1, 2, '2018-05-11 (22:56)', '110.13.187.208'),
(50, 'lillylilly99', 'd652d7285c5cbe9fe7331ef3466ea980', '김이연', 'female', '1999/05/31', '010-8445-6818', 'lovelyrachel99@naver.com', '전라북도 군산시', 2, 2, '2018-05-11 (23:12)', '122.36.7.60'),
(51, 'gustn0731', '71fb644084351860e493b2a56fc69971', '정현수', 'female', '1997/07/31', '010-8191-6004', 'gustn2022@naver.com', '광주광역시 북구 문산로 30, 205동 209호', 1, 1, '2018-05-12 (03:23)', '106.242.120.182'),
(52, 'pmk1052', '4f19e1f8a38ff7e7821d8369dc1f8049', '박민경', 'female', '2000/01/13', '010-2245-7863', 'pmk7808@naver.com', '광주광역시 서구 풍암순환로54 104-404', 2, 1, '2018-05-12 (17:29)', '114.201.11.152'),
(53, 'mcd369', '6fe0ffd6a43af04e8037dbb1058df158', '김정환', 'male', '1999/04/04', '010-4739-1308', 'mcd369@naver.com', '전북 익산시 동서로9길 31', 2, 2, '2018-05-13 (19:29)', '175.223.26.148'),
(54, 'kjh9765', '58df2e8bc8cedca24aeacb7252a39156', '전재훈', 'male', '1995/10/25', '010-5664-9765', '05630563k@naver.com', '익산시', 2, 2, '2018-05-21 (10:29)', '210.112.150.142'),
(55, 'jeje1004jeje', 'c562fb643bb44d8bd11327144d0a279f', '이지은', 'female', '1996/03/13', '010-8205-8043', 'jeje1004jeje@naver.com', '대전광역시 유성구 배울1로 13 208동 1004호', 1, 2, '2018-05-28 (17:41)', '1.211.104.224'),
(56, 'wso4989', '2d5065bd75330a62f55ef9891cd7a52d', '강재민', 'male', '1999/04/20', '010-7765-6735', 'wso4989@naver.com', '서울특별시 양천구 신정동 신정이펜하우스4단지 406동 403호', 2, 2, '2018-05-28 (17:43)', '210.112.150.24'),
(57, 'ksj0530', 'caeb7a4b388c08cce2b299287b02ba7c', '김수진', 'female', '1999/05/30', '010-5535-5382', 'rlatnwls0530@naver.com', '대전 대덕구 비래동로 15번길 30', 2, 2, '2018-05-28 (17:45)', '210.112.150.24'),
(58, 'cja2031', 'ce3bd5bfb730c39e229d6d52fe43f8f3', '최진아', 'female', '1999/01/29', '010-2031-2286', 'cja2031@naver.com', '전라남도 목포시 옥암동 제일3차 301동 906호', 2, 2, '2018-05-28 (17:46)', '210.112.150.24'),
(59, 'tpgml944', '02b46803002b7ae00c33561f66a2346b', '임세희', 'female', '1998/08/17', '010-9093-7189', 'tpgml@naver.com', '광주광역시 광산구 운남동 ', 2, 1, '2018-05-30 (14:38)', '210.112.150.143'),
(60, 'dbalsk99', '4288e9d190bbc3430c733bc35f7ff13a', '유미나', 'female', '1998/02/13', '010-4142-0689', 'saei5455@naver.com', '전북익산시 ', 1, 2, '2018-05-30 (14:46)', '210.112.150.143'),
(61, 'jjc9090', '62fee29bb42306de4d2c9dbfc1d7cd61', '정시윤', 'female', '1998/07/22', '010-3868-4357', 'jjc9090@naver.com', '전라북도 익산시 동서로 63길 25', 1, 2, '2018-05-30 (14:48)', '210.112.150.24'),
(62, 'ij5581', 'b59c67bf196a4758191e42f76670ceba', '전인학', 'male', '1997/03/17', '010-2079-3502', 'ij3512@naver.com', '서울', 2, 2, '2018-05-30 (19:03)', '203.226.208.164'),
(63, 'drager93', 'd8a51b1deece22c95a7eed78f3c36e4e', '이동욱', 'male', '1993/12/13', '010-2866-0903', 'drager93@naver.com', '전북익산시모현현대6차 406동505호', 1, 2, '2018-10-05 (15:19)', '118.129.135.60'),
(64, 'tmdtlss131', 'f8d4839d352fa5b2ba097c90430ec64c', '유승진', 'male', '1994/07/20', '010-3587-5756', 'tmdtlss131@naver.com', '전라북도 익산시 신동 743-44', 1, 2, '2018-10-19 (11:07)', '175.208.53.33'),
(65, 'sujjin29', '925329a1d703a6b07016ed7d8d8a1cfb', '김수진', 'male', '1999/04/29', '010-5482-0429', 'sujjin29@gmail.com', '익산시 모현동', 2, 1, '2018-10-23 (19:04)', '211.187.248.89'),
(66, 'wogsn676', '4717ae221ce4185a615569aa77d1d04c', '최재훈', 'male', '1999/05/12', '010-4082-9348', 'peruse3005@naver.com', '서울특별시 양천구 신월동 22-2', 2, 2, '2018-10-25 (17:32)', '223.62.222.91'),
(67, 'ciin1411', '4ea6790d1872c5d04730015901aef871', '이동훈', 'male', '1999/09/21', '010-3005-1831', 'ciin1411@naver.com', '서울특별시 성북구 안암동 5가 12-64', 2, 2, '2018-10-31 (15:00)', '210.112.150.172'),
(68, 'jubin0609', '7a34d58714a12fc1de727ae4f95d54eb', '이주빈', 'female', '1998/06/09', '010-8626-7037', 'jubin0609@naver.com', '부산광역시 북구 화명신도시로 219', 2, 2, '2018-12-16 (18:06)', '39.113.45.118'),
(69, 'jshee0114', 'af164a40799be0b46aef8a9d04c19188', '정송희', 'female', '1999/01/14', '010-6844-3211', 'dhkdlsfpem@naver.com', '충청남도 부여군 남면 마정로23번길 24-3', 3, 1, '2019-03-06 (20:22)', '211.230.133.2'),
(70, 'careea', 'b744ae1e93e6ceeecfaf26796389bfe2', '조예리', 'female', '1999/05/01', '010-4032-1657', 'djaak9114@naver.com', '전라북도 익산시 황등면 황등3길 15', 3, 1, '2019-03-06 (20:22)', '121.154.158.196'),
(71, 'yg8162', '3eb0d4bd71b885c7e3cf6636e646be73', '이연경', 'female', '2000/02/15', '010-9042-2159', 'yg8162@naver.com', '전주시 완산구 서신동 온고을로121 102동 205호', 3, 1, '2019-03-09 (23:53)', '125.191.166.209'),
(72, 'bluecat', 'f4691d0036b441acab8b79bae8f83da9', '김예린', 'female', '2000/11/17', '010-3295-0181', 'doggydoggyoh@naver.com', '전주시 덕진구 송천동 에코시티 데시앙 7블럭', 3, 1, '2019-03-12 (19:33)', '210.112.150.12'),
(73, 'bluedog', '74d6f4f122b4e731d1484fbd92a7f74e', '소혜민', 'female', '2000/04/26', '010-5032-7760', 'shm8201@naver.com', '전라북도 익산시 부송동 주공 9차 901동 1404호', 3, 1, '2019-03-12 (19:45)', '210.112.150.12'),
(74, 'pms9158', 'b15c78a1fa5b631ce8516156bb45dc92', '박명수', 'male', '2000/06/11', '010-8618-9158', 'wol99313@naver.com', '전주시 덕진구 금암2동 1598-5', 3, 1, '2019-03-12 (20:48)', '175.208.93.252'),
(75, 'alsur0327', '7f4cdc31fbd5e9e77c61b4c6ecf116f1', '김민혁', 'male', '2000/03/27', '010-8641-2823', 'alsgur0327@naver.com', '울산 중구 학성동 432-352 모아시티 706호', 3, 1, '2019-03-12 (20:59)', '106.242.122.92'),
(76, 'asdyddnjs00', '5dfe90045dc9a6a1b9094d528715baa1', '조용원', 'male', '2000/10/10', '010-8467-0411', '10as10@naver.com', '군산시 지곡동 쌍용예가 104/1002', 3, 1, '2019-03-12 (21:00)', '110.8.74.201'),
(77, 'nkh3122', '26a17b5f25adede2c95606357f0679a8', '노국환', 'male', '2000/03/23', '010-7196-3122', 'nkh3122@naver.com', '익산시 모현동 주공아파트 218/311', 3, 1, '2019-03-12 (21:03)', '59.2.238.198'),
(78, 'mingi6777 ', 'd02fc9f69c75d04bc18814bda6701bdd', '장민기', 'male', '2000/03/03', '010-2503-6777', 'mingi6777 @gmail.com', '전라북도 익산시 신동 792-11 빅스타 202호 ', 2, 1, '2019-03-12 (21:09)', '218.151.23.48'),
(79, 'cjy1234567', '28eda8e3c0602321e64f467b698862c2', '최익준', 'male', '1999/03/29', '010-3371-4968', 'mincraft123@naver.com', '전주시 완산구 삼천동 삼천하이츠 102동 403호', 3, 1, '2019-03-12 (21:10)', '220.124.149.174'),
(80, 'chsmin0509', '25d901560c3991479c677c23d0c8f97f', '천승민', 'male', '1999/05/09', '010-7797-9148', 'chsmin0509@naver.com', 'chsmin0509', 3, 1, '2019-03-12 (21:14)', '106.242.119.107'),
(81, '07153', '751c54c6ba2e45ad77b0864a773ea505', '황종민', 'male', '2000/06/22', '010-8563-5875', 'jongmin1001@naver.com @naver.com', '전라북도 익산시 모현동2가 241-11 샤인빌리지 404호', 3, 1, '2019-03-12 (21:16)', '222.105.6.168'),
(82, 'ehdus9999', '17bc5bcd1142083ad6d02fec6b9b2bd2', '김도연', 'male', '1998/02/24', '010-5879-2402', 'ehdus9999@naver.com', '전북 익산시 배산로14길 9', 3, 1, '2019-03-12 (21:18)', '118.221.152.22'),
(83, 'dbsrlf00', 'fb333b32c926c52c78cbaa329a50d97e', '최윤길', 'male', '2000/09/19', '010-4917-9296', 'dbsrlf00@naver.com', '전라남도 영암군 영암읍', 3, 1, '2019-03-12 (21:32)', '223.39.150.97'),
(84, 'seven1033', 'f1743d4376bf0894f6319e601cd234dc', '박성영', 'male', '2000/07/03', '010-2672-9086', 'seven1033@naver.com', '경기도 용인시  수지구  현암로3  아이뷰104동   203호', 3, 1, '2019-03-12 (21:37)', '106.242.124.173'),
(85, 'shjun0660', '4ce398b5f91d3d2b394c497c99792d8b', '심형준', 'male', '2000/03/25', '010-9903-7164', 'shjun0325@naver.com', '인천시 서구 검단로 788 203동 1402호', 3, 1, '2019-03-12 (22:00)', '106.242.124.162'),
(86, 'parkhw369', '448789dade4b127a8a9e5cac99ba878d', '박천주', 'male', '2000/12/06', '010-4705-7180', 'parkhw369@gmail.com', '전라북도 무주군 설천면 상평지길 44-8', 3, 1, '2019-03-12 (22:24)', '182.231.161.154'),
(87, 'c1004sos', '005d0bfa42b856fd2addf95647c9a516', '전준영', 'male', '2000/06/22', '010-8369-4600', 'c1004sos@naver.com', '전라북도 익산시 부송1로 83, 동신아파트 104동 607호', 3, 1, '2019-03-12 (23:05)', '125.182.24.139'),
(88, 'osh3931', 'b23d2009cd6142da4c50f57593ec683a', '오현식', 'male', '2000/08/25', '010-6481-3123', 'osh3123@naver.com', '원광대학교 보은관', 3, 2, '2019-03-13 (11:59)', '223.39.150.66'),
(89, 'merick123', '8a81153791bae3441772846161b5a9b8', '전민수', 'male', '2000/04/27', '010-2166-4612', 'merick123@naver.com', '경기도 김포시 고촌읍 장차로 25 길훈아파트 1차 101동 907호', 3, 1, '2019-03-13 (12:06)', '210.112.150.24'),
(90, 'qg1422', '363598b497763954a3c8e219685c9567', '최지원', 'female', '1998/06/11', '010-6405-3830', 'qg1422@naver.com', '전북 군산시 수송동 제일아파트 102동 1812호', 3, 1, '2019-03-13 (12:11)', '223.62.190.65'),
(91, 'ms4754', 'bc055bbe573a29e0355c388953d5ab6a', '문승민', 'male', '2000/12/28', '010-9349-4754', 'msm4754@naver.com', '인천광역시 강화군 강화읍 신문리 627-5', 3, 1, '2019-03-13 (12:26)', '106.242.122.187'),
(92, 'mmm0695', 'da8d94f1ad2858a05ffab3dca9cddb95', '이민기', 'male', '2000/03/23', '010-4455-0695', 'mmm0695@naver.com', '충남 보령시 대천동 동부아파트 104/902', 3, 1, '2019-03-13 (13:41)', '175.223.45.85'),
(93, 'wnsgh1259', '12f0423fda6336ea112b306397bf3737', '김준호', 'male', '2000/11/15', '010-2533-3787', 'wnsgh1259@naver.com', '인천 강화군 불은면 710번지 도로명: 고능로 333', 3, 1, '2019-03-13 (13:53)', '175.223.20.200'),
(94, 'chan091955', '1c23f2a4b6fafd879acfd1fab28ab720', '윤찬영', 'male', '2000/09/19', '010-6616-9155', 'hehe091955@gmail.com', '인천광역시 남동구 정각로 14, 8층 804호 (구월동, 가온누리)', 3, 1, '2019-03-13 (13:54)', '175.223.34.91'),
(95, 'seungwon2020', '4e44c297c78b7acac0c25172c2f5fa04', '정승원', 'male', '2000/11/10', '010-3005-6992', 'seungwon2020@1', '인천광역시 중구 운서동 신도시북로 18, 701동 604호', 3, 1, '2019-03-13 (13:54)', '175.223.22.195'),
(96, 'duck3822', 'b1e9e1f7442ae47d61b10543b507bb49', '국덕현', 'male', '2000/04/15', '010-2430-3822', 'duck3822@naver.com', '하나로 10길 25 주공7차아파트 703동 1203호', 3, 1, '2019-03-13 (14:16)', '223.39.130.47'),
(97, 'playgm1', '2eb0714585f286080badd9be51e961ee', '박재연', 'male', '2000/12/22', '010-2429-7492', 'playgm1@naver.com', '익산시 영등동 제일3차 502동 308호', 3, 1, '2019-03-13 (14:28)', '211.36.140.221'),
(98, 'zartineer', '25680b5ad512eb100cc66cbb8e79eaf6', '이지원', 'male', '1995/08/22', '010-6503-6763', 'michinsin7@naver.com', '익산', 3, 1, '2019-03-13 (19:03)', '211.225.119.19'),
(99, 'alsgur0327', '7f4cdc31fbd5e9e77c61b4c6ecf116f1', '김민혁', 'male', '2000/03/27', '010-8641-2823', 'alsgur0327@naver.com', ' 울산 중구 학성동 432-352 모아시티 706호', 3, 1, '2019-03-13 (19:04)', '106.242.122.92'),
(100, 'ironman1024', '1ad7e3f8ca6f1cfdacf2984b39a0b2ca', '심보경', 'female', '1999/10/24', '010-6407-5951', 'ironman1024@naver.com', '전북 전주시 완산구 유연로 217', 3, 1, '2019-03-13 (19:33)', '211.213.84.81'),
(101, '20192820', 'c6f1477e22975da3a3d8fd479e0e192d', '조승현', 'male', '2000/04/14', '010-3488-3619', 'togh4977@naver.com', '전라남도 목포시 당가두로13번길9 부영애시앙 101동 1702호', 3, 1, '2019-03-14 (17:52)', '106.242.122.109'),
(102, 'tempch44', '30cb81cdab1b7fea2c7dd750021cd3c7', '박치현', 'male', '2000/12/09', '010-9935-1380', 'carryon44@daum.net', '익산 신동 에빈에셀208', 3, 1, '2019-03-14 (22:01)', '219.240.242.77'),
(103, 'ruddks', '467608ae97e677153e524e1b7b6cbefa', '박경안', 'male', '2000/05/09', '010-7523-4495', 'star_ruddks@naver.com', '.', 3, 1, '2019-03-15 (17:04)', '123.212.249.215'),
(104, 'zz730127', 'e0efc47dbd02119d62260e278e41741e', '김현', 'male', '2000/03/01', '010-3930-1438', 'zz000301@naver.com', '광주 북구 양산동 일신아파트202동1309호', 3, 1, '2019-03-16 (15:27)', '211.36.140.188'),
(105, 'sungwon1104', '1897a69ef451f0991bb85c6e7c35aa31', '유성원', 'male', '1994/11/04', '010-8403-9220', 'ysw1596@gmail.com', '신동 784-13, 하이빌 102호', 3, 1, '2019-03-26 (16:41)', '210.112.150.173'),
(106, 'rhqudco1204', 'e4af534d0099da2ea724958f1a870e56', '고병채', 'male', '1998/02/01', '010-8412-4459', 'rhqudco1204@naver.com', '군산시 번영로 237-1 302호', 3, 1, '2019-03-28 (13:21)', '223.62.179.95'),
(107, 'scott9217', '0f09042c288a829944a18f379630bd22', '김태원', 'male', '1996/09/14', '010-4043-9217', 'kimtae9217@gmail.com', '익산시 영등동 고봉로24길 18', 3, 1, '2019-03-28 (22:53)', '182.237.202.87'),
(108, 'tmdwnstjddus', '81b44e1ad930ab5b6ce282e3107bba74', '이성연', 'male', '1994/04/03', '010-8774-5889', 'tmdwnstjddus@naver.com', '서울', 1, 2, '2019-04-05 (18:01)', '211.197.18.247'),
(109, 'jhs970228', '9f05eadc5d2347c1a9be5c54cd8e70af', '정현승', 'male', '1997/02/28', '010-4924-7867', 'jhs970228@naver.com', '서울시 노원구 중계동 브라운스톤', 3, 2, '2019-04-21 (15:49)', '125.187.156.242'),
(110, 'skgml977', '3093dd4d20d0829db22663b8ed7b759b', '김나희', 'female', '1996/03/16', '010-6572-4745', 'bbee@naver.com', '서울강남구세곡동', 2, 2, '2019-04-23 (12:52)', '211.106.99.49'),
(111, 'chm220', 'c9a2522fb2cf04b8860a0e321767f721', '조현민', 'male', '1998/02/20', '010-8953-8959', 'chm220@naver.com', '전라북도 익산시 영등동', 3, 2, '2019-05-30 (17:43)', '210.112.150.172'),
(112, 'kimms9710', '4c344b7ed91ca7d9f1a7bff1db5b5fc8', '김민성', 'male', '1997/11/11', '010-2872-1059', 'alstjd4891@naver.com', '전주', 2, 2, '2019-05-30 (17:44)', '210.112.150.172');

-- --------------------------------------------------------

--
-- 테이블 구조 `minutes`
--

CREATE TABLE `minutes` (
  `no` int(11) NOT NULL,
  `id` char(15) DEFAULT NULL,
  `name` char(15) DEFAULT NULL,
  `subject` char(150) DEFAULT NULL,
  `story` text,
  `hit` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `file` char(100) DEFAULT NULL,
  `comment` int(11) NOT NULL,
  `regdate` char(20) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `minutes`
--

INSERT INTO `minutes` (`no`, `id`, `name`, `subject`, `story`, `hit`, `year`, `file`, `comment`, `regdate`, `ip`) VALUES
(1, 'yun', '윤기동', '2018년 2학기 6주차 회의', '<p style=\"margin-left: 40px;\">1.&nbsp; 보강으로 인한 강의 프로젝트 시간대 변경</p><p style=\"margin-left: 40px;\">- 현재 10월달에 많은 휴일 때문에 교수님들이 많이 잡고 계십니다. 이로 인해 10월달에 아티니어 강의 프로젝트가</p><p style=\"margin-left: 40px;\">전산실 사용이 어렵게 되었습니다. 현재 개선방안을 찾고 있는데 기초실습실 그리고 안된다면 1주 정도의 이론 수업을</p><p style=\"margin-left: 40px;\">계획 하고 있습니다. 담당 교수님과 이야기하여 최대한 빠르게 개선 방안 공지하겠습니다.</p><p style=\"margin-left: 40px;\"><br></p><p style=\"margin-left: 40px;\">2. 많은 휴일로 인한 강의 시간대 변경</p><p style=\"margin-left: 40px;\">- 위와 마찬가지로 우리 강좌들 중 웹 강좌와 매크로 강좌는 수업을 진행하지 못했습니다. 추가적으로 웹 강좌는 이번주, 그리고 다음주부터는 시험기간에 들어가기 때문에 강의 시간대를 변경해야할 필요성이 있습니다. 부회장 동인이가 구체적인 시간대를 수강생들과 협의하여 단톡으로 공지하려고 합니다.</p><p style=\"margin-left: 40px;\"><br></p><p style=\"margin-left: 40px;\">3. 공대 안내도 프로젝트</p><p style=\"margin-left: 40px;\">- 현재 공대 학과장님의 제안으로 아티니어에서 공대 안내도를 디지털화 하는 작업을 진행하고 있습니다. 좋은 결과를 냈을 경우 우리 아티니어를 더 널리 알리는 기회가 될수 있어서 교수님의 제안을 받았습니다! 이를 위해 열심히 노력하고 있는 김성준, 황현, 정동인 친구를 응원해주세요!</p><p style=\"margin-left: 40px;\"><br></p><p style=\"margin-left: 40px;\">4. 회비 미납자 분들은 회비 납부해 주세요!</p><p style=\"margin-left: 40px;\">- 현재 대부분의 인원이 회비를 납부했으나 소수가 아직 그렇지 못한 상황입니다! 빠른 일처리는 회장을 도와주는 길입니다!</p><p style=\"margin-left: 40px;\">전북은행 1021013787848 계좌로 2만원 보내주시면 감사하겠습니다.</p><p style=\"margin-left: 40px;\"><br></p><p style=\"margin-left: 40px;\"><span style=\"font-size: 11pt; color: rgb(255, 0, 0);\"><b>5. 다음주 수요일에 아티니어 회의 진행</b></span></p><p style=\"margin-left: 40px;\">- 이번주 회의는 여러 이유로 인해 많은 인원이 참석하지 못했습니다. 그래서 오랜 기간 회의를 하지 못하게 되어 다음주 수요일에는 회의를 진행하려고 합니다! 이 공지 꼭 필독 해주시고 의견은 개인톡으로 보내주세요!</p><p style=\"margin-left: 40px;\"><br></p><p style=\"margin-left: 40px;\">6. 앞으로의 멘토멘티 프로젝트는 특별한 일이 아니면 회의 끝나고 진행합니다.</p><p style=\"margin-left: 40px;\">- 많은 인원이 멘토멘티를 위해 별도로 시간을 내는 것이 어렵다는 걸 확인했습니다. 다들 그만큼 바쁘게 사시는게 좋게 느껴집니다! 여하튼 이로인해 멘토멘티에 특별한 이벤트가 없을 경우 회의 끝나고 진행하도록 하겠습니다.</p>', 82, 1, '', 0, '2018-10-02 (21:25)', '220.124.170.210'),
(2, 'kongsai8', '홍세연', '18년 10월 4주차 회의', '※ 카카오톡으로 mt날짜투표가 진행중이니 전원 투표 부탁드립니다<br />\r\n참석인원(13/24)<br />\r\n■ mt<br />\r\n- 장소 : 전북 부안 확정<br />\r\n- 날짜 : 투표중<br />\r\n- 비용 : 미정 (날짜 확정 및 인원 조사 후 비용책정)<br />\r\n- 교통 : 대중교통 or 랜트카<br />\r\n□ 미참석자 :\r\n\r\n', 69, 1, '', 0, '2018-10-25 (16:42)', '211.36.145.5'),
(3, 'kongsai8', '홍세연', '18년 10월 5주차 회의', '집가서 수정할게용', 73, 1, 'vu10300955503.jpg', 0, '2018-10-30 (21:55)', '117.111.13.235'),
(4, 'kongsai8', '홍세연', '18년 11월 3주차 회의', 'ㆍ', 80, 1, 'uf11150922548.jpg', 0, '2018-11-15 (21:22)', '117.111.14.135'),
(5, 'leh2353', '이은휴', '3월 11일 회의록', '1. 회의 시간<br />회의 시간은 매주 월요일 9,10 교시로 정해졌습니다.<br /><br />2. 강의 시간<br />C언어 : 화 7,8 목 9,10교시<br />리눅스 : 월요일 회의 끝나고<br />Java : 수 5,6교시<br />유니티 : 금 7,8교시<br /><br />3. 강좌 인원 추가 모집<br />강좌 대상 인원이 추가될 예정입니다. 강좌를 하시는 분들은 참고해 주시길 바랍니다.<br /><br />4. 회비<br />회비는 기본 3만원이며, 회식에 불참하시는 분은 2만원입니다.<br />단톡에 있는 계좌번호로 한분도 빠짐없이 보내주시길 바랍니다.<br /><br />5. 공지사항<br />공지사항 및 회의 내용은 카톡방에 링크로 전달 될 예정이며 전달이 잘 되었는지 파악하기 위해 공지 확인 댓글을 남겨주시기 바랍니다.<br /><br />6. 회의 및 회식<br />다음주 월요일(3/18)부터 매주 월요일에 회의가 이뤄질 예정입니다. 회식이 있기 전에 회의가 먼저 이루어질 예정이니 유의하시고 회의에 늦지 않게 참여해 주시길 바랍니다.<br /><br />7.회의 및 강의시간 정리<br />첨부파일 한번씩 열어봐 주시면 감사할것 같습니다.', 84, 2, 'tk03140846364.hwp', 0, '2019-03-14 (20:37)', '222.236.193.139'),
(6, 'hyeonji7423', '정현지', '3월 25일 회의록', '1. 스터디그룹<br />&nbsp;- 스터디 그룹은 지난 회의으 결과에 따라 각 강의별로 진행하기로 했습니다. 강의를 진행하시는 분들은 회의 후에 있을 스터디 시간에 스터디를 진행할 수 있도록 미리 준비 부탁드립니다.<br />&nbsp;스터디는 기존에 있던 IT 상식 전달 시간에 진행 될 예정이며 다음주 부터는 회의를 빨리 진행하고 스터디 하는 시간을 가지겠습니다.&nbsp;<br /><br />2. 구글 머신러닝 스터디잼완료 및 티셔츠 증정<br />&nbsp;- 지난 방학에 있던 구글 머신러닝 스터디잼을 완료하여 구글로부터 기념품(?)을 받았습니다. 방학 중이라 1학년 학생들은 진행 할 수 없었지만 이런 프로그램이 매 달 진행되는 것으로 알고 있으니 앞으로의 프로젝트에 많은 참여 부탁드립니다.<br /><br />3. 구글 클라우드 스터디잼 진행<br />- 현재 진행중인 구글 클라우드 스터디잼 중급반의 만료일은 &#39;4월 1일&#39; 입니다. 늦지 않게 서둘러 마무리 해주시기 바랍니다.&nbsp;<br /><br />5. 회식 회비 정산<br />&nbsp;- 지난 18일에 있던 회식에 대한 비용은 파일을 통해 자세히 공지하도록 하겠습니다. 또한 정해진 기간이 아니더라도 궁금하실 경우 문의 주시면 언제나 정산이 가능합니다.&nbsp;<br />&nbsp;', 24, 2, '', 0, '2019-03-30 (21:55)', '123.212.249.215'),
(7, 'hyeonji7423', '정현지', '4월 1일 회의록', '1. 새로운 회원 소개<br />2. 강의 무단으로 2회 이상 빠질경우 W-point 수여 불가<br />3. 구글 클라우드 4/1 마감입니다. 혹시 끝내지 않은 사람은 서둘러 마무리<br />4. 구글 머신러닝 스터디잼 NEW!!&nbsp;<br />&nbsp; &nbsp;- 기존 멤버들 뿐만 아니라 신입생 참여 독려<br />&nbsp; &nbsp;- 카카오톡에 이름/ 이메일 주소 / 본인명의의 카드 있는지(신용카드 or 체크카드) 전송<br />&nbsp; &nbsp; &nbsp;=&gt; 메일 주소를 반.드.시. 확인 부탁드립니다.<br />5. MT<br />&nbsp; &nbsp;- 중간고사 직후 바로. 4월 26-27일 1박 2일간 진행 예정<br />&nbsp; &nbsp;- 어디로 갈건지는 카카오톡 투표를 통해 결정<br />&nbsp; &nbsp;<br /><br />MT 장소 후보<br />1. 부안 임해수련원<br />2. 대천 펜션<br />3. 고창 힐링카운터 (신입생 MT 갔던 곳)<br />4. 익산부근(쟉년에 갔던 곳)<br /><br />부안, 대천, 고창 =&gt; 버스를 빌려서 가야해서 교통비가 많이 든다.(버스 45인승 대절)<br /><br />익산부근 =&gt; 버스를 타고 이동이 가능하므로 팀을 나눠서 이동이 가능하다. (교통비 왕복 2800원) / 인원이 너무 많으면 차대절이 편할 수 있음..<br /><br />6. 월요일에 진행되는 회의에 불참할 경우 미리 회장 또는 부회장에게 연락 바랍니다.<br />&nbsp;', 68, 2, '', 0, '2019-04-01 (23:05)', '123.212.249.215'),
(8, 'hyeonji7423', '정현지', '4월 8일 회의록', '<ol>\r\n	<li>다음주(시험기간 1주 전)에는 회의 진행되지 않을 예정입니다. 시험 잘 보고 중간고사 이후 4월 29일에 회의 진행하겠습니다.</li>\r\n	<li>다음주에는 각 과목별 수업이 진행되지 않을 예정입니다. 강의하시는 분들은 이 점 유의하여 유연하게 수업 시간 맞춰주시기 바랍니다.</li>\r\n	<li>구글 머신러닝 스터디잼 중급반의 퀵랩 등록은 4월 10일까지입니다. 늦지 않게 등록해주시길 바랍니다.</li>\r\n	<li>엠티 날짜가 변동되었습니다. 4월 26-27 예정이던 엠티를 시간상 여유가 되지 않아 2학기 초로 변경하게 되었습니다.</li>\r\n	<li>벚꽃사진이 활동사진에 업로드 되었습니다.</li>\r\n</ol>\r\n<br />&nbsp;', 22, 2, '', 0, '2019-04-13 (00:12)', '123.212.249.215'),
(9, 'leh2353', '이은휴', '5월 8일 회의록', '<span style=\"font-family:함초롬바탕\">1. 동아리 방이 생겼으니 많은 이용 바랍니다</span>.<br />2. 3 OUT <span style=\"font-family:함초롬바탕\">제도를 이용하여 무단으로 </span>3<span style=\"font-family:함초롬바탕\">번 불참시 개인 면담 후 퇴출이니 </span><span style=\"font-family:함초롬바탕\">숙지 바랍니다</span>.<br /><span style=\"font-family:함초롬바탕\">&nbsp;&nbsp;&nbsp; 오시지 못하시는 분들은 회장님이나 부 회장님께 연락 주셔야 합니다</span>.<br /><span style=\"font-family:함초롬바탕\">&nbsp;&nbsp;&nbsp;&nbsp;이번 학기에는 </span>1<span style=\"font-family:함초롬바탕\">번 무단 불참하시면 개인 면담 후 퇴출하겠습니다</span>.<br /><span style=\"font-family:함초롬바탕\">3. 지각 자제 해 주시길 바랍니다</span>.', 7, 2, '', 0, '2019-05-08 (10:48)', '210.112.150.40'),
(10, 'leh2353', '이은휴', '5월 13일 회의록', '1. 회식<br /><span style=\"font-family:함초롬바탕\">약 </span>2~3<span style=\"font-family:함초롬바탕\">주 간격으로 한 번씩 진행하도록 하겠습니다</span>.<br /><span style=\"font-family:함초롬바탕\">2. 클라우드 심화반 신청</span><br /><span style=\"font-family:함초롬바탕\">3. 동아리 방</span><br /><span style=\"font-family:함초롬바탕\">비밀번호는 단톡에 공지되어 있으니 숙지 부탁드립니다</span>!!<br /><span style=\"font-family:함초롬바탕\">출 입시 문을 잘 닫고 다녀 주시길 바랍니다</span>!!<br />&nbsp;', 9, 2, '', 0, '2019-05-14 (21:40)', '222.236.193.139'),
(11, 'hyeonji7423', '정현지', '5월 20일 회의록', '<ol>\r\n	<li>구글 스터디잼 심화반 마감이 6월 5일까지 입니다. 시험기간이 겹쳐있으니 서둘러서 마무리 해주세요.</li>\r\n	<li>동아리방에 비치될 물건들은 교수님, 다른 동아리 회장님들과 상의 후 결정 예정입니다.</li>\r\n	<li>강의 출석률이 점점 저조해지고 있습니다. 2회 이상 무단결석일 경우 W-point가 지급되지 않으니 유의해주시고 참석 부탁드립니다.</li>\r\n</ol>\r\n', 9, 2, '', 0, '2019-05-28 (12:32)', '123.212.249.215'),
(12, 'hyeonji7423', '정현지', '5월 27일 회의록', '<ol>\r\n	<li>동아리방 청소가 있습니다. 이번 주는 저희 동아리가 맡고 다른 주에는 다른 동아리에서 청소 예정입니다. 더불어 다음 학기에 있을 동아리방 청소는 조를 정해서 진행할 예정입니다.</li>\r\n	<li>회비 사용내역 등의 파일 정리단계입니다. 정리 마무리하고 추후에 회비 납부 및 회븨 사용내역 등&nbsp;공지하겠습니다.</li>\r\n	<li>1학기 때 진행되지 못한 MT는 2학기에 진행될 예정입니다. 날짜는 개강 후 1~2주 내에 이루어질 것이므로 미리 시간 비워주시길 바랍니다. 또한 MT진행사항 등은 방학중에 임원진들이 회의를 거쳐서 단톡방을 통해서 공지드리도록 하겠습니다.</li>\r\n</ol>\r\n', 11, 2, '', 0, '2019-05-28 (12:35)', '123.212.249.215');

-- --------------------------------------------------------

--
-- 테이블 구조 `note`
--

CREATE TABLE `note` (
  `no` int(11) NOT NULL,
  `name` varchar(15) NOT NULL,
  `pw` varchar(32) NOT NULL,
  `memo` text NOT NULL,
  `regdate` varchar(20) NOT NULL,
  `ip` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- 테이블 구조 `notice`
--

CREATE TABLE `notice` (
  `no` int(11) NOT NULL,
  `id` char(15) DEFAULT NULL,
  `name` char(15) DEFAULT NULL,
  `subject` char(150) DEFAULT NULL,
  `story` text,
  `hit` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `file` char(100) DEFAULT NULL,
  `comment` int(11) NOT NULL,
  `regdate` char(20) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `notice`
--

INSERT INTO `notice` (`no`, `id`, `name`, `subject`, `story`, `hit`, `year`, `file`, `comment`, `regdate`, `ip`) VALUES
(1, 'yun', '윤기동', '아티니어 커뮤니티 개설', '안녕하세요 아티니어 1기 회장직을 맡고있는 윤기동입니다.\n\n드디어 고대하던 아티니어 커뮤니티 사이트가 만들어졌습니다.\n\n이 아티니어 커뮤니티를 위해서 노력해주신 김성준 부회장님, 황현 선생님께 수고하셨다고 말씀드리고 싶습니다.\n\n아티니어 커뮤니티 개설 목적과 이의 운영방침에 대해서 간략하게 설명드리기 위해서 글을 남겼습니다.\n\n아티니어 커뮤니티 사이트의 개설 목적\n\n1. 아티니어의 동아리방의 부재로 회원들 끼리의 유대감을 증대시키기 어려움을 느껴 서로 소통할 수 있는 공간을 최소한이라도 느끼게 하기 위함\n\n2. 아티니어 동아리 활동을 하면서 필요한 여러 자료들을 서로서로 간편하게 공유하기 위함.\n\n3. 활동내용, 회의록 등 아티니어의 자취를 지속적으로 남겨 후에 튼튼한 동아리가 될수 있도록 하기 위함.\n\n아티니어 커뮤니티 사이트의 운영 방침.\n\n1. 아티니어 모든 회원분들은 필수적으로 가입을 하셔야 합니다\n(아티니어의 명단 관리를 본 사이트 데이터베이스를 통해서 합니다.)\n\n2. 아티니어 모든 회원분들은 가입 후 가입인사 글을 작성하셔야 합니다.\n(가입인사 글 업로드시 본인이 나온 사진으로 필수적으로 올려주셔야 합니다.)\n아티니어 동아리가 현재 총 77명으로 사실 서로가 누구인지 확인하기가 힘듭니다. 따라서 서로의 모습을 친숙히 하기위해서 사진을 올려주기를 권장합니다.\n\n3. 아티니어 공지 및 회의록 글은 관리자(아티니어 임원)분들에게만 글쓰기가 허용되어 있습니다.\n\n아티니어 커뮤니티 사이트의 활성화를 위해서 가능한 한 자료교환은 본 사이트를 통해서 주고받고, 주기적인 로그인을 바랍니다.\n\n\n본 공지글은 추후 활동되는 사항에 따라서 변경될 수 있습니다! \n이상 공지글을 마치겠습니다!', 63, 1, '', 0, '2018-05-08 (10:09)', '125.138.24.53'),
(2, 'fusc0', '김성준', '가입 승인 조건 안내', '안녕하세요. 아티니어 홈페이지 제작자 김성준입니다.\r\n\r\n처음 회원가입을 성공적으로 마친 경우 글쓰기/읽기 권한이 일부가 제한적일텐데요. \r\n때문에 저희 아티니어 홈페이지를 이용하시려면 가입 승인이 필수입니다.\r\n\r\n가입 승인의 조건과 방법에 대해 안내를 드리겠습니다.\r\n\r\n1. 아티니어 동아리방에 방문하거나 회장, 부회장 등 임원들에게 직접 연락을 취해 아티니어 가입신청서를 작성합니다.\r\n\r\n2. 공지사항에 있는 가입인사 양식대로 가입인사 게시판에 사진과 함께 자신을 소개하는 글을 작성합니다.\r\n(비승인 회원도 공지사항 글열람과 가입인사 글쓰기는 가능)\r\n\r\n3. 글을 올려놓고 대기하면 관리자가 확인 후 가입 승인이 완료되며 일반회원 권한이 부여됩니다.\r\n\r\n가입인사 양식에 맞춰 작성하지 않았거나 최소한의 성의도 보이지 않는 글에 경우 승인이 누락될 수 있으므로 성의껏 작성해주시기 바랍니다. 감사합니다.', 74, 1, '', 0, '2018-05-08 (10:33)', '1.211.104.154'),
(3, 'fusc0', '김성준', '인터넷 익스플로러 미지원 공지', '안녕하세요. 아티니어 홈페이지 제작자 김성준입니다.\r\n\r\n현재 저희 사이트는 인터넷 익스플로러(IE, Internet Explorer)를 아직 완벽히 지원하지 않습니다.\r\n때문에 인터넷 익스플로러로 사이트에 접속했을 시 몇가지 버그들이 나타날 수 있습니다.\r\n\r\n인터넷 익스플로러(IE)가 아닌 크롬(Chrome), 파이어폭스(FireFox), 오페라(Opera) 등의 타 최신 브라우저들은 호환하므로 아티니어 홈페이지를 이용할 땐 타 브라우저를 통해 접속해주시면 감사하겠습니다.', 54, 1, '', 0, '2018-05-08 (10:53)', '1.211.104.154'),
(4, 'fusc0', '김성준', '추후 기능 도입 예정 및 버그 문의', '안녕하세요. 아티니어 홈페이지 제작자 김성준입니다.\r\n동아리 커뮤니티 활용의 필요성 때문에 오픈이 예상보다 앞당겨져 현재 사이트에 다소 불안정한 요소가 있을 수 있고, 아직 부족한 기능들이 많습니다.\r\n\r\n그래서 회원님들에게 사이트를 이용하면서 발견한 버그와 불편한 점들을 이메일로 피드백 받아 빠른 시일내에 반영하려 합니다.\r\n\r\n제가 고려한 추후 사이트에 도입 예정인 기능들은 이러합니다.\r\n\r\n1. 파일 다중 업로드\r\n2. 스마트에디터 추가\r\n3. 게시글 검색\r\n4. 댓글 쓰기\r\n5. 업로드 파일 수정/삭제\r\n\r\n그러므로 위에 도입 예정 기능들을 제외하여 fusc0@naver.com 으로 이메일 문의 주시면 감사하겠습니다.\r\n', 63, 1, '', 0, '2018-05-08 (11:22)', '1.211.104.154'),
(5, 'fusc0', '김성준', '아티니어 기수 정의', '안녕하세요. 아티니어 1기 부회장 김성준입니다.\r\n사이트에서 회원가입을 할때 기수를 적는 란에서 본인이 몇기인지 몰라 많이들 헷갈리실 텐데요.\r\n\r\n학번 상관없이 2017년도(창립연도)에 가입한 회원은 1기,\r\n2018년도에 가입한 회원은 2기,\r\n2019년도에 가입한 회원은 3기,.....\r\n\r\n이런식으로 기수가 정의됩니다. 학번이 상관없기 때문에 학번이 달라도 같은 연도에 가입을 했다면 동기가 되는거구요.\r\n사이트 회원가입할때 입력한 숫자는 사이트 내에서 이름 옆에 (x기)식으로 꼬리표가 붙습니다.\r\n\r\n기수는 정보수정에서 수정할 수 없는 항목으로, 만약 기수 항목을 잘못 입력한 회원님은 관리자(아티니어 임원)에게 연락을 통해 수정 요청을 바랍니다.\r\n감사합니다.', 83, 1, '', 0, '2018-05-08 (12:02)', '1.211.104.154'),
(6, 'fusc0', '김성준', '가입인사 양식', '글제목은 이름과 기수가 포함되도록. 본인사진(혼자나온 셀카나 증명사진) 업로드 필수.<br /><br />- 성명 :<br /><br />- 학과 :<br /><br />- 학번 :<br /><br />- 기수 :<br /><br />- 취미 :<br /><br />- 특기 :<br /><br />- 개발경험 :<br /><br />- 가입동기 :<br /><br />- 자기소개 :', 113, 1, 'sw05080154022.png', 0, '2018-05-08 (13:54)', '1.211.104.154'),
(7, 'yun', '윤기동', '아티니어 방학 중 공지', '<p>아티니어 공지 올리겠습니다.</p><p><br></p><p>이번학기 기말고사가 끝나고 성적이 올라오는데 다들 점수 잘받았나요??</p><p><br></p><p>저는 생각보다 점수가 잘 나와서 다행인데 다른 분들은 모르겠네요!</p><p><br></p><p>우선 저번학기 마지막 회의 시 공지했던 내용들 다시한번 알려드리겠습니다.</p><p><br></p><p>1. 다음학기 개강시에 이 단톡방은 폐지가 되고 새로운 단톡방이 개설됩니다. 동아리 운영 상 편의를 위해서 그런 것이니 이해해주시고 방학동안에는 혹시 모를 공지에 대비해서 나가지 마시고 2학기 개강하시고 난 이후에 현 단톡방 나가주시기 바랍니다.</p><p><br></p><p>2. 2학기 진행부터는 동아리 회비를 걷습니다. 회비의 사용은 회식, 엠티, 홍보 포스터 제작, 서버 운영비, 상품 등으로 쓰일 예정이며 실 사용 내역은 투명화를 위해 월 별로 영수증 포함한 확인서류를 업로드할 예정입니다. 회비는 현재 2만원으로 생각하고 있으며 정확한 금액은 개강시 새롭게 공지하도록 하겠습니다.</p><p><br></p><p>3. 저번학기 아티니어의 평가를 위한 설문조사 결과 아티니어에 친목이 적다, 회의의 중요성이 낮다 라는 2가지의 문제점이 나왔습니다 우리 다같이 다음학기에는 위 문제를 개선할 수 있도록 노력해 나갑시다!!</p><p><br></p><p>4. 다음 주가 되면 프라임관으로 이사가 시작됩니다. 이에따라서 우리 동아리에 좋은소식이 하나 들릴것 같습니다. 바로 동방 문제인데 보다 더 자세하게 결정되면 이에 대해서 구체적으로&nbsp; 공지해드리도록 하겠습니다.</p><p><br></p><p>5.아티니어 강좌프로젝트 관련하여 이야기 드립니다. 1학기 때 자바, c, 안드로이드, 웹, 프레젠테이션 총 5과목을 진행하였는데 다음 학기 때 듣고싶은 강좌가 있으시다면 저에게 갠톡 보내주시면 감사하겠습니다. 가능하면 최대한 이끌어 내도록 노력해보겠습니다.&nbsp;</p><p><br></p><p>추가적으로 다음학기엔 텐서플로우 강의가 추가할 생각으로 준비하고 있으니 평소 인공지능에 관심있으신 분들은 참고해주세요!</p><p><br></p><p>읽으신 분들 확인 답장 한번 올려주시면 감사하겠습니다!</p><p><br></p><p>이상 아티니어 방학 중 공지였습니다! 다들 방학인데도 바쁜 친구들이 많더라구요! 쉬엄쉬엄하시고 다음학기때 좋은 얼굴로 만납시다!</p>', 102, 1, '', 0, '2018-06-28 (16:33)', '1.211.104.154'),
(8, 'fusc0', '김성준', '홈페이지 댓글/다중업로드 외 업데이트 및 버그 수정', '<ul>\r\n	<li><strong>파일 다중업로드</strong> - 파일선택창에서 드래그해서 이용</li>\r\n	<li><strong>스마트에디터 교체</strong>&nbsp;- 기존 오른쪽이 잘리는 에디터 교체</li>\r\n	<li><strong>댓글/답글</strong> - UI 아직 안함(귀찮), 게시글에 댓글수 표시</li>\r\n	<li><strong>게시글 검색</strong> - 제목+내용, 제목만, 내용만</li>\r\n	<li><strong>UI 변경</strong>&nbsp;- 게시글, 글쓰기, 글수정, 버튼 등등 변경</li>\r\n	<li><strong>조회수 버그픽스</strong> - 시험족보 조회수가 안올라가는 버그 수정</li>\r\n	<li><strong>새글 표시</strong> - 최근 2일내 작성된 게시글 옆에 아이콘 표시</li>\r\n	<li><strong>기타 버그 수정</strong> - 자잘한 작은 버그들 수정</li>\r\n</ul>\r\n그 외 버그 발견이나 추가됐으면 하는 기능들을 건의하려면<br />이 글에 댓글을 남기거나 fusc0@naver.com 으로 메일주세요~', 108, 1, '', 0, '2018-10-25 (15:38)', '211.36.137.41');

-- --------------------------------------------------------

--
-- 테이블 구조 `project`
--

CREATE TABLE `project` (
  `no` int(11) NOT NULL,
  `id` char(15) DEFAULT NULL,
  `name` char(15) DEFAULT NULL,
  `subject` char(150) DEFAULT NULL,
  `story` text,
  `hit` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `file` char(100) DEFAULT NULL,
  `comment` int(11) NOT NULL,
  `regdate` char(20) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `project`
--

INSERT INTO `project` (`no`, `id`, `name`, `subject`, `story`, `hit`, `year`, `file`, `comment`, `regdate`, `ip`) VALUES
(1, 'dongin1009', '정동인', '웹 정동인 시간표', '정동인 시간표', 72, 1, 'mq10310258357.png', 0, '2018-10-31 (14:57)', '61.245.248.214'),
(2, 'hyeonji7423', '정현지', '웹 정현지 시간표', '181031 웹', 59, 2, 'ui10310301513.png', 0, '2018-10-31 (15:00)', '210.112.150.172'),
(3, 'leh2353', '이은휴', '웹 이은휴 시간표', '웹 이은휴 시간표<br />&nbsp;', 67, 2, 'bx10310301101.png', 0, '2018-10-31 (15:01)', '210.112.150.172'),
(5, 'sujjin29', '김수진', '웹 김수진 시간표', '웹 김수진 시간표', 68, 2, 'we10310317307.jpg', 0, '2018-10-31 (15:17)', '210.112.150.172'),
(6, 'leh2353', '이은휴', '텐서플로우 5주차 과제 이은휴', '텐서플로우 5주차 과제 이은휴', 69, 2, 'zg11140336382.png', 0, '2018-11-14 (15:36)', '210.112.150.172'),
(7, 'hyeonji7423', '정현지', '텐서플로우 5주차 과제 - 정현지', '텐서플로우 5주차 과제.', 60, 2, 'rm11140337096.png', 0, '2018-11-14 (15:37)', '210.112.150.172'),
(8, 'sujjin29', '김수진', '텐서플로우 5주차 과제 김수진', '텐서플로우 5주차 과제 김수진', 51, 2, 'vd11150309588.png', 0, '2018-11-15 (03:09)', '175.208.67.131'),
(9, 'hyeonji7423', '정현지', '텐서플로우 6주차 과제', '6주차 과제', 71, 2, 'ag11220503413.png', 0, '2018-11-22 (17:03)', '210.112.150.173'),
(10, 'leh2353', '이은휴', '6주차 텐서플로우 과제 이은휴', '6주차 텐서플로우 과제', 71, 2, 'zr11220533258.png', 0, '2018-11-22 (17:33)', '210.112.150.173');

-- --------------------------------------------------------

--
-- 테이블 구조 `reference`
--

CREATE TABLE `reference` (
  `no` int(11) NOT NULL,
  `id` char(15) DEFAULT NULL,
  `name` char(15) DEFAULT NULL,
  `subject` char(150) DEFAULT NULL,
  `story` text,
  `hit` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `file` char(100) DEFAULT NULL,
  `comment` int(11) NOT NULL,
  `regdate` char(20) DEFAULT NULL,
  `ip` char(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 테이블의 덤프 데이터 `reference`
--

INSERT INTO `reference` (`no`, `id`, `name`, `subject`, `story`, `hit`, `year`, `file`, `comment`, `regdate`, `ip`) VALUES
(2, 'yun', '윤기동', '안드로이드 1주차 강의 자료', '1주차 강의자료 입니다!!', 25, 1, 'sp05081025473.pptx', 0, '2018-05-08 (10:25)', '125.138.24.53'),
(3, 'yun', '윤기동', '안드로이드 2주차 강의 자료', '안드로이드 2주차 강의자료 입니다.', 19, 1, 'jc05081027108.pptx', 0, '2018-05-08 (10:27)', '125.138.24.53'),
(4, 'yun', '윤기동', '안드로이드 3주차 강의 자료', '안드로이드 3주차 강의 자료입니다.', 19, 1, 'dx05081027332.pptx', 0, '2018-05-08 (10:27)', '125.138.24.53'),
(5, 'yun', '윤기동', '안드로이드 4주차 강의 자료', '안드로이드 4주차 강의자료입니다.', 10, 1, 'au05081028199.pptx', 0, '2018-05-08 (10:28)', '125.138.24.53'),
(6, 'yun', '윤기동', '안드로이드 5주차 강의 자료', '안드로이드 5주차 강의자료 입니다.', 8, 1, 'pn05081035165.zip', 0, '2018-05-08 (10:35)', '125.138.24.53'),
(7, 'yun', '윤기동', '안드로이드 6주차 강의 자료', '안드로이드 6주차 강의자료 입니다.', 10, 1, 'qd05090701044.zip', 0, '2018-05-09 (07:01)', '61.245.230.21'),
(8, 'fusc0', '김성준', 'APMSETUP 7 설치 파일', '<p>PHP 강의용 웹서버 APMSETUP7 설치 파일입니다.</p><p><a href=\"http://kldp.net/apmsetup/release/\" target=\"_self\">http://kldp.net/apmsetup/release/</a>&nbsp;에서도 다운로드 가능합니다.</p>', 26, 1, 'jf05230951396.exe', 0, '2018-05-23 (09:51)', '1.211.104.154'),
(9, 'fusc0', '김성준', '웹 5주차 강의 자료', '웹 강좌 5주차 강의 자료입니다.', 25, 1, 'mn05230237566.zip', 0, '2018-05-23 (14:37)', '1.211.104.154'),
(10, 'yun', '윤기동', '안드로이드 7주차 강의자료', '<p><br></p>', 22, 1, 'cb05280807206.zip', 0, '2018-05-28 (20:07)', '121.186.219.128'),
(11, 'fusc0', '김성준', '웹 7주차 강의 자료', '웹 7주차 강의 자료입니다.', 18, 1, 'my06040323007.zip', 0, '2018-05-30 (13:44)', '1.211.104.154'),
(12, 'yun', '윤기동', '텐서플로우 1주차 강의자료', '<p><br></p>', 53, 1, 'jv10011009241.pptx', 0, '2018-10-01 (10:09)', '210.112.150.170'),
(13, 'yun', '윤기동', '텐서플로우 2주차 강의자료', '<p><br></p>', 49, 1, 'fe10011009515.pptx', 0, '2018-10-01 (10:09)', '210.112.150.170'),
(14, 'yun', '윤기동', '텐서플로우 4주차 강의자료', '<p>강의 때 쓰는 데이터 자료입니당.</p>\r\n', 54, 1, 'gm10250533091.csv', 0, '2018-10-25 (17:33)', '61.245.248.213'),
(15, 'yun', '윤기동', '텐서플로우 3주차 강의자료', '3주차 강의자료 입니다.', 37, 1, 'yg11010152345.pptx', 0, '2018-11-01 (13:52)', '118.221.237.39'),
(16, 'yun', '윤기동', '텐서플로우 5주차 강의자료', '5주차 강의자료 입니다.', 51, 1, 'xw11010153056.pptx', 0, '2018-11-01 (13:53)', '118.221.237.39'),
(17, 'yun', '윤기동', '텐서플로우 5주차 실습자료', '5주차 실습자료입니다.', 68, 1, 'zb11080336592.zip', 0, '2018-11-08 (15:36)', '118.221.237.39'),
(18, 'bbang419', '김주환', '학교에서는 안알려주는매크로만들기 수업미참여자 과제.', 'GUI구성은 PPT보고 완료해주시고 버튼연동 등 PPT보고 연동 못하겠으면 연락주세요<br /><br />차주 수업때까지 완료해서 수업 참석해주세요.<br />수업때 지금까지 한 내용들 확장하여 수업 예정입니다,&nbsp;<br />원활한 수업 진행 위하여 과제 완료해주세요', 86, 1, 'np11120302404.pptx', 0, '2018-11-12 (15:02)', '210.112.150.40'),
(19, 'yun', '윤기동', '텐서플로우 6주차 강의자료', '6주차 강의자료 입니다.', 66, 1, 'te11150503312.zip', 0, '2018-11-15 (17:03)', '210.112.150.36'),
(20, 'yun', '윤기동', '텐서플로우 7주차 강의자료', 'ㅎㅎ', 58, 1, '', 0, '2018-11-22 (17:30)', '61.245.248.213'),
(21, 'yun', '윤기동', '텐서플로우 8주차 강의자료', '8주차 마지막주차 강의자료 입니다.', 41, 1, 'tv12051033118.pptx', 0, '2018-12-05 (22:33)', '118.221.237.39'),
(22, 'dolto', '홍도완', '유니티 강의자료1', '이거 하는데 너무 많은 시간을 들였네요 다음엔 좀 더 조리있게 준비해보도록 하겠습니다.<br /><br />자료안에 있는 스크립트에 대한 설명은 일부러 넣지 않았습니다.', 26, 2, 'cn03160932387.pdf,ga03160932389.7z', 0, '2019-03-16 (21:32)', '220.82.211.111'),
(23, 'hyeonji7423', '정현지', 'C언어 1주차 강의자료', '생각보다 시간이 많이 걸렸어서 이번주는 조금 더 쉽고 정확하게 설명할 수 있도록 하겠습니다.', 23, 2, 'mi03251104471.pdf', 0, '2019-03-25 (23:04)', '123.212.249.215'),
(24, 'hyeonji7423', '정현지', 'C언어 2주차 강의자료', '2주차 부터는 과제가 있습니다.<br />과제 확인해주시고 모르는게 있다면 개별 연락 바랍니다.', 22, 2, 'cj03281140001.ppt', 0, '2019-03-28 (23:40)', '123.212.249.215'),
(25, 'dolto', '홍도완', '유니티2주차 강의자료', '2주차 수업 때 했었던 내용 정리입니다.', 29, 2, 'gs03300924233.zip', 0, '2019-03-30 (21:24)', '220.82.211.111'),
(26, 'hyeonji7423', '정현지', 'C언어 3주차 강의자료', 'C언어 3주차 강의자료입니다.&nbsp;', 39, 2, 'yg04040930321.ppt', 0, '2019-04-04 (21:30)', '123.212.249.215'),
(27, 'dolto', '홍도완', '유니티3주차 강의자료', '뭔가 많지만 지난번에 한걸 자세하게 적은것 뿐이니 다 이해할 필요는 없고, 훓어보면서 저번 주에 한 걸 이해하고, 부가설명을 읽는 자세로 공부해보길 바랍니다.<br /><br />요청이 있어서 과거 공부했을 때 정리한 파일과 강의를 위해 만든 파일을 함께 첨부했습니다.', 20, 2, 'sy04070507249.zip', 0, '2019-04-07 (17:07)', '220.82.211.111'),
(28, 'hyeonji7423', '정현지', 'C언어 4주차 강의자료', 'C언어 4주차 강의자료입니다.<br />질문 있으면 연락 바랍니다.', 62, 2, 'ox04131207023.ppt', 0, '2019-04-13 (00:07)', '123.212.249.215'),
(29, 'hyeonji7423', '정현지', 'C언어 5주차 강의자료', 'C언어 5주차 강의자료', 10, 2, 'ty05191104328.ppt', 0, '2019-05-19 (23:04)', '123.212.249.215'),
(30, 'hyeonji7423', '정현지', 'C언어 6주차 강의자료', 'C언어 6주차 강의자료입니다.', 11, 2, 'mc05281236312.ppt', 0, '2019-05-28 (12:36)', '123.212.249.215'),
(31, 'hyeonji7423', '정현지', 'C언어 7주차 강의자료', 'C언어 7주차 강의자료입니다.', 18, 2, 'cv05281236503.ppt', 0, '2019-05-28 (12:36)', '123.212.249.215'),
(32, 'hyeonji7423', '정현지', 'C언어 8주차 강의자료', 'C언어 8주차 강의자료<br /><br /><br />&nbsp;', 44, 2, 'ma05300612184.docx', 0, '2019-05-28 (12:44)', '123.212.249.215');

--
-- 덤프된 테이블의 인덱스
--

--
-- 테이블의 인덱스 `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `hello`
--
ALTER TABLE `hello`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `minutes`
--
ALTER TABLE `minutes`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `note`
--
ALTER TABLE `note`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `notice`
--
ALTER TABLE `notice`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`no`);

--
-- 테이블의 인덱스 `reference`
--
ALTER TABLE `reference`
  ADD PRIMARY KEY (`no`);

--
-- 덤프된 테이블의 AUTO_INCREMENT
--

--
-- 테이블의 AUTO_INCREMENT `comment`
--
ALTER TABLE `comment`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 테이블의 AUTO_INCREMENT `exam`
--
ALTER TABLE `exam`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- 테이블의 AUTO_INCREMENT `gallery`
--
ALTER TABLE `gallery`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- 테이블의 AUTO_INCREMENT `hello`
--
ALTER TABLE `hello`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- 테이블의 AUTO_INCREMENT `member`
--
ALTER TABLE `member`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- 테이블의 AUTO_INCREMENT `minutes`
--
ALTER TABLE `minutes`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- 테이블의 AUTO_INCREMENT `note`
--
ALTER TABLE `note`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;

--
-- 테이블의 AUTO_INCREMENT `notice`
--
ALTER TABLE `notice`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 테이블의 AUTO_INCREMENT `project`
--
ALTER TABLE `project`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- 테이블의 AUTO_INCREMENT `reference`
--
ALTER TABLE `reference`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
