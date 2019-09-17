package com.spms.service;

import java.util.List;

import com.spms.domain.BoardVO;
import com.spms.domain.Criteria;

public interface BoardService {
	//public List<BoardVO> getList();
	public List<BoardVO> getList(Criteria cri);
	public BoardVO get(Long bno);
	public void register(BoardVO board);
	public boolean modify(BoardVO board);
	public boolean remove(Long bno);
	public int getTotal(Criteria cri);
	
}
