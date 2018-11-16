package com.project.sp.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class bookVO {

	private Integer userNum;
	private String bookCode;
	private String bookName;
	private String bookPub;
	private String bookWriter;
	private String bookYear;
	private Integer bookAmount;
	private String bookImg;
	private Integer bookLike;
	private String moddat;
	private String credat;
	private String bookdesc;
}
