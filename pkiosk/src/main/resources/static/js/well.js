 
    
    var max=0; 
    
    function textlist() { 
        max=textlist.arguments.length; 
        for (i=0; i<max; i++) 
            this[i]=textlist.arguments[i]; 
        } 
        tl = new textlist( 
            "안녕하세요..무인스터디카페에 오신걸 환영합니다..", 
            "오늘도 화이팅하시고 항상 건강에 유의하시길 바랍니다..", 
            "그럼 다음에도 또 뵐께요...^^&"
        ); 
    
        var x = 0;
        var pos = 0; 
        var l = tl[0].length; 
    
    function textticker() { 
        document.tickform.tickfield.value = tl[x].substring(0, pos) + "_"; 
        if(pos++ == l) { 
            pos = 0; 
            setTimeout("textticker()", 2000); 
        if(++x == max) x = 0; 
            l = tl[x].length; 
        } else 
            setTimeout("textticker()", 50); 
        } 
    textticker();
    //--> 
