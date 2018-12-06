package com.project.sp;

import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertNotNull;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Map;

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

//	@Autowired
//	private UserService us;
	
	public void setMap(Map<String,String> tes) {
		tes.put("test", "test");
	}
	public void setMap2(Map<String,String> tes) {
		tes = null;
	}
	@Test
	public void test() {
		Map<String,String> tes = new HashMap<String,String>();
		setMap(tes);
		System.out.println(tes);
		setMap2(tes);
		System.out.println(tes);
	}
}