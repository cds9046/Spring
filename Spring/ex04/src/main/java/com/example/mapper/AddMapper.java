package com.example.mapper;

import java.util.List;

import com.example.domain.AddVO;
import com.example.domain.Criteria;

public interface AddMapper {//페이징을 위한
	public List<AddVO> list(Criteria cri); 
	public int totalCount(Criteria cri);
}
