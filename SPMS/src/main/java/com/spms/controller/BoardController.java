package com.spms.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.spms.service.BoardService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/board/*")
@AllArgsConstructor
public class BoardController {
	private BoardService boardService;

	@GetMapping("/list")
	public String list(Model model) {
		log.info("list");
		model.addAttribute("list", boardService.getList());
		log.info(model);

		return "board/list";
	}
	
	@GetMapping({"/get", "/modify"})						
	public void get(@RequestParam("bno") Long bno, Model model) {	
		
		log.info("/get or modify");
		model.addAttribute("board",boardService.get(bno));
	}						
	
}
