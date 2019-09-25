package com.spms.domain;

import lombok.Data;


/**
 * @FileName : BoardAttachVO.java
 * @Project : SPMS2
 * @Date : 2019. 9. 24.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 게시판 파일첨부 VO로 Lombok의 Data 어노테이션을 사용함으로써 get/set 등의 기능을 깔끔하게 암묵적으로 처리 
 */
@Data
public class BoardAttachVO {
	private String uuid;
	private String uploadPath;
	private String fileName;
	private boolean fileType;
	private Long bno;
}
