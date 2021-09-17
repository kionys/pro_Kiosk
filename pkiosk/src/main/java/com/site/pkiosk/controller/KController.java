package com.site.pkiosk.controller;

import java.net.http.HttpResponse;
import java.util.logging.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.site.pkiosk.service.MemberService;
import com.site.pkiosk.vo.pkioskVo;

@Controller
public class KController {
	@Autowired
	MemberService memberService;
	
	@RequestMapping("index")
	public String index() {
		return "/index";
	}
	//메인화면으로 가기
	@GetMapping("kiosk_main")
	public String kiosk_main() {
		return "/kiosk_main";
	}
	//메인화면의 회원가입 레이어에서 회원가입 버튼 클릭했을 시(회원가입)
	@RequestMapping(value="/memberInsert", method = RequestMethod.POST)
	public String memberInsert(pkioskVo pkioVo,Model model) {
		//result=1,-1
		int result = memberService.memberInsert(pkioVo);
		System.out.println(pkioVo.getTxt1());
		System.out.println(pkioVo.getChk1());
		
		model.addAttribute("result",result);
		return "/memberInsert";
	}
	//메인화면의 로그인버튼 클릭 시(로그인 성공,실패)
	/*@RequestMapping(value="/memberLogin",method = RequestMethod.POST)
	public String memberLogin() {
		return "/memberLogin";
	}*/
	@RequestMapping("memberLogin")
	public String memberLogin(@RequestParam String id,
								@RequestParam String pw,
								HttpServletRequest request,Model model) {
		HttpSession session = request.getSession();
		pkioskVo pkioVo = memberService.memberLogin(id,pw);
		if(pkioVo != null) {
			session.setAttribute("session_flag", "success");
			session.setAttribute("session_id", pkioVo.getTxt1());
		}else {
			session.setAttribute("session_flag", "fail");
		}
		System.out.println(id);
		System.out.println(pw);
		
		return "/memberLogin";
	}
	//로그아웃
	@RequestMapping("/memberLogout")
	public String memberLogout() {
		return "/memberLogout";
	}
	//이용권구매로
	@RequestMapping("kiosk_login")
	public String kiosk_login() {
		return "/kiosk_login";
	}
	
	
	
	//초안페이지 GET
		//이용권구매->좌석선택
		@RequestMapping("kiosk_seat")
		public String memberTicket() {
			return "/kiosk_seat";
		}
		//좌석선택->개인석 결제창
		@GetMapping("kiosk_payment")
		public String kiosk_payment() {
			return "/kiosk_payment";
		}
		//좌석선택->스터디룸 결제창
		@GetMapping("kiosk_room_payment")
		public String kiosk_room_payment() {
			return "/kiosk_room_payment";
		}
		//입실->좌석 선택->입실완료 순
		@GetMapping("kiosk_enter_seat")
		public String kiosk_enter_seat() {
			return "/kiosk_enter_seat";
		}
		//시간연장 선택->좌석 보여주기
		@GetMapping("kiosk_time_extension")
		public String kiosk_time_extension() {
			return "/kiosk_time_extension";
		}
		//자리이동 선택->좌석 보여주기
		@GetMapping("kiosk_change_seat")
		public String kiosk_change_seat() {
			return "/kiosk_change_seat";
		}
}
