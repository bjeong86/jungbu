package com.spring.assem.plan.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.assem.home.dao.HomeDAO;
import com.spring.assem.home.vo.SwjMainInfoVO;
import com.spring.assem.plan.dao.PlanDAO;
import com.spring.assem.plan.vo.PlanInfoVO;

@Service
public class PlanServiceImpl implements PlanService {

	@Inject
	private PlanDAO dao;
	
	@Override
	public List<PlanInfoVO> getPlanInfoByYear(String year) throws Exception {
		return dao.getPlanInfoByYear(year);
	}

}
