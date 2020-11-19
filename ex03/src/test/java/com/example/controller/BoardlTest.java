//package com.example.controller;
//
//import org.junit.Test;
//import org.junit.runner.RunWith;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.test.context.ContextConfiguration;
//import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
//
//import com.example.domain.BoardVO;
//import com.example.mapper.BoardMapper;
//import com.example.mapper.MysqlMapper;
//
//@RunWith(SpringJUnit4ClassRunner.class) //먼저 SpringJUnit4ClassRunner.class import한다.
//@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})
//
//public class BoardlTest {
//	@Autowired
//	private BoardMapper mapper;
//	
//	@Test
//	public void read() { mapper.read(8); }
//	
//	@Test
//	public void list() { 
//		mapper.totalCount(); 
//		}
//	
//	@Test
//	public void insert() { 
//		BoardVO vo = new BoardVO();
//		vo.setTitle("추가글");
//		vo.setContent("새글");
//		vo.setWriter("유저");
//		mapper.insert(vo);
//		mapper.list();
//		}
//	
//	@Test
//	public void update() { 
//		BoardVO vo = new BoardVO();
//		vo.setTitle("수정수정수정 12313 글");
//		vo.setContent("수정 456465글");
//		vo.setWriter("유저778");
//		vo.setBno(7);
//		mapper.update(vo);
//		mapper.read(7);
//		}
//	
//	@Test
//	public void delete() { 
//		mapper.delete(9); 
//		mapper.list();
//		}
//}
