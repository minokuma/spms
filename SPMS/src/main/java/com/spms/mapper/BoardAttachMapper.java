package com.spms.mapper;

import java.util.List;
import com.spms.domain.BoardAttachVO;

/**
 * @FileName : BoardAttachMapper.java
 * @Project : SPMS2
 * @Date : 2019. 9. 24.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 첨부파일 처리를 위한 매퍼 처리
 */
public interface BoardAttachMapper {
	public void insert(BoardAttachVO vo);
	public void delete(String uuid);
	public List<BoardAttachVO> findByBno(Long bno);
	public void deleteAll(Long bno); // 첨부파일 삭제 처리
}
