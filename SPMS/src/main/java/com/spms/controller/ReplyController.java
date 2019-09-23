package com.spms.controller;

import java.util.List;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spms.domain.Criteria;
import com.spms.domain.ReplyVO;
import com.spms.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;



/**
 * @FileName : ReplyController.java
 * @Project : SPMS2
 * @Date : 2019. 9. 22.
 * @Author : ksky2
 * @변경이력 : 
 * @프로그램 설명 : 댓글 컨트롤러
 */
@RequestMapping("/replies/")
@RestController
@Log4j
@AllArgsConstructor
public class ReplyController {
	
	private ReplyService replyService;

	/* 싸이클 8 - 댓글 등록 처리 */
	@PostMapping(value = "/new",
				 consumes = "application/json",
				 produces = { 
						 MediaType.TEXT_PLAIN_VALUE 
				 }
	)
	public ResponseEntity<String> create(@RequestBody ReplyVO vo){
		log.info("ReplyVO : " + vo);
		int insertCount = replyService.register(vo);
		
		log.info("Reply Insert Count : " + insertCount);
		
		// 3항 연산자 처리
		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
		
	}
	/* 싸이클 9 - 댓글 리스트 처리 */
	@GetMapping(value = "/pages/{bno}/{page}", 
			produces = {
				MediaType.APPLICATION_XML_VALUE,
				MediaType.APPLICATION_JSON_UTF8_VALUE
			}
	)
	public ResponseEntity<List<ReplyVO>> getList(@PathVariable("page") int page, @PathVariable("bno") Long bno){
		
		log.info("getList..............");
		Criteria cri = new Criteria(page, 10);
		
		return new ResponseEntity<>(replyService.getList(cri, bno), HttpStatus.OK);
	}
	
	/* 싸이클 10 - 댓글 조회 처리 */
	@GetMapping(value = "/get/{rno}", 
			produces = {
				MediaType.APPLICATION_XML_VALUE,
				MediaType.APPLICATION_JSON_UTF8_VALUE
			}
	)
	public ResponseEntity<ReplyVO> get(@PathVariable("rno") Long rno){
		
		log.info("getList.............. : " + rno);
		
		return new ResponseEntity<>(replyService.get(rno), HttpStatus.OK);
	}
	
	/* 싸이클 11 - 댓글 삭제 처리 */
	@DeleteMapping(value = "/get/{rno}", 
			produces = {
				MediaType.TEXT_PLAIN_VALUE
			}
	)
	public ResponseEntity<String> remove(@PathVariable("rno") Long rno){
		
		log.info("remove : " + rno);
		
		// 3항 연산자 처리
		return replyService.remove(rno) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
				
	}
	
	/* 싸이클 12 - 댓글 수정 처리 */
	@RequestMapping(method = { RequestMethod.PUT, RequestMethod.PATCH},
					value = "/{rno}",
					consumes = "application/json",
					produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> modify(@RequestBody ReplyVO vo, @PathVariable("rno") Long rno){
		vo.setRno(rno);
		log.info("rno : " + rno);
		log.info("modify : " + vo);
		// 3항 연산자 처리
		return replyService.modify(vo) == 1 ? new ResponseEntity<>("success", HttpStatus.OK) : new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
}
