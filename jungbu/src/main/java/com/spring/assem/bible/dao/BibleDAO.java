package com.spring.assem.bible.dao;

import java.util.List;

import com.spring.assem.bible.vo.BibleContentsVO;
import com.spring.assem.bible.vo.BibleScheduleVO;

public interface BibleDAO {
	public List<BibleContentsVO> getBibleContentsByDay(long day) throws Exception;
	public List<BibleScheduleVO> getBibleScheduleByDay(long day) throws Exception;
	
	public List<BibleContentsVO> getBibleContentsAll() throws Exception;
	public List<BibleScheduleVO> getBibleScheduleAll() throws Exception;
}
