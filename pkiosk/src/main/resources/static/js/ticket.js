/*<script type="text/javascript" language="javascript">*/


    ////이용권 체크 시
        function view1(){
        var f=document.form;
        if(f.type1.checked==false){
            document.all.cattery1.style.display="none";
            document.all.cattery2.style.display="none";
            document.all.cattery3.style.display="none";
            document.all.cattery4.style.display="none";
        }else{
            document.all.cattery1.style.display="";
			for(var i=0; i<document.form.length; i++){
			document.form.elements[i].checked=false;//이용권 클릭시 하위checked해제
			}
			f.type1.checked=true;//이용권버튼은 체크로 둔다.
            }
		
        }//--
    //개인석 체크 시
            function view2(){
                var f=document.form;
                //체크안되어있을때
                if(f.type2[0].checked==false){
                    document.all.cattery2.style.display="none";
                    document.all.cattery4.style.display="none";
                    document.all.cattery5.style.display="none";
                //체크되어있을때
                }else{
                    document.all.cattery3.style.display="none";
                    document.all.cattery2.style.display="";        
                    }
                }//--



    //스터디룸 체크 시
            function view3(e){
                var f=document.form;
                //체크안되어있을때
                if(f.type2[0].checked==false){
                    document.all.cattery2.style.display="none";
                    document.all.cattery3.style.display="";
                    document.all.cattery4.style.display="none";
                    document.all.cattery5.style.display="none";
                //체크되어있을때
                }else{
                    document.all.cattery3.style.display="";
					/*document.getElementById('type3').prop("checked", false);
					
					0831
					
					*/
					
					
                    }
                }//--





    //1회이용권 체크 시
            function view4(){
                var f=document.form;
                //체크안되어있을때
                if(f.type3[0].checked==false){
                    document.all.cattery4.style.display="none";
                //체크되어있을때
                }else{
                    document.all.cattery4.style.display="none";
                    }
                }//--
    //시간제이용 체크 시
            function view5(){
                var f=document.form;
                //체크안되어있을때
                if(f.type3[0].checked==false){
                    document.all.cattery3.style.display="none";
                    document.all.cattery4.style.display="";
                //체크되어있을때
                }else{
                    document.all.cattery5.style.display="";
                    }
                }//--
    //기간제이용 체크 시
            function view6(){
                var f=document.form;
                //체크안되어있을때
                if(f.type3[0].checked==false){
                    document.all.cattery3.style.display="none";
                    document.all.cattery4.style.display="";
    //체크되어있을때
                }else{
                    document.all.cattery5.style.display="";
                    }
                }//--
    //고정석이용권 체크 시
            function view7(){
                var f=document.form;
                //체크안되어있을때
                if(f.type3[0].checked==false){
                    document.all.cattery4.style.display="none";
                //체크되어있을때
                }else{
                    document.all.cattery4.style.display="none";
                    }
                }//--
///////////////////////////////////////////////////////////////////////////////////////////////////////////////
            //여러개 중 하나만 체크되게 하는 함수(이용권선택 하위박스) - 스터디룸클릭시
            function checkOnlyOne(element) {
			var f=document.form;
			for(var i=0; i<document.form.length; i++){
				document.form.elements[i].checked=false;//개인석,스터디룸 클릭시 하위checked해제
				f.type1.checked=true;//이용권버튼은 체크로둔다.
				}
                const checkboxes = document.getElementsByName("type2");
                checkboxes.forEach((cb) => {
                    cb.checked = false;
                })
                    element.checked = true;
			
                }
            //여러개 중 하나만 체크되게 하는 함수(개인석 하위박스) -1회,시간,기간...클릭시
            function checkOnlyTwo(element) {
                const checkboxes = document.getElementsByName("type3");
                checkboxes.forEach((cb) => {
                    cb.checked = false;
                })
                    element.checked = true;
					
			

                }

            //여러개 중 하나만 체크되게 하는 함수(스터디룸 하위박스) - 2인방,3인방,4인방..클릭시
            function checkOnlyRoom(element) {
                const checkboxes = document.getElementsByName("type4");
                checkboxes.forEach((cb) => {
                    cb.checked = false;
                })
                    element.checked = true;
                }
            ///바로이용,이용권구매 중 하나만 체크
            function checkOnlyRoom2(element) {
                const checkboxes = document.getElementsByName("type5");
                checkboxes.forEach((cb) => {
                    cb.checked = false;
                })
                    element.checked = true;
                }
/*        </script>*/
//////////////////////////////////////////////////////////////////////////////
			
				