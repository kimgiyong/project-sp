package com.project.sp.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class LikeVO {
	
	private Integer userNum;
	private String bookCode;
}
