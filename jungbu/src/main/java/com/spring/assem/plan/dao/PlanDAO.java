package com.spring.assem.plan.dao;

import java.util.List;

import com.spring.assem.plan.vo.PlanInfoVO;

public interface PlanDAO {
	public List<PlanInfoVO> getPlanInfoByYear(String year) throws Exception;

}
