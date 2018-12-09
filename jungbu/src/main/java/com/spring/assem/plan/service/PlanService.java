package com.spring.assem.plan.service;

import java.util.List;

import com.spring.assem.home.vo.SwjMainInfoVO;
import com.spring.assem.plan.vo.PlanInfoVO;

public interface PlanService {
	public List<PlanInfoVO> getPlanInfoByYear(String year) throws Exception;
}
