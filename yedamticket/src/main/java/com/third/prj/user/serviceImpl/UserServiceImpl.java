package com.third.prj.user.serviceImpl;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.apache.commons.mail.HtmlEmail;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Repository;

import com.third.prj.moviereservation.service.MovieReservVO;
import com.third.prj.performance.service.PerformanceVO;
import com.third.prj.performancereservation.service.PerformanceReservationVO;
import com.third.prj.point.service.PointCriteriaVO;
import com.third.prj.point.service.PointVO;
import com.third.prj.user.mapper.UserMapper;
import com.third.prj.user.service.CriteriaVO;
import com.third.prj.user.service.UserCriteriaVO;
import com.third.prj.user.service.UserPointViewVo;
import com.third.prj.user.service.UserService;
import com.third.prj.user.service.UserVO;

@Repository("userDao")
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserMapper mapper;

	@Autowired
	private SqlSession sqlSession;
	
//	@Inject
//	private BCryptPasswordEncoder pwdEncoder;

	@Override
	public int userInsert(UserVO vo) {
		return mapper.userInsert(vo);
	}

	private String email;
	private String password;

	/*
	 * @Override public int userPointUpdate(UserVO vo) { return
	 * mapper.userPointUpdate(vo); }
	 */

	@Override
	public int idChk(UserVO vo) {
		return mapper.idChk(vo);
	}

	@Override
	public List<UserVO> userList(CriteriaVO cri) {
		return mapper.userList(cri);
	}

	@Override
	public UserVO userSelect(UserVO vo) {
		return mapper.userSelect(vo);
	}

	@Override
	public UserVO getUser(UserVO vo) {
		return mapper.getUser(vo);
	}

	@Override
	public int emailCheck(String email) {
		return mapper.emailCheck(email);
	}

	@Override
	public int kakaoInsert(UserVO vo) {
		return mapper.kakaoInsert(vo);
	}

	@Override
	public int userUpdate(UserVO vo) {
		return mapper.userUpdate(vo);
	}

	@Override
	public int userDelete(UserVO vo) {
		return mapper.userDelete(vo);
	}

	/*
	 * @Override public int userCharge(UserVO vo) { return mapper.userCharge(vo); }
	 */

	@Override
	public int userPointUpdate(int point, String id) {
		return 0;
	}

	@Override
	public UserVO userSelectOne(UserVO vo) {
		// TODO Auto-generated method stub
		return mapper.userSelectOne(vo);
	}
	
	@Override
	public UserVO loginChk(UserVO vo) {
		return sqlSession.selectOne("loginChk", vo);
	}

	@Override
	public UserVO loginChk(UserVO vo, HttpSession session) {
		return mapper.loginChk(vo);

	}

	@Override
	public List<UserPointViewVo> pointBuyList(UserPointViewVo vo) {
		// TODO Auto-generated method stub
		return mapper.pointBuyList(vo);
	}

	@Override
	public List<MovieReservVO> mvRList(UserCriteriaVO cri) {
		// TODO Auto-generated method stub
		return mapper.mvRList(cri);
	}

	@Override
	public int getMTotal(UserCriteriaVO cri) {
		return mapper.getMTotal(cri);
	}

	@Override
	public List<PerformanceVO> pfRList(UserCriteriaVO cri) {
		return mapper.pfRList(cri);
	}

	@Override
	public int getFTotal(UserCriteriaVO cri) {
		return mapper.getFTotal(cri);
	}

	@Override
	public List<PointVO> pointBuyList2(PointCriteriaVO cri) {
		return mapper.pointBuyList2(cri);
	}

	@Override
	public int pointBuyTotal(PointCriteriaVO cri) {
		return mapper.pointBuyTotal(cri);
	}

	@Override
	public UserPointViewVo userPoint(UserPointViewVo vo) {
		return mapper.userPoint(vo);
	}

	public int getTotal(CriteriaVO cri) {
		return mapper.getTotal(cri);
	}

	public int userCharge(Map<String, Object> map) {
		return mapper.userCharge(map);
	}

	@Override
	public List<UserVO> userList() {
		return null;
	}

	@Override
	public int reservChk(UserVO userVO) {
		return mapper.reservChk(userVO);
	}

	@Override
	public List<PerformanceReservationVO> getprList(UserCriteriaVO cri) {
		return mapper.getprList(cri);
	}

	@Override
	public List<PerformanceReservationVO> prList(UserCriteriaVO cri) {
		return mapper.prList(cri);
	}

	@Override
	public UserVO getUser2(String Uid) {
		return mapper.getUser2(Uid);
	}

	@Override
	public int reservedBuy(Map<String, Object> map) {
		return mapper.reservedBuy(map);
	}

	@Override
	public int marketBuy(Map<String, Object> map) {
		return mapper.marketBuy(map);
	}

	@Override
	public String searchId(String name, String phone) {
		// TODO Auto-generated method stub
		return mapper.searchId(name, phone);
	}

	@Override
	public boolean findPw(UserVO vo) {
		// TODO Auto-generated method stub
		UserVO uv = mapper.selectByMemberId(vo.getUId(), vo.getEmail());
		System.out.println("???????????? ??????????");
		System.out.println(uv);
		if (uv == null) {
			return false;
		}
		// ?????? ???????????? ??????
		String pw = "";
		for (int i = 0; i < 12; i++) {
			pw += (char) ((Math.random() * 26) + 97);
		}

//		String pw2 = pwdEncoder.encode(pw);
//		System.out.println(pw2);
		
		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder(10);
		vo.setPwd(pwdEncoder.encode(pw));
		

//		BCryptPasswordEncoder pwdEncoder = new BCryptPasswordEncoder(10);
//		String pw2 = pwdEncoder.encode(pw);
//		System.out.println(pw2);
//		vo.setPwd(pw2);

		System.out.println("???????????? ?????????2 ?");
		System.out.println(uv);
		// ???????????? ??????
		mapper.updatePassword2(vo);
		
		System.out.println("???????????? ?????????3 ?");
		System.out.println(vo);
		// ???????????? ?????? ?????? ??????
		sendEmail(vo, pw, "findpw");
		
		return true;
	}

	@Override
	public void sendEmail(UserVO vo, String pw, String div) {
		// Mail Server ??????

		System.out.println("?????????????");
		System.out.println(vo);
		/*
		 * String charSet = "utf-8"; String hostSMTP = "smtp.gmail.com"; // ????????? ?????????
		 * smtp.naver.com String hostSMTPid = email; // ????????? ?????? ????????? ?????? String hostSMTPpwd
		 * = password; // ????????? ?????? ????????????
		 */		
		
		String charSet = "utf-8";
		String hostSMTP = "smtp.gmail.com"; //????????? ????????? smtp.naver.com
		String hostSMTPid = "qqoxmaos2@gmail.com";
		String hostSMTPpwd = "jozwvmanmgynsppn";
		
		

		// ????????? ?????? EMail, ??????, ??????
		String fromEmail = "qqoxmaos2@gmail.com";
		String fromName = "????????????";
		String subject = "";
		String msg = "";


		if (div.equals("findpw")) {
			subject = "?????? ???????????? ?????????.";
			msg += "<div align='center' style='border:1px solid black; font-family:verdana; padding: 50px 50px 50px 50px;'>";
			msg += "<p>???????????????. ?????? ??? ?????? ????????? ????????????????????? ?????? ???????????? ???????????? YD TICKET?????????.</p>";
			msg += "<p>?????? (???)??????????????? ????????? ????????? ???????????? ??????????????????.</p>";
			msg += "<h3 style='color: #933880;'>";
			msg += vo.getUId() + "?????? ?????? ??????????????? : ";
			msg += pw + " ?????????</p></h3><br>";
			msg += "<p>???????????? ????????????????????? ???????????? ????????? ????????? ?????????.</p>";
			msg += "<a style='text-decoration:none;color:navy;font-size:20px;font-weight:bold;' href='localhost/prj/userLoginForm.do'><button style='width:300px;height:50px' onclick='location.href='localhost/prj/userLoginForm.do'>??????????????????????????????</button></a><br>";
			msg += "<p>??? ????????? ??????????????????, ????????? ?????? ????????? ???????????? ????????????.</p>";
			msg += "<p>(???)??????????????? ???????????? ???????????? ????????? ????????? ????????? ???????????? ??????????????????.</p>";
			msg += "<br>";
			msg += "<hr>";
			msg += "<br>";
			msg += "<p>&copy;YEDAMTICKET Corp.All rights reserved</p></div>";
	
		}

		String mail = vo.getEmail();
		System.out.println("???????????? ?????????4 ?");
		System.out.println(vo.getEmail());

		try {
			HtmlEmail email = new HtmlEmail();
			System.out.println("1");
			email.setDebug(true);
			System.out.println("2");
			email.setCharset(charSet);
			System.out.println("3");
			/* email.setSSLOnConnect(true); */
			email.setSSL(true);
			System.out.println("4");
			email.setHostName(hostSMTP);
			System.out.println("5");
			email.setSmtpPort(465); // ????????? ????????? 587		
			System.out.println("6");
			email.setAuthentication(hostSMTPid, hostSMTPpwd);
			System.out.println("7");
			/* email.setStartTLSEnabled(true); */
			email.setTLS(true);
			System.out.println("8");
			System.out.println(email.addTo("gmswjrdl7@gmail.com"));
			email.addTo(mail, charSet);
			
			/*
			 * System.out.println("9"); email.addTo("????????????");
			 */
			System.out.println("9");
			/* email.setFrom("qqoxmaos2@gmail.com"); */
			email.setFrom(fromEmail, fromName, charSet);
			System.out.println("10");
			email.setSubject(subject);
			System.out.println("11");
			email.setHtmlMsg(msg);
			System.out.println("12");
			email.send();

			System.out.println("13");
		} catch (Exception e) {
			System.out.println("???????????? ?????? : " + e);
		}

	}

	

	@Override
	public int updatePassword2(UserVO vo) {
		// TODO Auto-generated method stub
		return mapper.updatePassword2(vo);
	}

	@Override
	public UserVO selectByMemberId(String UId, String email) {
		// TODO Auto-generated method stub
		return mapper.selectByMemberId(UId, email);
	}

	@Override
	public int payPoint(UserVO vo) {
		// TODO Auto-generated method stub
		return mapper.payPoint(vo);
	}

	@Override
	public int pwdCheck(UserVO vo) {
		// TODO Auto-generated method stub
		return mapper.pwdCheck(vo);
	}

	@Override
	public int pwdUpdate(UserVO vo) {
		// TODO Auto-generated method stub
		return mapper.pwdUpdate(vo);
	}

	@Override
	public String pwdCheck2(String UId) {
		// TODO Auto-generated method stub
		return mapper.pwdCheck2(UId);
	}


}
