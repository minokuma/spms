package com.spms.service;

import java.util.List;

import com.spms.domain.Criteria;
import com.spms.domain.ReplyVO;

public interface ReplyService {
	public int register(ReplyVO vo);
	public List<ReplyVO> getList(Criteria cri, Long bno);
	public ReplyVO get(Long rno);
	public int remove(Long rno);
	public int modify(ReplyVO vo);
}
