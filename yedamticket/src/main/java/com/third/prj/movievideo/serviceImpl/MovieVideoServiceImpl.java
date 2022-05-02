package com.third.prj.movievideo.serviceImpl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.third.prj.movievideo.mapper.MovieVideoMapper;
import com.third.prj.movievideo.service.MovieVideoService;
import com.third.prj.movievideo.service.MovieVideoVO;
@Repository("mvvDao")
public class MovieVideoServiceImpl implements MovieVideoService {

	@Autowired
	private MovieVideoMapper mapper;
	
	@Override
	public MovieVideoVO mvvSelect(MovieVideoVO vo) {
		return mapper.mvvSelect(vo);
	}

	@Override
	public int movieVideoInsert(MovieVideoVO vo) {
		// TODO Auto-generated method stub
		return mapper.movieVideoInsert(vo);
	}

}
