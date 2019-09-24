package com.spms.service;

import java.util.List;

import com.spms.domain.Criteria;
import com.spms.domain.ReplyPageDTO;
import com.spms.domain.ReplyVO;


/**
 * @FileName : ReplyService.java
 * @Project : SPMS2
 * @Date : 2019. 9. 24.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 댓글 서비스 인터페이스
 */
public interface ReplyService {
	public int register(ReplyVO vo);
	public List<ReplyVO> getList(Criteria cri, Long bno);
	public ReplyVO get(Long rno);
	public int remove(Long rno);
	public int modify(ReplyVO vo);
	public ReplyPageDTO getListPage(Criteria cri, Long bno);
}
