package com.example.controller;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.example.domain.AddVO;
import com.example.mapper.AddMapper;

@RunWith(SpringJUnit4ClassRunner.class) //���� SpringJUnit4ClassRunner.class import�Ѵ�.
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/**/*.xml"})

public class AddTest {
	@Autowired
	private AddMapper mapper;
	
	@Test
	public void list(){
		mapper.list();
	}
	
	@Test
	public void read(){
		mapper.read(1);
	}
	
	@Test
	public void insert(){
		AddVO vo=new AddVO();
		vo.setName("�־�");
		vo.setTel("010-7759-9046");
		vo.setAddr("��õ������ ������");
		mapper.insert(vo);
	}
	
	@Test
	public void update(){
		AddVO vo = new AddVO();
		vo.setName("�� ��������");
		vo.setTel("010-7759-9046");
		vo.setAddr("��õ������ ������");
		vo.setAno(1);
		mapper.update(vo);
	}
	
	@Test
	public void delete(){
		mapper.delete(2);
	}
	
}