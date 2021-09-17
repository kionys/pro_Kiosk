<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>kiosk main/login before</title>
    <style>body { height: 100vh; } a { text-decoration:none }</style>
    <link rel="stylesheet" type="text/css" href="../css/kiosk_memberJoin_css.css?v=Y"/>
    <link rel="stylesheet" type="text/css" href="../css/kiosk2.css?v=Y"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.2.0.min.js" ></script>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="../js/well.js" ></script>
    <!-- 이름 키패드 js 시작-->
    <script type='application/ld+json'>{"@context":"https://schema.org","@type":"Person","url":"https://note.heyo.me/","sameAs":[],"@id":"#person","name":"MK SONG"}</script>
    <script type="text/javascript" src="../js/name_number_pad.js" ></script>
    <!-- 이름 키패드 js 끝 -->
    <!-- 이름 키패드 css 시작 -->
    <link rel="profile" href="http://gmpg.org/xfn/11">
	<link rel="pingback" href="https://note.heyo.me/xmlrpc.php" />
	<link rel='dns-prefetch' href='//s0.wp.com' />
	<link rel='dns-prefetch' href='//secure.gravatar.com' />
	<link rel='dns-prefetch' href='//maxcdn.bootstrapcdn.com' />
	<link rel='dns-prefetch' href='//fonts.googleapis.com' />
	<link rel='dns-prefetch' href='//s.w.org' />
	<link rel="alternate" type="application/rss+xml" title="{}.cook(c, c#, java, php, js, asm); &raquo; 피드" href="https://note.heyo.me/feed/" />
	<link rel="alternate" type="application/rss+xml" title="{}.cook(c, c#, java, php, js, asm); &raquo; 댓글 피드" href="https://note.heyo.me/comments/feed/" />
	<link rel="alternate" type="application/rss+xml" title="{}.cook(c, c#, java, php, js, asm); &raquo; 한글 가상키보드 만들기 (2) 댓글 피드" href="https://note.heyo.me/%ed%95%9c%ea%b8%80-%ea%b0%80%ec%83%81%ed%82%a4%eb%b3%b4%eb%93%9c-%eb%a7%8c%eb%93%a4%ea%b8%b0-2/feed/" />
	<style type="text/css">
	img.wp-smiley,
	img.emoji {
		display: inline !important;
		border: none !important;
		box-shadow: none !important;
		height: 1em !important;
		width: 1em !important;
		margin: 0 .07em !important;
		vertical-align: -0.1em !important;
		background: none !important;
		padding: 0 !important;
	}
		ul,li {list-style:none;}
		#virtual-keyboard {padding:10px; width: 470px; height: 190px;}
		#virtual-keyboard ul {overflow:hidden;margin:0;padding:0;} 
		#virtual-keyboard li {float:left; text-align:center; border:1px solid #c8c8c8; margin:0;padding:0;}
		#virtual-keyboard {background:#eee;}
		#virtual-keyboard li {background:#fff;}
		#virtual-keyboard li {width:40px; height:40px; cursor:pointer;}
	
		#virtual-keyboard2 {padding:10px; width: 470px; height: 190px;}
		#virtual-keyboard2 ul {overflow:hidden;margin:0;padding:0;} 
		#virtual-keyboard2 li {float:left; text-align:center; border:1px solid #c8c8c8; margin:0;padding:0;}
		#virtual-keyboard2 {background:#eee;}
		#virtual-keyboard2 li {background:#fff;}
		#virtual-keyboard2 li {width:40px; height:40px; cursor:pointer;}
	</style>
    <!-- 이름 키패드 css 끝 -->
  <script>
//아이디input 클릭 시 버튼 호출---------------------------------------------
    $(function(){
      $('#id').on('click',function(){
        if($('.div1').css('display') === 'none'){
          $('.div1').show();
        } else {
          $('.div1').hide();
            }
        });
        //input  벗어나면 버튼 사라짐
       $('body').on('click', function(e){
         if(!($(e.target).hasClass("id") || $(e.target).hasClass("btn1"))){
             $('.div1').hide();
            }
        });
    });
//------------------------------------------------------------------------

//비밀번호input 클릭 시 버튼 호출
    $(function(){
      $('#pw').on('click',function(){
        if($('.div2').css('display') === 'none'){
          $('.div2').show();
        } else {
          $('.div2').hide();
            }
        });
        //input 포커스 벗어나면 버튼 사라짐
       $('body').on('click', function(e){
         if(!($(e.target).hasClass("pw") || $(e.target).hasClass("btn2"))){
             $('.div2').hide();
            }
        });
    });
//-------------------------------------------------------------------------
 
    //각 ID,PW input에 버튼 값 입력
    function input_id(num){   
        if($("#id").val().length<13){//id 입력 수 제한
            $("#id").val($("#id").val()+num.innerText);// += 텍스트
            if(($("#id").val()+num.innerText).length == 9){// 텍스트 중간에 - 넣기
                const space="-";
                $("#id").val(($("#id").val())+space);
            }
        } 
    }//input_id(num)
    //각 PW input에 버튼 값 입력
    function input_pw(num){    
        $("#pw").val($("#pw").val()+num.innerText);
    }//input_pw(num)

//-------------------------------------------------------------------------

    //버튼 입력 값 지우기 (ID,PW)
    function input_num_backspace1() {
        var backspace_all = "010-";
        $("#id").val(backspace_all);
        }
    function input_num_backspace2() {
        var backspace_all = "";
        $("#pw").val(backspace_all);
        }
    
</script>


<!--회원가입 레이어 팝업의 연락처 input 클릭 시 버튼 호출--------------------------------------------->
<script>
    $(function(){
      $('#txt1').on('click',function(){
        if($('.div12').css('display') === 'none'){
          $('.div12').show(); 
          $('.token').hide();
          $('.div1234').hide();
          $('.divPw1').hide();
          $('.divPw2').hide();
          $('.pass1').show();
          $('#virtual-keyboard').hide();
        }
        else {
          $('.div12').hide();
            }
        });
    });
    //연락처에 버튼 값 삽입
    function input_tel(num){   
        if($("#txt1").val().length<13){//id 입력 수 제한
            $("#txt1").val($("#txt1").val()+num.innerText);// += 텍스트
            if(($("#txt1").val()+num.innerText).length == 9){// 텍스트 중간에 - 넣기
                const space="-";
                $("#txt1").val(($("#txt1").val())+space);
            }
        }
        
    }//input_tel(num)
    //인증번호input 클릭 시 버튼 호출
    $(function(){
      $('#txt2').on('click',function(){
        if($('.token').css('display') === 'none'){
          $('.token').show();
          $('.divPw1').hide();
          $('.divPw2').hide();
          $('#virtual-keyboard').hide();
          $('.pass1').show();
        } else {
          $('.token').hide();
        }
        //다른 버튼 hide
        if($('.div12').css('display') !== 'none'){
            $('.div12').hide();
        }
        });
    });
    //인증번호 받기 클릭 시 숫자패드 호출
    function input_token(){
        $('.div1234').show();
        $('#virtual-keyboard').hide();
    }
    
    //비밀번호input클릭 시 버튼 호출
    $(function(){
        $('#txt4').on('click',function(){
          if($('.divPw1').css('display') === 'none'){
            $('.divPw1').show();
            $('.token').hide();
            $('.div1234').hide();
            $('.divPw2').hide();
            $('#virtual-keyboard').hide();
            $('.pass1').show();
          } else {
            $('.divPw1').hide();
              }
      });
    });//
    $(function(){
        $('#txt5').on('click',function(){
          if($('.divPw2').css('display') === 'none'){
            $('.divPw2').show();
            $('.token').hide();
            $('.div1234').hide();
            $('.divPw1').hide();
            $('.pass1').show();
          } else {
            $('.divPw2').hide();
              }
      });
    });//
    
    //비밀번호 버튼값 입력
    function input_pass1(num){    
        $("#txt4").val($("#txt4").val()+num.innerText);
    }//input_pass1(num)
    //비밀번호 확인 버튼값 입력
    function input_pass2(num){    
        $("#txt5").val($("#txt5").val()+num.innerText);
    }//input_pass1(num)
    
    
    //버튼 입력 값 지우기 (ID,PW)
    function input_num_backspace3() {
        var backspace_all = "010-";
        $("#txt1").val(backspace_all);
        }
    //비밀번호 값 지우기
    function input_num_backspace5() {
        var backspace_all = "";
        $("#txt4").val(backspace_all);
        }
    //비밀번호확인 값 지우기
    function input_num_backspace6() {
        var backspace_all = "";
        $("#txt5").val(backspace_all);
        }
    //이름 값 지우기
    function name_era() {
        var backspace_all = "";
        $("#test-inputbox").val(backspace_all);//txt3
        }
    
    
////////////////////////////////////////////////////////////////////////////////////////// 
  //이름 클릭시 키패드호출
    $(function(){
        $('#test-inputbox').on('click',function(){
          if($('#virtual-keyboard').css('display') === 'none'){
            $('#virtual-keyboard').show();
            $('.token').hide();
            $('.div1234').hide();
            $('.divPw1').hide();
            $('.divPw2').hide();
            $('.pass1').hide();
            $('.div12').hide();
          } else {
            $('#virtual-keyboard').hide();
            $('.pass1').show();
              }
      });
    });
    //확인 눌렀을때 창 닫힘
    $(function(){
        $('#excell').on('click',function(){
          if($('.pass1').css('display') === 'none'){
            $('.pass1').show();
            $('#virtual-keyboard').hide();
          }
        });
        $('#tel_excell').on('click',function(){
        	$('.div12').hide();
        });
        $('#pw1_excell').on('click',function(){
        	$('.divPw1').hide();
        });
        $('#pw2_excell').on('click',function(){
        	$('.divPw2').hide();
        });
        //main화면에서 id,pw 확인창 누를때 창 닫힘
        if($('div1').css('display') !== 'none' || $('div2').css('display') !== 'none'){
	        $('#mainID_excell').on('click',function(){
	        	$('.div1').hide();
	        });
	        $('#mainPW_excell').on('click',function(){
	        	$('.div2').hide();
	        });
        }
    });
    //////////////////////////////////////////////////////////////////////////////////
</script>

<!--회원가입 레이어팝업, 로그인, 퇴실 (알림팝업띄워야함)-->
<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
    <script>
        $(document).ready(function(){
            $(".open").on('click',function(){
                $(".popup").show();
                $(".dim").show();
            });
            $(".popup .close").on('click',function(){
                $(this).parent().hide();
                $(".dim").hide();
            });
        });
        function memberOut(){//팝업예정
            alert("퇴실되었습니다. 다음잔여시간 : HH시간MM분");
            location.href="kiosk2.html";
        }
        
    </script>
</head>
<!--body-->
<body>
<div style="text-align: right; margin-right: 260px;">
<script>
				//현재날짜,시간 시작
				today = new Date() 
					if(today.getMinutes() < 10){ 
						pad = "0" 
					} 
					else 
						pad = ""; 
				
				document.write("지금은 ",today.getYear()+1900,"년 ",today.getMonth()+1,"월 ",today.getDate(),"일 "); 
				document.write(today.getHours(),"시",pad,today.getMinutes(),"분 입니다. ") 
				document.write("<B><FONT COLOR=BLUE>") 
				
				if((today.getHours() < 12) && (today.getHours() >= 6)){ 
					document.write("good morning! 오늘도 좋은하루^^") 
				} 
				if((today.getHours() >= 12) && (today.getHours() < 19)){ 
					document.write("하시는 일 잘 되시길 ^^") 
				} 
				if((today.getHours() >= 19) && (today.getHours() <= 23)){ 
					document.write("좋은 밤 되세요 !") 
				} 
				if((today.getHours() >= 0) && (today.getHours() < 4)){ 
					document.write("주무실 시간이네요 건강을 생각해서 이제 주무세요") 
				} 
				if((today.getHours() >= 4) && (today.getHours() <= 6)){ 
					document.write("상쾌한 기분으로 출발하세요!") 
				} 
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
        <div class="jpg_div_it">
            <img class="img1" src="../images/photo.png" style="max-width: 100%; height: auto;">
        </div>
    </div>
<!--관리자 전화번호-->
<div class="reader_t">
<!-- 멘트시작 -->
<form name=tickform>
<input type=text name=tickfield size="45" style="border: none; background: transparent; font-size: 15px; font-style:italic;" readonly="readonly">
</form>
<SCRIPT LANGUAGE="JavaScript"> 
var max = 0;
function textlist() { max = textlist.arguments.length;
for (i = 0; i < max; i++) this[i] = textlist.arguments[i]; }
tl = new textlist("안녕하세요. 무인스터디카페를 이용해주셔서 감사합니다..",
"오늘도 화이팅하시고 항상 건강에 유의하시길 바랍니다..",
"코로나19로 인해 상시 마스크 착용을 협조부탁드리며",
"문의사항은 아래의 번호로 연락 부탁드립니다 ^^.. ▼");
var x = 0;
var pos = 0;
var l = tl[0].length;
function textticker() {
document.tickform.tickfield.value = tl[x].substring(0, pos) + "_";
if (pos++ == l) { pos = 0; setTimeout("textticker()", 2000);
if (++x == max) x = 0; l = tl[x].length; }
else setTimeout("textticker()", 50); }
textticker();
</script><!-- 멘트끝 -->사장님. 010-6581-7271</div>
    <div class="login">
    <div class="login_div">
        <!--폼 : 아이디 및 비밀번호 전송-->
        <div class="login_div_form">
            <form action="memberLogin" method="POST" id="memberLogin" name="memberLogin"><br><br>
                <!--아이디-->
                    <img src="../images/handnum.jpg" width="50px" height="50px" align="center">
                    <input type="text" class="id" name="id" id="id" maxlength="13" readonly="readonly" placeholder="010-" value="010-"/><br>
                <!--비밀번호-->
                    <img src="../images/loginicon.jpg" width="50px" height="50px" align="center">
                    <input type="password" class="pw" id="pw" name="pw" placeholder="비밀번호" readonly="readonly"><br><br>
                <!--회원가입,로그인,퇴실 버튼-->
                    <a href="#a" class="open"><button type="button" id="member_btn" onclick="popup()">회원가입</button></a>
                    <button type="button" id="login_btn">로그인</button>
                    <button type="button" id="out_btn" onclick="memberOut()">퇴실</button>
            </form>
            </div>
        </div>
    <!--숫자 입력버튼-->
    <div class="login_input_div">
        <div class="login_input_div_btn"><img id="wc" src="../images/wc.jpg"><br>
            <div class="div1" style="display: none; position: absolute; width: 100%; top: 30px;">
                <button class="btn1" value="1" onclick="input_id(this)">1</button>
                <button class="btn1" value="2" onclick="input_id(this)">2</button>
                <button class="btn1" value="3" onclick="input_id(this)">3</button><br>
                <button class="btn1" value="4" onclick="input_id(this)">4</button>
                <button class="btn1" value="5" onclick="input_id(this)">5</button>
                <button class="btn1" value="6" onclick="input_id(this)">6</button><br>
                <button class="btn1" value="7" onclick="input_id(this)">7</button>
                <button class="btn1" value="8" onclick="input_id(this)">8</button>
                <button class="btn1" value="9" onclick="input_id(this)">9</button><br>
                <button class="btn1" value="" onclick="input_num_backspace1(this)">←</button>
                <button class="btn1" value="0" onclick="input_id(this)">0</button>
                <button class="btn1" id="mainID_excell" style="width: 65px; height: 60px; 
                font-size: 20px; MARGIN: 0px 4px 4px 0px; padding-left: 10px; border-radius: 50%;">확인</button>
            </div>
            <div class="div2" style="display: none; position: absolute; width: 100%; top: 30px;">
                <button class="btn2" value="1" onclick="input_pw(this)">1</button>
                <button class="btn2" value="2" onclick="input_pw(this)">2</button>
                <button class="btn2" value="3" onclick="input_pw(this)">3</button><br>
                <button class="btn2" value="4" onclick="input_pw(this)">4</button>
                <button class="btn2" value="5" onclick="input_pw(this)">5</button>
                <button class="btn2" value="6" onclick="input_pw(this)">6</button><br>
                <button class="btn2" value="7" onclick="input_pw(this)">7</button>
                <button class="btn2" value="8" onclick="input_pw(this)">8</button>
                <button class="btn2" value="9" onclick="input_pw(this)">9</button><br>
                <button class="btn2" value="" onclick="input_num_backspace2(this)">←</button>
                <button class="btn2" value="0" onclick="input_pw(this)">0</button>
                <button class="btn2" id="mainPW_excell" style="width: 65px; height: 60px;
                font-size: 20px; MARGIN: 0px 4px 4px 0px; padding-left: 10px;border-radius: 50%;">확인</button>
              </div>
            </div>
        </div>
    <!--하단 이미지-->
    <div class="footer_div">
        <img class="img2" src="../images/photo2.png" style="width: 100%; height: auto;">
    </div>
</div>
</div>












<!--레이어 팝업 회원가입 폼-->
<div class="popup">
    
    <h2>무인 스터디카페 회원가입</h2>
    <div class="con">
        <!--연락처-->
        <button type="button" class="div12" onclick="input_tel(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 300px; top: 270px;">1</button>
        <button type="button" class="div12" onclick="input_tel(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 270px;">2</button>
        <button type="button" class="div12" onclick="input_tel(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 180px; top: 270px;">3</button>
        <button type="button" class="div12" onclick="input_tel(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 300px; top: 320px;">4</button>
        <button type="button" class="div12" onclick="input_tel(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 320px;">5</button>
        <button type="button" class="div12" onclick="input_tel(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 180px; top: 320px;">6</button>
        <button type="button" class="div12" onclick="input_tel(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 300px; top: 370px;">7</button>
        <button type="button" class="div12" onclick="input_tel(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 370px;">8</button>
        <button type="button" class="div12" onclick="input_tel(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 180px; top: 370px;">9</button>
        <button type="button" class="div12" onclick="input_num_backspace3(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 300px; top: 420px;">←</button>
        <button type="button" class="div12" onclick="input_tel(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 420px;">0</button>
        <button type="button" id="tel_excell" class="div12" style="display:none; position: absolute; width: 50px; height: 45px; right: 175px; top: 418px; font-size: 15px; border-radius: 50%;">확인</button>

        <!--인증번호-->
        <button type="button" class="token" onclick="input_token()" style="display:none; position: absolute; width: 90px; height: 20px; right: 290px; top: 302px; border-radius: 10%; font-size: 11px;">인증번호 받기</button>
        <button type="button" class="div1234" onclick="input_tokenVal(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 300px; border-radius: 10%; font-size: 15px;">1</button>
        <button type="button" class="div1234" onclick="input_tokenVal(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 190px; top: 300px; border-radius: 10%; font-size: 15px;">2</button>
        <button type="button" class="div1234" onclick="input_tokenVal(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 140px; top: 300px; border-radius: 10%; font-size: 15px;">3</button>
        <button type="button" class="div1234" onclick="input_tokenVal(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 350px; border-radius: 10%; font-size: 15px;">4</button>
        <button type="button" class="div1234" onclick="input_tokenVal(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 190px; top: 350px; border-radius: 10%; font-size: 15px;">5</button>
        <button type="button" class="div1234" onclick="input_tokenVal(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 140px; top: 350px; border-radius: 10%; font-size: 15px;">6</button>
        <button type="button" class="div1234" onclick="input_tokenVal(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 400px; border-radius: 10%; font-size: 15px;">7</button>
        <button type="button" class="div1234" onclick="input_tokenVal(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 190px; top: 400px; border-radius: 10%; font-size: 15px;">8</button>
        <button type="button" class="div1234" onclick="input_tokenVal(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 140px; top: 400px; border-radius: 10%; font-size: 15px;">9</button>

		<!--비밀번호-->
        <button type="button" class="divPw1" onclick="input_pass1(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 300px; top: 270px;">1</button>
        <button type="button" class="divPw1" onclick="input_pass1(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 270px;">2</button>
        <button type="button" class="divPw1" onclick="input_pass1(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 180px; top: 270px;">3</button>
        <button type="button" class="divPw1" onclick="input_pass1(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 300px; top: 320px;">4</button>
        <button type="button" class="divPw1" onclick="input_pass1(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 320px;">5</button>
        <button type="button" class="divPw1" onclick="input_pass1(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 180px; top: 320px;">6</button>
        <button type="button" class="divPw1" onclick="input_pass1(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 300px; top: 370px;">7</button>
        <button type="button" class="divPw1" onclick="input_pass1(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 370px;">8</button>
        <button type="button" class="divPw1" onclick="input_pass1(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 180px; top: 370px;">9</button>
        <button type="button" class="divPw1" onclick="input_num_backspace5(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 300px; top: 420px;">←</button>
        <button type="button" class="divPw1" onclick="input_pass1(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 420px;">0</button>
        <button type="button" id="pw1_excell" class="divPw1" style="display:none; position: absolute; width: 50px; height: 45px; right: 175px; top: 418px; font-size: 15px; border-radius: 50%;">확인</button>
        
        <!--비밀번호 확인-->
        <button type="button" class="divPw2" onclick="input_pass2(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 300px; top: 270px;">1</button>
        <button type="button" class="divPw2" onclick="input_pass2(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 270px;">2</button>
        <button type="button" class="divPw2" onclick="input_pass2(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 180px; top: 270px;">3</button>
        <button type="button" class="divPw2" onclick="input_pass2(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 300px; top: 320px;">4</button>
        <button type="button" class="divPw2" onclick="input_pass2(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 320px;">5</button>
        <button type="button" class="divPw2" onclick="input_pass2(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 180px; top: 320px;">6</button>
        <button type="button" class="divPw2" onclick="input_pass2(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 300px; top: 370px;">7</button>
        <button type="button" class="divPw2" onclick="input_pass2(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 370px;">8</button>
        <button type="button" class="divPw2" onclick="input_pass2(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 180px; top: 370px;">9</button>
        <button type="button" class="divPw2" onclick="input_num_backspace6(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 300px; top: 420px;">←</button>
        <button type="button" class="divPw2" onclick="input_pass2(this)" style="display:none; position: absolute; width: 40px; height: 40px; right: 240px; top: 420px;">0</button>
        <button type="button" id="pw2_excell" class="divPw2" style="display:none; position: absolute; width: 50px; height: 45px; right: 175px; top: 418px; font-size: 15px; border-radius: 50%;">확인</button>
        
       
        
	
<form action="memberInsert" method="POST" id="memberInsert" name="memberInsert">
<table class="type1">
    <caption>
        <details class="hide">
            <summary>member_join</summary>
            <!-- <div>연락처, 인증번호, 이름, 비밀번호, 비밀번호확인,약관동의</div> -->
        </details>
    </caption>
    <colgroup>
    <col style="width: 111px;">
    <col>
    </colgroup>
        <tbody>
            <tr>
                <th><label for="txt1">연락처</label><span>＊
                <em class="hide">필수입력</em></span></th>
                <td><input type="text" id="txt1" name="txt1" placeholder="010-" value="010-"></td>
            </tr>
            <tr>
                <th><label for="txt2">인증번호</label><span>＊</span></th>
                <td><input type="text" id="txt2" name="txt2" placeholder="N자리"></td>
            </tr>
            <tr>
                <th><label for="test-inputbox">이름</label><span>＊
                <em class="hide">필수입력</em></span></th>
                <td><input type="text" id="test-inputbox" name="txt3" placeholder="홍길동"></td>
            </tr>
            <tr class="pass1">
                <th><label for="txt4">비밀번호</label><span>＊</span></th>
                <td><input type="password" id="txt4" name="txt4" placeholder="****"></td>
            </tr>
            <tr class="pass1">
                <th><label for="txt5">비밀번호확인</label><span>＊</span></th>
                <td><input type="password" id="txt5" name="txt5" placeholder="****"></td>
            </tr>
        </tbody>
        </table>
<!--한글 키패드 부분-->
<div id="virtual-keyboard" style="display: none;">
	<!--이름에 쌍자음이 들어갈일 없음/주석처리-->
	<!-- <ul>
		<li>ㅃ</li>
		<li>ㅉ</li>
		<li>ㄸ</li>
		<li>ㄲ</li>
		<li>ㅆ</li>
	</ul> -->
	<ul style="margin-top:10px;">
		<li>ㅂ</li>
		<li>ㅈ</li>
		<li>ㄷ</li>
		<li>ㄱ</li>
		<li>ㅅ</li>
		<li>ㅛ</li>
		<li>ㅕ</li>
		<li>ㅑ</li>
		<li>ㅐ</li>
		<li>ㅔ</li>
		<li>ㅖ</li>
	</ul>
	<ul style="margin-left:25px;">
		<li>ㅁ</li>
		<li>ㄴ</li>
		<li>ㅇ</li>
		<li>ㄹ</li>
		<li>ㅎ</li>
		<li>ㅗ</li>
		<li>ㅓ</li>
		<li>ㅏ</li>
		<li>ㅣ</li>
	</ul>
	<ul style="margin-left:50px;">
		<li>ㅋ</li>
		<li>ㅌ</li>
		<li>ㅊ</li>
		<li>ㅍ</li>
		<li>ㅠ</li>
		<li>ㅜ</li>
		<li>ㅡ</li>
		<button onclick="name_era()" type="button" id="excel" style="border:1px solid #c8c8c8; background: white; font-size: 14px; border-radius: 3px; width:60px; height: 42px;">
		지우기</button>
		<button type="button" id="excell" style="border:1px solid #c8c8c8; background: white; font-size: 14px; border-radius: 3px; width:150px; height: 42px;">
		확인</button>
		
	</ul>
	</div>
        <div class="agree">
            <input type="checkbox" id="chk1" name="chk1" value = "y"><label for="chk1"><span>[필수]</span>개인정보 수집 및 이용 동의</label>
            <a href="#" class="view">전문보기</a>
        </div>
    </form>
</div>
        <div class="txt_center">
            <a onclick = "" class="btn_type1" id="memberMove">회원가입</a>
<!--             <a href="#a" class="btn_type1" id="memberMove">회원가입</a> -->
        </div>
        <a href="#" class="close"><img src="../images/close.png" alt="닫기"></a>
</div> 
<div class="dim"></div>
<!--회원가입 폼-->
<script type="text/javascript">
    $(document).ready(function(){
    	$('#memberMove').on('click',function(){
    		document.memberInsert.submit();
    	});
    });
    /* function memberOk(){
    	alert("test");
    	document.memberInsert.submit();
    } */
    $(document).ready(function(){
    	$('#login_btn').on('click',function(){
    		document.memberLogin.submit();
    	});
    });
    
</script>
</body>
</html>