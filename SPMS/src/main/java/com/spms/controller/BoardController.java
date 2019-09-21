package com.spms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.spms.domain.BoardVO;
import com.spms.domain.Criteria;
import com.spms.domain.PageDTO;
import com.spms.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	private BoardService boardService;

	/*
	 * @GetMapping("/list") public String list(Model model) { log.info("list");
	 * model.addAttribute("list", boardService.getList()); log.info(model);
	 * 
	 * return "board/list"; }
	 */

	@GetMapping("/list")
	public String list(Criteria cri, Model model) {
		
		log.info("list : " + cri);
		int total = boardService.getTotal(cri);
		log.info("total : " + total);
		
		model.addAttribute("list", boardService.getList(cri));
		model.addAttribute("pageMaker", new PageDTO(cri, total));
		return "board/list";
	}
	
	@GetMapping({"/get", "/modify"})						
	public void get(@RequestParam("bno") Long bno,@ModelAttribute("cri") Criteria cri, Model model) {	
		
		log.info("/get or modify");
		model.addAttribute("board",boardService.get(bno));
	}
	
	@PostMapping("/register")
	public String register(BoardVO board, RedirectAttributes rttr) {					
		log.info("register : " + board);				
		boardService.register(board);				
		rttr.addFlashAttribute("result", board.getBno());				
		return "redirect:/board/list";				
	}	
	
	@GetMapping("/register")		
	public void register() {		
			
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


}
