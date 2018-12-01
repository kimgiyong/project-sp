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
		// 번호 이름 아이디  생일 전화번호
		user.setUserId("xxzcsv@naver.com");
		user.setUserName("김기기");
		user.setUserMobile("12345678912");
		user.setUserBirth("2000-01-01");
		assertNotNull(us.userSearchPwd(user));
		
	}
}