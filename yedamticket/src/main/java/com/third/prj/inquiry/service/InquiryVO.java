package com.third.prj.inquiry.service;

import java.sql.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class InquiryVO {
	
	private int inNo;
	private String title;
	private String content;
	private String UId;
	@JsonFormat(pattern = "yyyy-MM-dd", timezone="Asia/Seoul")
	private Date inDt;
	private String kind;//문의유형(RJH)
	
}
