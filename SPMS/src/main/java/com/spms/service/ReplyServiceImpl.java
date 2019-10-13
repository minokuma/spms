package com.spms.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.spms.domain.Criteria;
import com.spms.domain.ReplyPageDTO;
import com.spms.domain.ReplyVO;
import com.spms.mapper.ReplyMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Service
@Log4j
@AllArgsConstructor
public class ReplyServiceImpl implements ReplyService {

	private ReplyMapper replyMapper;

	@Override
	public int register(ReplyVO vo) {

		log.info("register......" + vo);

		return replyMapper.insert(vo);

	}

	@Override
	public ReplyVO get(Long rno) {

		log.info("get......" + rno);

		return replyMapper.read(rno);

	}

	@Override
	public int modify(ReplyVO vo) {

		log.info("modify......" + vo);

		return replyMapper.update(vo);

	}

	@Override
	public int remove(Long rno) {

		log.info("remove...." + rno);

		return replyMapper.delete(rno);

	}

	@Override
	public List<ReplyVO> getList(Criteria cri, Long bno) {

		log.info("get Reply List of a Board " + bno);

		return replyMapper.getListWithPaging(cri, bno);

	}

	@Override
	public ReplyPageDTO getListPage(Criteria cri, Long bno) {
		// TODO Auto-generated method stub
		return new ReplyPageDTO(replyMapper.getCountByBno(bno), replyMapper.getListWithPaging(cri, bno));
	}
}
