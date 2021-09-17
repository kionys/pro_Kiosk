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
		.box_style{width: 280px; height: 150px; border: 4px solid #77a6ff;  background: #84a1ff; color: white;
						}
    	#box_payment{
    				border: 2px solid black;width: 700px;height: 500px;padding-left: 60px; padding-top: 70px;
    				font-size: 20px;
    				}
		.box_payment_01{width: 280px;height: 150px; border: 2px solid #4f69ff; margin: 3px; float: left;text-align: center;
						padding-top: 5px;
						}
		#box_payment_02{
		    border: 1px solid #4f69ff; float: left; width: 125px; padding: 10px;padding-top:19px; height: 75px; margin: 4px; 
		    margin-left: 8px;
		    			}
    </style>
    <!-- <script type="text/javascript">
    $(function(){
        $('.seat').on('click',function(){
          if($('.box_payment').css('display') === 'none'){
            $('.box_payment').show();
          } else {
            $('.box_payment').hide();
              }
          });
    });
    </script> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="../css/kiosk_login.css?v=Y"/>
    <link rel="stylesheet" type="text/css" href="../css/kiosk_ticket_seat_payment.css?v=Y"/>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
    <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script type="text/javascript" src="../js/ticket.js" ></script>
	<script type="text/javascript">
$(function(){
    $(".box_payment_01").click(function(){
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
		<h2>무인 스터디카페 결제페이지</h2>
		<div class="con">
		<!--폼 시작-->
<input type="button" onclick="seat()" class="seat" value="개인석" style="text-align: center; width: 100px; border: 2px solid black; background-color: #ffffff; color: rgb(0, 0, 0); margin: 2px;">
		
<!-- <input type="button" onclick="studyRoom()" class="studyRoom" value="스터디룸" style="text-align: center; width: 100px; border: 2px solid black; background-color: #ffffff; color: rgb(0, 0, 0); margin: 2px;"> -->

		
<div class="box_payment">
        <div class="box_payment_01">2시간권<br><br>
            <div id="box_payment_02">2시간</div>
            <div id="box_payment_02">3,000원
                <input type="hidden" id="" name="" value="2시간">
                <input type="hidden" id="" name="" value="3,000">
            </div>
        </div>
        <div class="box_payment_01">4시간권<br><br>
            <div id="box_payment_02">4시간</div>
            <div id="box_payment_02">5,000원</div>
                <input type="hidden" id="" name="" value="4시간">
                <input type="hidden" id="" name="" value="5,000">
        </div>
        <div class="box_payment_01">6시간권<br><br>
            <div id="box_payment_02">6시간</div>
            <div id="box_payment_02">6,000원</div>
                <input type="hidden" id="" name="" value="6시간">
                <input type="hidden" id="" name="" value="6,000">
        </div>
        <div class="box_payment_01">12시간권<br><br>
            <div id="box_payment_02">12시간</div>
            <div id="box_payment_02">10,000원</div>
                <input type="hidden" id="" name="" value="12시간">
                <input type="hidden" id="" name="" value="10,000">
        </div>
    </div>
    
    
    
</div>

		<!-- js -->
		<script type="text/javascript">
			function payment_cancel(){
				alert("결제가 취소되었습니다.");
				location.href="kiosk_login";
			}
			function payment_payment(){
				alert("결제가 완료되었습니다.바로 좌석이용이 가능합니다.");
				/* alert("결제가 완료되었습니다.이용권만 구매하셨으므로 언제든 입실하실 수 있습니다."); */
				location.href="kiosk_main";
			}
		</script>
		
		<div class="txt_center" style="float: left; margin-left: 130px;">
			<a onclick = "payment_payment()" class="btn_type1" id="kiosk_seat">결제하기</a>
		</div>
		<div class="txt_center" style="float: left; margin-left: 100px;">
			<a onclick = "payment_cancel()" class="btn_type1" id="pay_close">결제취소</a>
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