package com.smhrd.myapp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.smhrd.model.MemberVO;
import com.smhrd.service.MemberService;


@Controller
@RequestMapping(value="/member")
public class MemberController {
	
	@Autowired
	private MemberService memberservice;
	
	
	//회원가입 페이지 이동
	@RequestMapping(value = "join", method = RequestMethod.GET)
	public void loginGET() {

	}
	
	//로그인 페이지 이동
	@RequestMapping(value = "login", method = RequestMethod.GET)
	public void joinGET() {

		
	}
	
	//회원가입
		@RequestMapping(value="/join", method=RequestMethod.POST)
		public String joinPOST(MemberVO member) throws Exception{
			// 회원가입 서비스 실행
			memberservice.memberJoin(member);
			return "redirect:/main";
			
		}
		
		// 아이디 중복 검사
		@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
		@ResponseBody
		public String memberIdChkPOST(String memberId) throws Exception{
			
			int result=memberservice.idCheck(memberId);
			
			if(result !=0) {
				return "fail";
			}else{
				return "success";
			}
			
		} 

}
