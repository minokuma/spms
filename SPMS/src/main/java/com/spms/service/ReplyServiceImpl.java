package com.spms.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spms.domain.Criteria;
import com.spms.domain.ReplyVO;
import com.spms.mapper.ReplyMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {
	
	private ReplyMapper replyMapper;
	
	// 댓글 등록 처리
	@Override
	public int register(ReplyVO vo) {
		// TODO Auto-generated method stub
		log.info("register..... : " + vo);
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
	@Override
	public int remove(Long rno) {
		// TODO Auto-generated method stub
		log.info("remove..... : " + rno);
		return replyMapper.delete(rno);
	}
	
	// 댓글 수정
	@Override
	public int modify(ReplyVO vo) {
		// TODO Auto-generated method stub
		log.info("modify..... : " + vo);
		return replyMapper.update(vo);
	}
}
