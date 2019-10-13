package com.spms.service;

import java.util.List;

import com.spms.domain.BoardVO;
import com.spms.domain.Criteria;

public interface BoardService {
	public int getTotal(Criteria cri);
	public List<BoardVO> getList(Criteria cri);
	public void register(BoardVO board);
	public BoardVO get(Long bno);
	public boolean modify(BoardVO board);
	public boolean remove(Long bno);
}
