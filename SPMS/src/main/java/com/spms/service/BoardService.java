package com.spms.service;

import java.util.List;

import com.spms.domain.BoardAttachVO;
import com.spms.domain.BoardVO;
import com.spms.domain.Criteria;


/**
 * @FileName : BoardService.java
 * @Project : SPMS2
 * @Date : 2019. 9. 19.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 게시판 서비스 인터페이스
 */
public interface BoardService {
	// public List<BoardVO> getList();
	public List<BoardVO> getList(Criteria cri);
	public BoardVO get(Long bno);
	public void register(BoardVO board);
	public boolean modify(BoardVO board);
	public boolean remove(Long bno);
	public int getTotal(Criteria cri);
	public List<BoardAttachVO> getAttachList(Long bno); // 첨부파일 리스트
}