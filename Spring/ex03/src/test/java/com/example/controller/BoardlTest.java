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
//@RunWith(SpringJUnit4ClassRunner.class) //���� SpringJUnit4ClassRunner.class import�Ѵ�.
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
//		vo.setTitle("�߰���");
//		vo.setContent("����");
//		vo.setWriter("����");
//		mapper.insert(vo);
//		mapper.list();
//		}
//	
//	@Test
//	public void update() { 
//		BoardVO vo = new BoardVO();
//		vo.setTitle("������������ 12313 ��");
//		vo.setContent("���� 456465��");
//		vo.setWriter("����778");
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
