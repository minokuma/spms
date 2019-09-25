package com.spms.controller;


import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spms.domain.BoardAttachVO;
import com.spms.domain.BoardVO;
import com.spms.domain.Criteria;
import com.spms.domain.PageDTO;
import com.spms.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;



/**
 * @FileName : BoardController.java
 * @Project : SPMS2
 * @Date : 2019. 9. 19.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 게시판 컨트롤러
 */
@Controller // 웹 리퀘스트를 받는 컨트롤러 클래스로 스프링에서 빈 관리(servlet-context.xml)
@Log4j // lombok의 로그 출력 기능 src/main/resources/log4jdbc.log4j2.properties 설정 
@RequestMapping("/board/*") // 웹 리퀘스트 url 매핑 1
@AllArgsConstructor // 모든 아규먼트 생성자로 필드값을 주입받는다. 즉, 자동 의존성 주입(DI) 
public class BoardController {
	// AllArgsController에 의해 자동주입됨.
	private BoardService boardService;

	/*
	 * @GetMapping("/list") // 웹 리퀘스트 url 매핑 2 public String list(Model model) { //
	 * Model : 모델에 값을 담기 위해 사용된다. log.info("list"); // 롬복의 로그 출력
	 * model.addAttribute("list", boardService.getList()); // 해당 페이지에 사용될 모델을 담는다.
	 * log.info(model); // 롬복의 로그 출력
	 * 
	 * return "board/list"; // jsp 페이지 이동 }
	 */
	
	
	@GetMapping("/list") // 웹 리퀘스트 url 매핑 2
	public String list(Criteria cri, Model model) { // 페이징 정보 계산(Criteria) : pageNum, amount
		
		log.info("list : " + cri);
		int total = boardService.getTotal(cri); // 게시글 전체 개수 조회
		log.info("total count : " + total);
		
		model.addAttribute("list", boardService.getList(cri)); // 페이징 정보 계산에 따른 게시글 리스트를 모델에 list 추가
		model.addAttribute("pageMaker", new PageDTO(cri, total)); // 페이지네이션 정보 계산에 따른 페이지네이션 정보를 pageMaker 추가
		return "board/list";
	}
	
	@GetMapping({"/get", "/modify"}) // 웹 리퀘스트 url 매핑 2				
	// 싸이클 6-2 : Criteria 페이징 계산 기능 아규먼트 추가
	public void get(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, Model model) { // 글 번호 bno 리퀘스트 파라미터값, 모델 변수 준비	
		
		log.info("/get or modify"); // 롬복의 로그 출력
		model.addAttribute("board",boardService.get(bno)); // 해당 페이지에 사용될 모델을 담는다.
	}
	
	@GetMapping("/register")	 // 웹 리퀘스트 url 매핑 2			
	public void register() {	 // 게시글 등록 페이지 이동	
			
	}
	
	@PostMapping("/register")    // 게시글 등록 처리
	public String register(BoardVO board, RedirectAttributes rttr) {	// 입력받은 게시글 정보 VO에 담기, 페이지 리다이렉트 시 가져갈 리다이렉트 변수 준비				
		log.info("register : " + board);	// 롬복 로그 출력
		
		if(board.getAttachList() != null) {
			board.getAttachList().forEach(attach -> log.info(attach));
		}
		log.info("============");
		
		boardService.register(board);		// 게시글 등록 처리 호출
		rttr.addFlashAttribute("result", board.getBno()); // 리다이렉트 변수 값 담아놓기				
		return "redirect:/board/list";		// 리스트 페이지로 리다이렉트
	}	
	
	@PostMapping("/modify")			// 게시글 수정 처리				
	public String modify(BoardVO board, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {		// 입력받은 게시글 정보 VO에 담기, 페이징 처리 유지에 필요한 값 받기, 페이지 리다이렉트 시 가져갈 리다이렉트 변수 준비
		log.info("modify : " + board);		// 롬복 로그 출력				
		if(boardService.modify(board)) {	// 게시글 	수정 처리 호출			
			rttr.addFlashAttribute("result","success");			// 수정처리 정상완료 시 리다이렉트 변수 값 담아놓기	
		}	
		/*
		 * rttr.addAttribute("pageNum", cri.getPageNum()); // 받은 파라미터 값으로 페이지 번호 유지
		 * rttr.addAttribute("amount", cri.getAmount()); // 받은 파라미터 값으로 페이지 번호 유지
		 * 
		 * // 싸이클 7 - type, keyword rttr.addAttribute("type", cri.getType()); // 검색어 타입
		 * rttr.addAttribute("keyword", cri.getKeyword()); // 검색어 키워드
		 */
		// 싸이클 7
		return "redirect:/board/list" + cri.getListLink();		// 리스트 페이지로 리다이렉트
	}
	
	@PostMapping("/remove")							
	public String remove(@RequestParam("bno") Long bno, @ModelAttribute("cri") Criteria cri, RedirectAttributes rttr) {	// 입력받은 글 번호 파라미터, 페이징 처리 유지에 필요한 값 받기, 페이지 리다이렉트 시 가져갈 리다이렉트 변수 준비						
		log.info("remove..." + bno);		// 롬복 로그 출력				
		if(boardService.remove(bno)) {		// 게시글 삭제 처리 호출				
			rttr.addFlashAttribute("result", "success");		// 삭제처리 정상완료 시 리다이렉트 변수 값 담아놓기				
		}	
		/*
		 * rttr.addAttribute("pageNum", cri.getPageNum()); // 받은 파라미터 값으로 페이지 번호 유지
		 * rttr.addAttribute("amount", cri.getAmount()); // 받은 파라미터 값으로 페이지 번호 유지
		 */
		// 싸이클 7
		return "redirect:/board/list" + cri.getListLink();		// 리스트 페이지로 리다이렉트
	}
	
	// 싸이클 21 - 첨부파일 조회 리스트
	@GetMapping(value = "/getAttachList",
				produces = MediaType.APPLICATION_JSON_UTF8_VALUE)
	@ResponseBody
	public ResponseEntity<List<BoardAttachVO>> getAttachList(Long bno){
		log.info("getAttachList : " + bno);
		return new ResponseEntity<>(boardService.getAttachList(bno), HttpStatus.OK);
	}
}