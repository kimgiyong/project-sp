package com.project.sp.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class takeVO {

	private Integer userNum;
	private String bookCode;
	private String checkIn;
	private String takeSDat;
	private String takeEDat;
	private String reDat;
	private Integer checkRe;
}
