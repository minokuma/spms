package com.spms.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.spms.domain.Criteria;
import com.spms.domain.ReplyPageDTO;
import com.spms.domain.ReplyVO;
import com.spms.service.ReplyService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/replies/")
@RestController
@Log4j
@AllArgsConstructor
public class ReplyController {
	private ReplyService replyService;

	@PreAuthorize("isAuthenticated()")
	@PostMapping(value = "/new", consumes = "application/json", produces = { MediaType.TEXT_PLAIN_VALUE })
	public ResponseEntity<String> create(@RequestBody ReplyVO reply) {

		log.info("ReplyVO: " + reply);

		int insertCount = replyService.register(reply);

		log.info("Reply INSERT COUNT: " + insertCount);

		return insertCount == 1 ? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);
	}
	
	@GetMapping(value = "/pages/{bno}/{page}", 
			 	 produces = {
			 			 MediaType.APPLICATION_XML_VALUE,
			 			 MediaType.APPLICATION_JSON_UTF8_VALUE 
	})
	public ResponseEntity<ReplyPageDTO> getList(
		@PathVariable("page") int page,
		@PathVariable("bno") Long bno) {
		
		log.info("getList.................");
		
		Criteria cri = new Criteria(page,10);
		log.info("get Reply List bno : " + bno);
		log.info(cri);

		return new ResponseEntity<>(replyService.getListPage(cri, bno), HttpStatus.OK);
	}
	
	@GetMapping(value = "/{rno}", 
			produces = { MediaType.APPLICATION_XML_VALUE, 
					     MediaType.APPLICATION_JSON_UTF8_VALUE })
	public ResponseEntity<ReplyVO> get(@PathVariable("rno") Long rno) {

		log.info("get: " + rno);

		return new ResponseEntity<>(replyService.get(rno), HttpStatus.OK);
	}
	
	@DeleteMapping(value = "/{rno}", produces = { MediaType.TEXT_PLAIN_VALUE })
	@PreAuthorize("principal.username == #reply.replyer")
	public ResponseEntity<String> remove(@RequestBody ReplyVO reply, @PathVariable("rno") Long rno) {

		log.info("remove : " + rno);
		log.info("replyer : " + reply.getReplyer());
		
		return replyService.remove(rno) == 1 
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
	
	
	
	
	@RequestMapping(method = { RequestMethod.PUT,
							   RequestMethod.PATCH 
							 }, value = "/{rno}", 
							 	consumes = "application/json", 
							 	produces = {
							 		MediaType.TEXT_PLAIN_VALUE 
							 	})
	@PreAuthorize("principal.username == #reply.replyer")
	public ResponseEntity<String> modify(
			 @RequestBody ReplyVO reply,
			 @PathVariable("rno") Long rno) {

		reply.setRno(rno);
		log.info("rno: " + rno);
		log.info("modify: " + reply);

		return replyService.modify(reply) == 1 
				? new ResponseEntity<>("success", HttpStatus.OK)
				: new ResponseEntity<>(HttpStatus.INTERNAL_SERVER_ERROR);

	}
}
