package com.third.prj.point.web;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.third.prj.point.service.PointService;
import com.third.prj.point.service.PointVO;
import com.third.prj.user.service.UserService;
import com.third.prj.user.service.UserVO;

@Controller
public class PointController {

	@Autowired
	private UserService userDao;

	@Autowired
	private PointService pointDao;

	@RequestMapping("/point_1.do")
	public String point_1(HttpSession session) {
		String sessionId = (String) session.getAttribute("sessionId");
		System.out.println(sessionId);
		if (sessionId == null) {
			return "redirect:home.do";
		} else {
			return "point/point_1";
		}
	}

	/*
	 * @RequestMapping(value = "/point_2.do", method = RequestMethod.POST) public
	 * String point_2(Model model, @RequestParam int point, @RequestParam String id)
	 * { model.addAttribute("point", point); model.addAttribute("id", id); return
	 * "point/point_2"; }
	 */

	@RequestMapping(value = "/point_2.do", method = RequestMethod.POST)
	public String point_2(UserVO userVO, Map<String, Object> map, @RequestParam int point, @RequestParam String UId) {
		// model.addAttribute("p1", point);
		// model.addAttribute("p2", Uid);
		map.put("p1", point);
		map.put("p2", UId);
		userDao.userCharge(map);
		return "redirect:userPage.do";
	}

	/*
	 * @RequestMapping(value = "/point_2.do", method = RequestMethod.POST) public
	 * String point_3(Model model, @RequestParam int point, @RequestParam String id)
	 * { model.addAttribute("point", point); model.addAttribute("id", id); return
	 * "point/point_3"; }
	 */
	// 관리자페이지 - 매출관리

	@RequestMapping("/movieSalesChart.do")
	public String movieSalesChart() {
		return "manager/manager/managerMovieSaleChart";
	}

	@RequestMapping("/movieSales.do")
	@ResponseBody
	public List<PointVO> movieSales(PointVO vo) {
		System.out.println("========차트============");
		List<PointVO> list = pointDao.managerMovieSaleList();
		System.out.println("----------------------" + list);

		return list;
	}

	@RequestMapping("/perforSalesChart.do")
	public String perforSalesChart() {
		return "manager/manager/managerPerforSaleChart";
	}

	@RequestMapping("/perforSales.do")
	@ResponseBody
	public List<PointVO> perforSales(PointVO vo) {
		List<PointVO> list = pointDao.managerPerforSaleList();
		return list;
	}
}
