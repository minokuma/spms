package com.spms.mapper;

import java.util.List;
import com.spms.domain.BoardVO;
import com.spms.domain.Criteria;

public interface BoardMapper {
	public List<BoardVO> getListWithPaging(Criteria cri);
	public Long insertSelectKey(BoardVO board);
	public BoardVO read(Long bno);
	public int update(BoardVO board);
	public int delete(Long bno);
	public int getTotalCount(Criteria cri);
}
