package com.spms.service;

import java.util.List;

import com.spms.domain.Criteria;
import com.spms.domain.ReplyPageDTO;
import com.spms.domain.ReplyVO;

public interface ReplyService {

	public int register(ReplyVO vo);
	public ReplyVO get(Long rno);
	public int modify(ReplyVO vo);
	public int remove(Long rno);
	public List<ReplyVO> getList(Criteria cri, Long bno);
	public ReplyPageDTO getListPage(Criteria cri, Long bno);
	
}
