package com.project.sp.vo;


import org.springframework.stereotype.Component;

import lombok.Data;

@Data
@Component
public class UserVO {
	
	private Integer userNum;
	private String userName;
	private String userId;
	private String userPwd;
	private String userBirth;
	private String userAddr;
	private String userMobile;
	private Integer userScore;
	private Integer userLevel;

}
