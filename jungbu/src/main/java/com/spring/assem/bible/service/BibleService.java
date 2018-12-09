package com.spring.assem.bible.service;

import java.util.List;

import com.spring.assem.bible.vo.BibleContentsVO;
import com.spring.assem.bible.vo.BibleScheduleVO;

public interface BibleService {
	public List<BibleContentsVO> getBibleContentsByDay(long day) throws Exception;
	public List<BibleScheduleVO> getBibleScheduleByDay(long day) throws Exception;
}
