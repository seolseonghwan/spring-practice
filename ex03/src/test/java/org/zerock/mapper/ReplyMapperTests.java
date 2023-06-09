package org.zerock.mapper;

import java.util.List;
import java.util.stream.IntStream;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.zerock.domain.Criteria;
import org.zerock.domain.ReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@RunWith(SpringRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
@Log4j
public class ReplyMapperTests {

	private Long[] bnoArr = { 3145745L, 3145744L, 3145743L, 3145742L, 3145741L };
	@Setter(onMethod_ = @Autowired)
	private ReplyMapper mapper;

	@Test
	public void testCreate() {
		IntStream.rangeClosed(1, 10).forEach(i -> {
			ReplyVO vo = new ReplyVO();
			
			vo.setBno(bnoArr[1 % 5]);
			vo.setReply("reply" + i);
			vo.setReplyer("홍길동" + i);
			
			mapper.insert(vo);
		});
	}
	@Test
	public void testMapper() {
		log.info(mapper);
	}
	@Test
	public void testRead() {
		
		Long targetRno = 10L;
		
		ReplyVO vo = mapper.read(targetRno);
		
		log.info(vo);
	}
	@Test
	public void testDelete() {
		
		Long targetRno = 2L;
		
		mapper.delete(targetRno);
		
		
		
		int i = 0;
		for(i = 0; i <= 20; i++ ) {
			mapper.delete(++targetRno);
		}
	}
	@Test
	public void testupdate() {
		
		Long targetRno = 30L;
		
		ReplyVO vo = mapper.read(targetRno);
		
		vo.setReply("Update Reply");
		
		int count = mapper.update(vo);
		
		log.info("UPDATE COUNT:" + count);
		
	}

	@Test
	public void testList() {
		Criteria cri = new Criteria();
		List<ReplyVO> replies = mapper.getListWithPaging(cri, bnoArr[0]);
		
		replies.forEach(reply -> log.info(reply));
	}
}
