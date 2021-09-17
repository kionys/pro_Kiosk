package com.site.pkiosk.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.site.pkiosk.mapper.KMapper;
import com.site.pkiosk.vo.pkioskVo;

@Service
public class MemberServiceImpl implements MemberService {

	@Autowired
	KMapper kmapper;
	
	@Override
	public int memberInsert(pkioskVo pkioVo) {
		int result = kmapper.memberInsert(pkioVo);
		return result;
	}

	@Override
	public pkioskVo memberLogin(String id, String pw) {
		System.out.println(id);
		System.out.println(pw);
		pkioskVo pkioVo = kmapper.memberLogin(id,pw);
		System.out.println(pkioVo);
		return pkioVo;
	}


}
