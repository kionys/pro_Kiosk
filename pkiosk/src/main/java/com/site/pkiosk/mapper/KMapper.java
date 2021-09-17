package com.site.pkiosk.mapper;

import org.apache.ibatis.annotations.Mapper;

import com.site.pkiosk.vo.pkioskVo;

@Mapper
public interface KMapper {

	//회원가입
	int memberInsert(pkioskVo pkioVo);

	//로그인
	pkioskVo memberLogin(String id, String pw);

}
