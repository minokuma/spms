package com.spms.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spms.domain.Criteria;
import com.spms.domain.ReplyVO;

/**
 * @FileName : ReplyMapper.java
 * @Project : SPMS2
 * @Date : 2019. 9. 24.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 댓글 매퍼 구현
 */
public interface ReplyMapper {
	public int insert(ReplyVO vo);
	public List<ReplyVO> getListWithPaging(@Param("cri") Criteria cri, @Param("bno") Long bno);
	public int getCountByBno(Long bno);
	public ReplyVO read(Long bno);
	public int delete(Long rno);
	public int update(ReplyVO reply);
}
