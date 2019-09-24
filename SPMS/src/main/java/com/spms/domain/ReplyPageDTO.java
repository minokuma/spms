package com.spms.domain;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;


/**
 * @FileName : ReplyPageDTO.java
 * @Project : SPMS2
 * @Date : 2019. 9. 24.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 댓글과 댓글 수 처리
 */
@Data
@AllArgsConstructor
@Getter
public class ReplyPageDTO {
	private int replyCnt;
	private List<ReplyVO> list;
}
