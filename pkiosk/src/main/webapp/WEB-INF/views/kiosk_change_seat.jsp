<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>kiosk login seat select</title>
    <style>
    	input[type=checkbox]+body{ padding: 20px; }
        input[type=checkbox] {-webkit-transform: scale(2); /* Safari and Chrome */ margin: 20px; width: 10px;}
        label{ padding:15px 20px 15px 0px; border: 2px solid rgb(125, 203, 255); background-color: rgb(134, 197, 255); font-size: 30px;}
        input[type=checkbox]+div{margin: 70px;}
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/kiosk_login.css?v=Y"/>
    <link rel="stylesheet" type="text/css" href="../css/kiosk_ticket_seat_css.css?v=Y"/>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../js/ticket.js" ></script>
<style type="text/css">
/*seat*/
#box_seat{border: 2px solid black;width: 700px;height: 500px;padding: 20px;}
.box_style{ border: 4px solid #77a6ff; width: 40px; height: 40px; background: #84a1ff;}

.box_01{font-size:12px; border: 4px solid #b3beff; width: 45px; height: 50px; margin: 3px; float: left;text-align: center;}
.box_02{font-size:12px; border: 4px solid #d3d3d3; width: 45px; height: 50px; margin: 3px;}
.box_03{font-size:12px; border: 4px solid #d3d3d3; width: 45px; height: 50px; margin: 3px;}

.box_y{border: 5px solid #aecaff; background: #678aff;color:aliceblue; float: right;}
.box_n{border: 5px solid #ffa1a1; background: #ff6d6d;color:aliceblue; float: right;}
</style>
<script type="text/javascript">
$(function(){
    $(".box_01").click(function(){
        $(this).toggleClass("box_style")
    });
    $(".box_02").click(function(){
        $(this).toggleClass("box_style")
    });
    $(".box_03").click(function(){
        $(this).toggleClass("box_style")
    });
});
</script>
<script>
//레이어팝업
$(document).ready(function() {
	$(".open").on('click', function() {
		$(".popup").show();
		$(".dim").show();
	});
	$(".popup .close").on('click', function() {
		$(this).parent().hide();
		$(".dim").hide();
	});
});
</script>
<script>function logout() { location.href = "memberLogout"; }</script>
</head>



<body>
<div style="text-align: right; margin-right: 260px;">
<script>
//현재날짜,시간 시작
today = new Date() 
if(today.getMinutes() < 10){ pad = "0" } else pad = ""; 
document.write("지금은 ",today.getYear()+1900,"년 ",today.getMonth()+1,"월 ",today.getDate(),"일 "); 
document.write(today.getHours(),"시",pad,today.getMinutes(),"분 입니다. ") 
document.write("<B><FONT COLOR=BLUE>") 
if((today.getHours() < 12) && (today.getHours() >= 6)){ document.write("good morning! 오늘도 좋은하루^^") } 
if((today.getHours() >= 12) && (today.getHours() < 19)){ document.write("하시는 일 잘 되시길 ^^") } 
if((today.getHours() >= 19) && (today.getHours() <= 23)){ document.write("좋은 밤 되세요 !") } 
if((today.getHours() >= 0) && (today.getHours() < 4)){ document.write("주무실 시간이네요 건강을 생각해서 이제 주무세요") } 
if((today.getHours() >= 4) && (today.getHours() <= 6)){ document.write("상쾌한 기분으로 출발하세요!") } 
document.write("</B></FONT>") 
//현재날짜,시간 끝
</script>
</div>
<!--좌석 현황-->
<div class="main_div">
<div class="title_div">
    <span style=" padding:1px 100px 3px 10px;">이용가능좌석</span>
    <span style=" padding:1px 50px 3px 10px;">개인석[  석]</span>
    <span style=" padding:1px 50px 3px 10px;">스터디룸[  룸]</span>
    <span style=" padding:1px 50px 3px 10px;">사물함[  개]</span>
</div>
<!--메인이미지-->
<div class="jpg_div">
    <div class="jpg_div_it"><img class="img1" src="../images/img1.jpg" style="max-width: 100%; height: auto;"></div>
</div>
<!--관리자 전화번호-->
<div class="reader_t">
    <!-- 멘트시작 -->
    <form name=tickform>
		<input type=text name=tickfield size="52" style="border: none; background: transparent; font-size: 15px; font-style:italic;" readonly="readonly"></form>
<SCRIPT LANGUAGE="JavaScript"> 
var max = 0;
function textlist() {
max = textlist.arguments.length;
for (i = 0; i < max; i++)
this[i] = textlist.arguments[i];
}
tl = new textlist("안녕하세요. 무인스터디카페를 이용해주셔서 감사합니다..",
"오늘도 화이팅하시고 항상 건강에 유의하시길 바랍니다..",
"코로나19로 인해 상시 마스크 착용을 협조부탁드리며",
"문의사항은 아래의 번호로 연락 부탁드립니다 ^^.. ▼");
var x = 0;
var pos = 0;
var l = tl[0].length;
function textticker() {
document.tickform.tickfield.value = tl[x].substring(0,pos)+ "_";
if (pos++ == l) { pos = 0; setTimeout("textticker()", 2000);
if (++x == max) x = 0; l = tl[x].length; }
else setTimeout("textticker()", 50); }
textticker();
				</script><!-- 멘트끝 -->사장님. 010-6581-7271</div>
<div class="login">
<div class="login_div_in">
<!--폼 : 아이디 및 비밀번호 전송-->
</div>
<!--숫자 입력버튼-->
    <div class="login_input_div_in">
        <div class="login_div_form_in">
            <a href="#a" class="open"><button type="button" id="ticket_btn" onclick="popup()">이용권구매</button></a><br>
            <button id="button_login_in">입실</button>
            <!-- <button id="button_login_in">외출</button> -->
            <button id="button_login_in">퇴실</button>
            <button id="button_login_in">시간연장</button>
            <!-- <button id="button_login_in">연동하기</button> -->
            <button id="button_login_in">자리이동</button>
            <!-- <button id="button_login_in">문열림</button> -->
            <!-- <button id="button_login_in">출입QR재출력</button> -->
            </div>
    	</div>
	    <!--하단 이미지-->
	    <div class="footer_div_in">
        <table>
            <tr align="right">
                <td colspan="3" style="font-size: xx-large;">로그인정보&nbsp;
                <span style="font-size: small;">QR코드는 카카오톡 또는 메시지를 확인하여 주시기 바랍니다.을 이용하시면 다양한 혜택을 누리실 수 있습니다.</span>
                <button type="button" onclick="logout()">로그아웃</button></td>
            </tr>
            <tr>
                <td style="height: 30px;">보유이용권 [연락처:${session_id}]</td>
                <td style="height: 30px;">잔여시간(기간)</td>
                <td style="height: 30px;">유효기간/만료일시</td>
            </tr>
            <tr>
                <td style="height: 40px;"></td>
                <td style="height: 40px;"></td>
                <td style="height: 40px;"></td>
            </tr>
            <tr>
                <td style="height: 40px;"></td>
                <td style="height: 40px;"></td>
                <td style="height: 40px;"></td>
            </tr>
            <tr>
                <td style="height: 40px;"></td>
                <td style="height: 40px;"></td>
                <td style="height: 40px;"></td>
            </tr>
        </table>
    </div>
<div>
</div>
</div>			
</div>
<!-- ------------------------------------------------------------------------작업영역 08/31 -->
<div class="popup">
		<h2>무인 스터디카페 자리이동</h2>
		<div class="con">
		<!--폼 시작-->
		<!-- js -->
		<%-- <c:forEach items="${map.seatList }" var = "seat">
			<div onclick="finish(${seat.no})">좌석1</div>
		</c:forEach> --%>
		<script type="text/javascript">
			function finish(){
				/* if(seat_no == y){ */
					if (confirm("선택한 좌석으로 이동하시겠습니까?") == true){    //확인
					alert("자리이동 완료");
					location.href="kiosk_login";
				    /* document.form.submit(); */
				}else{   //취소
				    return;
				}
				/* }else{ */
					/* alert("seat_no번 좌석은 사용중입니다. 다시 선택해주세요."); */					
				/* } */
			}
			function room_finish(){
				if (confirm("선택한 좌석으로 이동하시겠습니까?") == true){    //확인
					alert("자리이동 완료");
					location.href="kiosk_login";
				    /* document.form.submit(); */
				}else{   //취소
				    return;
				}
			}
		</script>
<div id="box_seat">
    <span style="border: 3px solid #ff5cff; background-color: #f8aeff; color: rgb(255, 255, 255);">좌석현황</span>
    <div class="box_y">사용가능</div><br><br>
    <div class="box_n">사용불가</div>
    <div class="box_01" onclick="finish()">1</div>
    <div class="box_01" onclick="finish()">2</div>
    <div class="box_01" onclick="finish()">3</div>
    <div class="box_01" onclick="finish()">4</div>
    <div class="box_01" onclick="finish()">5</div>
    <div class="box_01" onclick="finish()">6</div>
    <div class="box_01" onclick="finish()">7</div>
    <div class="box_01" onclick="finish()">8</div>
    <div class="box_01" onclick="finish()">9</div>
    <div class="box_01" onclick="finish()">10</div>
    <div class="box_01" onclick="finish()">11</div>
    
        <div style="padding: 60px;"></div>
    
    <div class="box_01" onclick="finish()">12</div>
    <div class="box_01" onclick="finish()">13</div>
    <div class="box_01" onclick="finish()">14</div>
    <div class="box_01" onclick="finish()">15</div>
    <div class="box_01" onclick="finish()">16</div>
    <div class="box_01" onclick="finish()">17</div>
    <div class="box_01" onclick="finish()">18</div>
    <div class="box_03" onclick="room_finish()" style="width: 200px; height: 70px; border: 4px solid #b3beff; float: right; margin: 3px; text-align: center;">스터디룸_1<br>( 4인 ~ 6인 )</div>
    <!-- <div class="box_03" style="width: 40px; height: 40px; border: 4px solid #b3beff; float: right; margin: 3px; text-align: center;">좌석17-2</div>
    <div class="box_03" style="width: 40px; height: 40px; border: 4px solid #b3beff; float: right; margin: 3px; text-align: center;">좌석17-3</div>
    <div class="box_03" style="width: 40px; height: 40px; border: 4px solid #b3beff; float: right; margin: 3px; text-align: center;">좌석17-4</div> -->
    
        <div style="padding: 40px;"></div>

    <div class="box_01" onclick="finish()">19</div>
    <div class="box_01" onclick="finish()">20</div>
    <div class="box_01" onclick="finish()">21</div>
    <div class="box_01" onclick="finish()">22</div>
    <div class="box_01" onclick="finish()">23</div>
    <div class="box_01" onclick="finish()">24</div>
    <div class="box_01" onclick="finish()">25</div>
    <div class="box_03" onclick="room_finish()" style="width: 200px; height: 70px; border: 4px solid #b3beff; float: right; margin: 3px; text-align: center;">스터디룸_2<br>( 4인 ~ 6인 )</div>
    <!-- <div class="box_03" style="width: 40px; height: 40px; border: 4px solid #b3beff; float: right; margin: 3px; text-align: center;">좌석24-2</div>
    <div class="box_03" style="width: 40px; height: 40px; border: 4px solid #b3beff; float: right; margin: 3px; text-align: center;">좌석24-3</div>
    <div class="box_03" style="width: 40px; height: 40px; border: 4px solid #b3beff; float: right; margin: 3px; text-align: center;">좌석24-4</div> -->
        
        <div style="padding: 70px;"></div>

    <div class="box_01" onclick="finish()">26</div>
    <div class="box_01" onclick="finish()">27</div>
    <div class="box_01" onclick="finish()">28</div>
    <div class="box_01" onclick="finish()">29</div>
    <div class="box_01" onclick="finish()">30</div>
    <div class="box_01" onclick="finish()">31</div>
    <div class="box_01" onclick="finish()">32</div>
    <div class="box_03" onclick="room_finish()" style="width: 200px; height: 70px; border: 4px solid #b3beff; float: right; margin: 3px; text-align: center;">스터디룸_3<br>( 6인 이상 )</div>
    <!-- <div class="box_03" style="width: 40px; height: 40px; border: 4px solid #b3beff; float: right; margin: 3px; text-align: center;">좌석31-2</div>
    <div class="box_03" style="width: 40px; height: 40px; border: 4px solid #b3beff; float: right; margin: 3px; text-align: center;">좌석31-3</div>
    <div class="box_03" style="width: 40px; height: 40px; border: 4px solid #b3beff; float: right; margin: 3px; text-align: center;">좌석31-4</div> --> 
</div>
</div>
		<a href="kiosk_login" class="close"> <img src="images/close.png" alt="닫기">
		</a>
	</div>
	<div class="dim"></div>
	<!-- 안씀 ! 
	<script type="text/javascript">
	$(document).ready(function(){
    	$('#memberTicket').on('click',function(){
    		document.form.submit();
    	});
    });
	</script> -->
</body>
</html>