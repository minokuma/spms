package com.spms.domain;

import java.util.Date;

import lombok.Data;

/**
 * @FileName : BoardVO.java
 * @Project : SPMS2
 * @Date : 2019. 9. 19.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 게시판 VO로 Lombok의 Data 어노테이션을 사용함으로써 get/set 등의 기능을 깔끔하게 암묵적으로 처리 
 */
@Data
public class BoardVO {
	private Long bno;
	private String title;
	private String content;
	private String writer;
	private Date regDate;
	private Date updateDate;
	private int replyCnt; // 댓글 숫자
}
