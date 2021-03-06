package com.project.sp.vo;

import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class BookComentVO {

	private Integer userNum;
	private String bookCode;
	private Integer comentNum;
	private String comentText;
	private String comentCreDat;
	private String userName;
	private Integer pageS;
}
