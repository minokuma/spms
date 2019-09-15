package com.spms.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spms.domain.BoardVO;
import com.spms.mapper.BoardMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class BoardServiceImpl implements BoardService {

//spring 4.3 이상에서 자동 처리 
	private BoardMapper boardMapper;

	@Override
	public List<BoardVO> getList() { // TODO Auto-generated method stub
		log.info("getList......");
		return boardMapper.getList();
	}

	@Override
	public BoardVO get(Long bno) {
		// TODO Auto-generated method stub
		log.info("get...." + bno);
		return boardMapper.read(bno);
	}

	@Override
	public void register(BoardVO board) {
		// TODO Auto-generated method stub
		log.info("register..." + board);
		boardMapper.insertSelectKey(board);
	}

	@Override
	public boolean modify(BoardVO board) {
		// TODO Auto-generated method stub
		log.info("modify...." + board);
		return boardMapper.update(board) == 1;
	}
}
