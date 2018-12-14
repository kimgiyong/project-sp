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
import com.project.sp.dao.BookDAO;
import com.project.sp.service.BookService;
import com.project.sp.service.UserService;
import com.project.sp.vo.BookVO;
import com.project.sp.vo.PageVO;
import com.project.sp.vo.UserVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("file:src/main/webapp/WEB-INF/spring/root-context.xml")
public class VOTest {

	@Autowired
	private BookDAO bs;
	
	@Test
	public void test() {
		BookVO bv = new BookVO();
		bv.setBookName("집");
		bs.bookSelectList(bv);
		PageVO p = new PageVO();
		p.makePaging(15,10);
	}
}