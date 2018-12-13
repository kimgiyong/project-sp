package com.project.sp.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Component
@Data
public class BookVO {

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
	private Integer pageS;
}
