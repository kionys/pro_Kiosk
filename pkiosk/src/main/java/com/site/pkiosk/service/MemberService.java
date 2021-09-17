package com.site.pkiosk.service;

import com.site.pkiosk.vo.pkioskVo;

public interface MemberService {

	//회원가입
	int memberInsert(pkioskVo pkioVo);

	//로그인
	pkioskVo memberLogin(String id, String pw);

}
