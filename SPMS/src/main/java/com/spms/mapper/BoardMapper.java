package com.spms.mapper;

import java.util.List;

import com.spms.domain.BoardVO;

public interface BoardMapper {
	public List<BoardVO> getList();
	public void insert(BoardVO board);				
	public void insertSelectKey(BoardVO board);	
	public BoardVO read(Long bno);

}

