package com.site.pkiosk.vo;

public class pkioskVo {

	String txt1;//연락처
	String txt2;//인증번호
	String txt3;//이름
	String txt4;//비밀번호
	String chk1;//약관동의
	
	public pkioskVo() {}
	
	public pkioskVo(String txt1, String txt4) {
		super();
		this.txt1 = txt1;
		this.txt4 = txt4;
	}

	public pkioskVo(String txt1, String txt2, String txt3, String txt4, String chk1) {
		super();
		this.txt1 = txt1;
		this.txt2 = txt2;
		this.txt3 = txt3;
		this.txt4 = txt4;
		this.chk1 = chk1;
	}
	public String getTxt1() {
		return txt1;
	}
	public void setTxt1(String txt1) {
		this.txt1 = txt1;
	}
	public String getTxt2() {
		return txt2;
	}
	public void setTxt2(String txt2) {
		this.txt2 = txt2;
	}
	public String getTxt3() {
		return txt3;
	}
	public void setTxt3(String txt3) {
		this.txt3 = txt3;
	}
	public String getTxt4() {
		return txt4;
	}
	public void setTxt4(String txt4) {
		this.txt4 = txt4;
	}
	public String getChk1() {
		return chk1;
	}
	public void setChk1(String chk1) {
		this.chk1 = chk1;
	}
	
	
}
