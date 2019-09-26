package com.spms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spms.domain.BoardAttachVO;
import com.spms.domain.BoardVO;
import com.spms.domain.Criteria;
import com.spms.mapper.BoardAttachMapper;
import com.spms.mapper.BoardMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


/**
 * @FileName : BoardServiceImpl.java
 * @Project : SPMS
 * @Date : 2019. 9. 19.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 게시판 서비스 인터페이스를 기능 구현
 */
@Log4j // 롬복의 로그 출력 기능 선언
@Service // 서비스 객체를 스프링 빈으로 관리 (root-context.xml)
//@AllArgsConstructor // 모든 아규먼트 생성자로 필드값을 주입받는다. 즉, 자동 의존성 주입(DI) 
public class BoardServiceImpl implements BoardService {

//spring 4.3 이상에서 자동 처리 
	@Setter(onMethod_= @Autowired)
	private BoardMapper boardMapper;

	@Setter(onMethod_= @Autowired)
	private BoardAttachMapper attachMapper;

	/*
	 * @Override public List<BoardVO> getList() { // TODO Auto-generated method stub
	 * log.info("getList......"); // 롬복 로그 출력 return boardMapper.getList(); //게시판
	 * 보드매퍼 리스트 호출 }
	 */

	@Override
	public List<BoardVO> getList(Criteria cri) {
		// TODO Auto-generated method stub
		log.info("get List with criteria : " + cri); // 롬복 로그 출력
		return boardMapper.getListWithPaging(cri); // 게시판 보드매퍼 페이징화된 리스트 조회 호출
	}
	
	@Override
	public BoardVO get(Long bno) {
		// TODO Auto-generated method stub
		log.info("get...." + bno); // 롬복 로그 출력
		return boardMapper.read(bno); //게시판 보드매퍼 뷰 호출
	}

	@Transactional
	@Override
	public void register(BoardVO board) {
		// TODO Auto-generated method stub
		log.info("register..." + board); // 롬복 로그 출력
		boardMapper.insertSelectKey(board); // 게시판 보드매퍼 등록 호출
		
		if(board.getAttachList() == null || board.getAttachList().size() <= 0) {
			return;
		}
		
		board.getAttachList().forEach(attach ->{
			attach.setBno(board.getBno());
			log.info(" [ " + attach.toString() + " ]");
			attachMapper.insert(attach);
		});
	}

	@Transactional
	@Override
	public boolean modify(BoardVO board) {
		// TODO Auto-generated method stub
		log.info("modify...." + board); // 롬복 로그 출력
		
		attachMapper.deleteAll(board.getBno());
		boolean modifyResult = boardMapper.update(board) == 1;
		

		
		if(modifyResult && board.getAttachList().size() > 0) {
			board.getAttachList().forEach(attach -> {
				attach.setBno(board.getBno());
				attachMapper.insert(attach);
			});
		}
		
		return modifyResult;
	}
	
	
	@Transactional
	@Override
	public boolean remove(Long bno) {
		// TODO Auto-generated method stub
		log.info("remove...." + bno);	// 롬복 로그 출력
		attachMapper.deleteAll(bno);
		return boardMapper.delete(bno) == 1; // 게시판 보드매퍼 삭제 호출	
	}

	@Override
	public int getTotal(Criteria cri) {
		// TODO Auto-generated method stub
		return boardMapper.getTotalCount(cri); // 게시판 보드매퍼 게시글 전체 레코드 개수 조회 호출
	}

	
	@Override
	public List<BoardAttachVO> getAttachList(Long bno) {
		// TODO Auto-generated method stub
		log.info("get Attach list by bno : " + bno);
		return attachMapper.findByBno(bno); // 싸이클 21 - 글 번호로 첨부파일 목록 조회
	}



}