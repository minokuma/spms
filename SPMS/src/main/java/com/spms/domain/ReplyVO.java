package com.spms.domain;

import java.util.Date;

import lombok.Data;


/**
 * @FileName : ReplyVO.java
 * @Project : SPMS2
 * @Date : 2019. 9. 22.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 댓글 처리 VO
 */
@Data
public class ReplyVO {
	private Long rno;
	private Long bno;
	
	private String reply;
	private String replyer;
	private Date replyDate;
	private Date updateDate;
}
