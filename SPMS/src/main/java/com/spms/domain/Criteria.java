package com.spms.domain;

import org.springframework.web.util.UriComponentsBuilder;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class Criteria {

	
	private int pageNum;
	private int amount;
	
	private String type;
	private String keyword;
	
	public Criteria() {
		this(1,10);
	}
	
	public Criteria(int pageNum, int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	

	// 싸이클 7 - 검색조건을 배열로 만들어서 한번에 처리하기 위한 용도, 이것으로 MyBatis 의 동적 태그 활용 가능
	public String[] getTypeArr() {
		return type == null? new String[] {}: type.split("");
	}
	
	// 싸이클 7 - 여러 개의 파라미터들을 연결해서 URL의 형태로 만들어주는 기능
	public String getListLink() {
	
		UriComponentsBuilder builder = UriComponentsBuilder.fromPath("")
				.queryParam("pageNum", this.pageNum)
				.queryParam("amount", this.getAmount())
				.queryParam("type", this.getType())
				.queryParam("keyword", this.getKeyword());
		
		return builder.toUriString();		
	}
	
}
