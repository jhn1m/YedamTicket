package com.third.prj.movievideo.service;


public interface MovieVideoService {

//	int PVideoUpdate(PerformanceVideoVO vo);
	//performanceVideo조회 - 22/04/01(RJH)
		MovieVideoVO mvvSelect(MovieVideoVO vo);
		
		// 비디오 업로드
		int movieVideoInsert(MovieVideoVO vo);
}
