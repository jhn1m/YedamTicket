package com.third.prj.performance.serviceImpl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.third.prj.performance.mapper.PerformanceMapper;
import com.third.prj.performance.service.CriteriaVO;
import com.third.prj.performance.service.PerformanceService;
import com.third.prj.performance.service.PerformanceVO;
import com.third.prj.performance.service.PerformanceViewVO;
import com.third.prj.point.service.PointCriteriaVO;
@Repository("perDao")
public class PerformanceServiceImpl implements PerformanceService {

	@Autowired
	public PerformanceMapper mapper;
	
	@Override
	public int performanceUpdate(PerformanceVO vo) {
		return mapper.performanceUpdate(vo);
	}


	@Override
	public PerformanceVO perforSelect(PerformanceVO vo) {
		return mapper.perforSelect(vo);
	}

	@Override
	public List<PerformanceVO> companyPerforSelectList(CriteriaVO cri) {
		return mapper.companyPerforSelectList(cri);
	}


	@Override
	public List<PerformanceViewVO> pfBuyList(PerformanceViewVO vo) {
		// TODO Auto-generated method stub
		return mapper.pfBuyList(vo);
	}


	@Override
	public List<PerformanceVO> pfBuyList2(PointCriteriaVO cri) {
		// TODO Auto-generated method stub
		return mapper.pfBuyList2(cri);
	}


	@Override
	public int pfBuyTotal(PointCriteriaVO cri) { 
		// TODO Auto-generated method stub
		return mapper.pfBuyTotal(cri);
	}


	@Override
	public int perInsert(PerformanceVO vo) {
		// TODO Auto-generated method stub
		return mapper.perInsert(vo);
	}
	
	@Override
	public int getTotal(CriteriaVO cri) {
		return mapper.getTotal(cri);
	}

	//황규복
	@Override
	public List<PerformanceVO> pList(CriteriaVO cri) {
		// TODO Auto-generated method stub
		return mapper.pList(cri);
	}
	@Override
	public List<PerformanceVO> epList() {
		// TODO Auto-generated method stub
		return mapper.epList();
	}

	@Override
	public PerformanceVO pSelect(PerformanceVO vo) {
		// TODO Auto-generated method stub
		return mapper.pSelect(vo);
	}

	@Override
	public List<PerformanceVO> locPlist(PerformanceVO vo) {
		// TODO Auto-generated method stub
		return mapper.locPlist(vo);
	}


	@Override
	public int updatePerformanceAudience(PerformanceVO vo) {
		// TODO Auto-generated method stub
		return mapper.updatePerformanceAudience(vo);
	}


	@Override
	public List<PerformanceVO> performancePopChart() {
		// TODO Auto-generated method stub
		return mapper.performancePopChart();
	}


	@Override
	public List<PerformanceVO> cperList(PerformanceVO vo) {
		// TODO Auto-generated method stub
		return mapper.cperList(vo);
	}


}
