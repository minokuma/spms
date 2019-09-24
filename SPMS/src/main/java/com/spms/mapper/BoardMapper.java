package com.spms.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.spms.domain.BoardVO;
import com.spms.domain.Criteria;


/**
 * @FileName : BoardMapper.java
 * @Project : SPMS2
 * @Date : 2019. 9. 19.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 게시판 관련 SQL 매핑하기 위한 인터페이스로 메소드 정의
 *             src/main/resources/BoardMapper.xml 에 기술한 sql문을 참조한다.
 */
public interface BoardMapper {
	//public List<BoardVO> getList(); // 게시글 리스트 조회 메소드 정의
	public List<BoardVO> getListWithPaging(Criteria cri);
	public BoardVO read(Long bno); // 게시글 뷰 조회 메소드 정의
	public void insertSelectKey(BoardVO board); // 게시글 등록 메소드 정의
	public int update(BoardVO board); // 게시글 수정 메소드 정의
	public int delete(Long bno);  // 게시글 삭제 메소드 정의
	public int getTotalCount(Criteria cri);	// 게시글 전체 카운트 메소드 정의
	public void updateReplyCnt(@Param("bno") Long bno, @Param("amount") int amount); // 댓글 카운트 갱신
}