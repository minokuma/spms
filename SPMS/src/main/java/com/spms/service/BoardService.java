package com.spms.service;

import java.util.List;

import com.spms.domain.BoardVO;

public interface BoardService {
	public List<BoardVO> getList();
	public BoardVO get(Long bno);
	public void register(BoardVO board);

}
