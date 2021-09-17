<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>kiosk login after</title>
    <style>
    	input[type=checkbox]+body{ padding: 20px; }
        input[type=checkbox] {-webkit-transform: scale(2); /* Safari and Chrome */ margin: 20px; width: 10px;}
        label{ padding:15px 20px 15px 0px; border: 2px solid rgb(125, 203, 255); background-color: rgb(134, 197, 255); font-size: 30px;}
        input[type=checkbox]+div{margin: 70px;}
    </style>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/kiosk_login.css?v=Y"/>
    <link rel="stylesheet" type="text/css" href="../css/kiosk_ticket_css.css?v=Y"/>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../js/ticket.js" ></script>
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
<script type="text/javascript">
	//입실버튼
	function kiosk_enter(){
		location.href="kiosk_enter_seat";
	}
	//퇴실버튼
	function kiosk_exit(){
			if (confirm("퇴실하시겠습니까?") == true){    //확인
				if (confirm("퇴실이 완료되었습니다.로그아웃하시겠습니까?") == true){    //확인
				location.href="kiosk_main";
			    /* document.form.submit(); */
				}else{
					location.href="kiosk_login";
				}
			}else{   //취소
			    return;
			}
		}
	function kiosk_time_extension(){
		location.href="kiosk_time_extension";
		alert("사용중인 좌석을 선택하세요.");
	}
	function kiosk_change_seat(){
		location.href="kiosk_change_seat";
	}
	//하단 로그아웃
	function logout() { 
		location.href = "memberLogout"; 
		}
</script>
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
            <button id="button_login_in" onclick="kiosk_enter()">입실</button>
            <!-- <button id="button_login_in">외출</button> -->
            <button id="button_login_in" onclick="kiosk_exit()">퇴실</button>
            <button id="button_login_in" onclick="kiosk_time_extension()">시간연장</button>
            <!-- <button id="button_login_in">연동하기</button> -->
            <button id="button_login_in" onclick="kiosk_change_seat()">자리이동</button>
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
		<h2>무인 스터디카페 이용권구매</h2>
		<div class="con">
		<!--폼 시작-->
		<!-- js -->
	<form action="kiosk_seat" method="POST" name="form">
		
		<label style="padding:15px 20px 15px 0px; border: 2px solid rgb(255, 136, 89); background-color: rgb(255, 136, 89); font-size: 30px;">
		<input type='checkbox' name='type1' value="이용권구매" onclick='view1()'/>이용권구매</label>
		
	        <div id="cattery1" style="display:none;">
	            <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(255, 203, 89); background-color: rgb(255, 203, 89); font-size: 30px;">
	            <input type='checkbox' id="type2" name='type2' value="개인석" onclick='checkOnlyOne(this)+view2()'/>개인석</label>
	            <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(255, 203, 89); background-color: rgb(255, 203, 89); font-size: 30px;">
	            <input type='checkbox' id="type2" name='type2' value="스터디룸" onclick='checkOnlyOne(this)+view3()'/>스터디룸</label>
	        </div>
	
	        <div id="cattery2" style="display:none;">
	            <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(253, 255, 134); background-color: rgb(253, 255, 134); font-size: 30px;">
	            <input type="checkbox" class="type3" id="type3" name="type3" value="1회권" onclick='checkOnlyTwo(this)+view4()'/>1회이용권x</label>
	            
	            <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(253, 255, 134); background-color: rgb(253, 255, 134); font-size: 30px;">
	            <input type="checkbox" id="type3" name="type3" value="시간권" onclick='checkOnlyTwo(this)+view5()'/>시간제이용권</label>
	            
	            <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(253, 255, 134); background-color: rgb(253, 255, 134); font-size: 30px;">
	            <input type="checkbox" id="type3" name="type3" value="기간권" onclick='checkOnlyTwo(this)+view6()'/>기간제이용권</label>
	            
	            <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(253, 255, 134); background-color: rgb(253, 255, 134); font-size: 30px;">
	            <input type="checkbox" id="type3" name="type3" value="고정권" onclick='checkOnlyTwo(this)+view7()'/>고정석이용권x</label>
	        </div>
	
	        <div id="cattery3" style="display:none;">
	            <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(162, 255, 255); background-color: rgb(162, 255, 255); font-size: 30px;">
	            <input type="checkbox" id="type4" name="type4" value="2인방" onclick='checkOnlyRoom(this)'>2인방</label>
	            <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(162, 255, 255); background-color: rgb(162, 255, 255); font-size: 30px;">
	            <input type="checkbox" id="type4" name="type4" value="3인방" onclick='checkOnlyRoom(this)'>3인방</label>
	            <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(162, 255, 255); background-color: rgb(162, 255, 255); font-size: 30px;">
	            <input type="checkbox" id="type4" name="type4" value="4인방" onclick='checkOnlyRoom(this)'>4인방</label>
	        </div>
	
	        <!--1회이용권 부제없음!!!!-->
	        <!--시간제이용권-->
	            <div id="cattery4" style="display:none;">
	                <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(131, 255, 107); background-color: rgb(131, 255, 107); font-size: 30px;">
	                <input type="checkbox" id="type5" name="type5" value="바로이용" onclick='checkOnlyRoom2(this)'>바로이용</label>
	                <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(131, 255, 107); background-color: rgb(131, 255, 107); font-size: 30px;">
	                <input type="checkbox" id="type5" name="type5" value="이용권만구매" onclick='checkOnlyRoom2(this)'>이용권만구매</label>
	            </div>
	        <!--기간제이용권-->
	            <div id="cattery5" style="display:none;">
	                <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(131, 255, 107); background-color: rgb(131, 255, 107); font-size: 30px;">
	                <input type="checkbox" id="type5" name="type5" value="바로이용" onclick='checkOnlyRoom2(this)'>바로이용</label>
	                <label style="padding:15px 20px 15px 0px; border: 2px solid rgb(131, 255, 107); background-color: rgb(131, 255, 107); font-size: 30px;">
	                <input type="checkbox" id="type5" name="type5" value="이용권만구매" onclick='checkOnlyRoom2(this)'>이용권만구매</label>
	            </div>
	        <!--고정석이용권 부제없음!!!!-->
	    	<div>
		</div>
		
		<%-- <c:forEach items="${map.seatList }" var = "seat">
		<div onclick="finish(${seat.no})">
		좌석1
		</div>
		</c:forEach>
		
		
		
		
		<script type="text/javascript">
			function finish(seat_no){
				location.href = "payment?seat_no = "+seat_no;
			}
		</script>
		 --%>
		
		
		
		
		
		</form>
		</div>
		<div class="txt_center">
			<a onclick = "" class="btn_type1" id="kiosk_seat">다음</a>
		</div>
		<a href="#" class="close"> <img src="images/close.png" alt="닫기">
		</a>
	</div>
	<div class="dim"></div>
	<script type="text/javascript">
	$(document).ready(function(){
    	$('#kiosk_seat').on('click',function(){
    		document.form.submit();
    	});
    });
	</script>
</body>
</html>