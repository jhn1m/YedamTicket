package com.third.prj.performancereservation.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class PerformanceReservationVO {
	
	private int PReservNo;
	private Date reserveDttm;
	private String status;
	private String UId;
	private int PSchNo;
	private String seatStatCd;
	private String seatNo;
	private String RId;
	private String cancelCd;
	private String loc;//구역
	private String name;
	private String price;
}