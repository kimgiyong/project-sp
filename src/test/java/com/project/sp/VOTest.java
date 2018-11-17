package com.project.sp;

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

import com.project.sp.controller.LibController;
import com.project.sp.service.LibService;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class VOTest {

	@Autowired
	@Qualifier("dataSourceProxy")
	private DataSource ds;
	
	@Autowired
	private LibService ls;
	
	@Test
	public void test() {
		try {
			Connection con = ds.getConnection();
			assertNotNull(con);
			con.createStatement().execute("select * from usertbl");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Test
	public void test2() {
		
	}
}
