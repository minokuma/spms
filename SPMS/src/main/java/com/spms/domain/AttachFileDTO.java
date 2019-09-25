package com.spms.domain;

import lombok.Data;

/**
 * @FileName : AttachFileDTO.java
 * @Project : SPMS2
 * @Date : 2019. 9. 25.
 * @Author : ksky2
 * @변경이력 : 	
 * @프로그램 설명 : 첨부파일DTO
 */

@Data
public class AttachFileDTO {
	private String fileName;
	private String uploadPath;
	private String uuid;
	private boolean image;
}
