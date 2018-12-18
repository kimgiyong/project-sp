package com.project.sp.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class PostComentVO {

	private Integer userNum;
	private String postCode;
	private Integer comentNum;
	private String comentText;
	private String comentCreDat;
	private String userName;
	private Integer pageS;
}
