package com.spring.assem.bible.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.spring.assem.bible.dao.BibleDAO;
import com.spring.assem.bible.vo.BibleContentsVO;
import com.spring.assem.bible.vo.BibleScheduleVO;

@Service
public class BibleServiceImpl implements BibleService {

	@Inject
	private BibleDAO dao;

	@Override
	public List<BibleContentsVO> getBibleContentsByDay(long day) throws Exception {
		return dao.getBibleContentsByDay(day);
	}

	@Override
	public List<BibleScheduleVO> getBibleScheduleByDay(long day) throws Exception {
		return dao.getBibleScheduleByDay(day);
	}

}
