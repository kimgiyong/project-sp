package com.project.sp.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class PostVO {

	private Integer userNum;
	private String postCode;
	private String postTitle;
	private String postText;
	private String credat;
	private String moddat;
	private String postImg;
}
