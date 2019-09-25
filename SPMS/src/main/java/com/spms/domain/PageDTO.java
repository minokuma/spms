package com.spms.domain;

import lombok.Getter;
import lombok.ToString;


/**
 * @FileName : PageDTO.java
 * @Project : SPMS2
 * @Date : 2019. 9. 20.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 페이지네이션 기능 구현으로 페이징 처리를 위한 클래스 설계
 *              - 페이징 처리를 위해 현재 페이지 번호, 이전과 다음으로 이동 가능한 링크의 표시 여부
 *              - 화면에서 보여지는 페이지 시작 번호와 끝 번호 등과 같은 정보 필요
 */
@Getter
@ToString
public class PageDTO {

	private int startPage;
	private int endPage;
	private boolean prev, next;
	
	private int total;
	private Criteria cri;
	
	public PageDTO(Criteria cri, int total) {
		this.cri = cri;
		this.total = total;
		// 페이징 끝 번호 계산
		this.endPage = (int) (Math.ceil(cri.getPageNum() / 10.0)) * 10;
		// 페이징 시작 번호 계산
		this.startPage = this.endPage - 9;
		
		int realEnd = (int) (Math.ceil((total * 1.0) / cri.getAmount()));
		
		if (realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		// 이전 계산
		this.prev = this.startPage > 1;
		
		// 다음 계산
		this.next = this.endPage < realEnd;
		
	}
	
}