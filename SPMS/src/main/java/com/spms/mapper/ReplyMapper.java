package com.spms.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spms.domain.Criteria;
import com.spms.domain.ReplyVO;

public interface ReplyMapper {
	public int insert(ReplyVO vo);
	public List<ReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("bno") Long bno);
	public ReplyVO read(Long bno);
	public int delete(Long rno);
	public int update(ReplyVO reply);
}
