package com.project.sp;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.SQLException;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.project.sp.controller.UserController;
import com.project.sp.service.UserService;
import com.project.sp.vo.UserVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class VOTest {

	@Autowired
	private UserService us;
	
	@Test
	public void test() {
		UserVO user = new UserVO();
		// 이름 아이디 비밀번호 생일 전화번호
		user.setUserName("홍길동");
		user.setUserId("zxcvbn@naver.com");
		user.setUserPwd("987654321");
		user.setUserBirth("1976-07-25");
		user.setUserMobile("01031642859");
		assertEquals(1,us.userInsert(user));
	}
	
}
