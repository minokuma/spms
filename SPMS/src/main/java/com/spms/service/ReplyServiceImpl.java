package com.spms.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.spms.domain.Criteria;
import com.spms.domain.ReplyPageDTO;
import com.spms.domain.ReplyVO;
import com.spms.mapper.BoardMapper;
import com.spms.mapper.ReplyMapper;

import lombok.Setter;
import lombok.extern.log4j.Log4j;


/**
 * @FileName : ReplyServiceImpl.java
 * @Project : SPMS2
 * @Date : 2019. 9. 24.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 댓글 서비스 구현
 */
@Service
@Log4j
public class ReplyServiceImpl implements ReplyService {
	
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper replyMapper;
	
	// 싸이클 19 - 게시판 매퍼 주입
	@Setter(onMethod_ = @Autowired)
	private BoardMapper boardMapper;
	
	// 댓글 등록 처리
	// 싸이클 19 - 댓글 등록 및 삭제 담당 처리
	@Transactional
	@Override
	public int register(ReplyVO vo) {
		// TODO Auto-generated method stub
		log.info("register..... : " + vo);
		boardMapper.updateReplyCnt(vo.getBno(), 1);
		return replyMapper.insert(vo);
	}
	
	// 댓글 리스트 조회
	@Override
	public List<ReplyVO> getList(Criteria cri, Long bno) {
		// TODO Auto-generated method stub
		log.info("getList..... : " + bno);
		return replyMapper.getListWithPaging(cri, bno);
	}
	
	// 댓글 조회 
	@Override
	public ReplyVO get(Long rno) {
		// TODO Auto-generated method stub
		log.info("get..... : " + rno);
		return replyMapper.read(rno);
	}
	
	// 댓글 삭제
	// 싸이클 19 - 댓글 등록 및 삭제 담당 처리
	@Transactional
	@Override
	public int remove(Long rno) {
		// TODO Auto-generated method stub
		log.info("remove..... : " + rno);
		ReplyVO vo = replyMapper.read(rno);
		boardMapper.updateReplyCnt(vo.getBno(), -1);
		return replyMapper.delete(rno);
	}
	
	// 댓글 수정
	@Override
	public int modify(ReplyVO vo) {
		// TODO Auto-generated method stub
		log.info("modify..... : " + vo);
		return replyMapper.update(vo);
	}
	
	// 댓글 리스트 조회 (페이징)
	@Override
	public ReplyPageDTO getListPage(Criteria cri, Long bno) {
		// TODO Auto-generated method stub
		return new ReplyPageDTO(replyMapper.getCountByBno(bno), replyMapper.getListWithPaging(cri, bno));
	}
	
	
}
