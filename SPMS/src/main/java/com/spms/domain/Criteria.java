package com.spms.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

/**
 * @FileName : Criteria.java
 * @Project : SPMS2
 * @Date : 2019. 9. 20.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 페이징 정보를 계산하는 클래스로 pageNum, amount 이 2개의 아규먼트들을 필요로 한다.
 */
@Getter
@Setter
@ToString
public class Criteria {

	// 페이징 처리 사용 변수 : pageNum, amount
	private int pageNum;
	private int amount;
	
	// 검색처리 사용 변수 : type, keyword
	private String type;
	private String keyword;
	
	// 페이징 처리 기본 페이지 1, 게시글 범위 10
	public Criteria() {
		this(1,10);
	}
	
	// 페이징 처리 페이지 번호, 게시글 범위
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	
	// 싸이클 7 - 검색조건을 배열로 만들어서 한번에 처리하기 위한 용도, 이것으로 MyBatis 의 동적 태그 활용 가능
	public String[] getTypeArr() {
		return type == null? new String[] {}: type.split("");
	}
	
	// 싸이클 7 - 여러 개의 파라미터들을 연결해서 URL의 형태로 만들어주는 기능 (쿼리스트링의 간편화)
	public String getListLink() {
	
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount())
				.queryParam("type", this.getType())
				.queryParam("keyword", this.getKeyword());
		
		return builder.toUriString();		
	}
	
}