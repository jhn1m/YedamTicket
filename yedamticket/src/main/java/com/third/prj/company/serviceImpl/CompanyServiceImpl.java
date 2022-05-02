package com.third.prj.company.serviceImpl;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.third.prj.company.mapper.CompanyMapper;
import com.third.prj.company.service.CompanyService;
import com.third.prj.company.service.CompanyVO;
import com.third.prj.company.service.CriteriaVO;

@Repository("companyDao")
public class CompanyServiceImpl implements CompanyService {

   @Autowired
   private CompanyMapper mapper;
   
   @Autowired
   private SqlSession sqlSession;
   
   @Override
   public int companyInsert(CompanyVO vo) {
      return mapper.companyInsert(vo);
   }

   @Override
   public int cidChk(CompanyVO vo) {
      int i = mapper.cidChk(vo);
      return i;
   }

   @Override
   public List<CompanyVO> companyList(CriteriaVO cri) {
      return mapper.companyList(cri);
   }

   @Override
   public CompanyVO companySelect(CompanyVO vo) {
      return mapper.companySelect(vo);
   }


   @Override
   public CompanyVO companyLogin(CompanyVO vo) {
      // TODO Auto-generated method stub
      return sqlSession.selectOne("companyLogin", vo);
   }

   @Override
   public int getTotal(CriteriaVO cri) {
      // TODO Auto-generated method stub
      return mapper.getTotal(cri);
   }

   @Override
   public int companyUpdate(CompanyVO vo) {
      // TODO Auto-generated method stub
      return mapper.companyUpdate(vo);
   }

   @Override
   public CompanyVO companyLogin(CompanyVO vo, HttpSession session) {
      // TODO Auto-generated method stub
      return mapper.companyLogin(vo);
   }
   
}