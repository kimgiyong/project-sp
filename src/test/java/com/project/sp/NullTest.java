package com.project.sp;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;

import com.project.sp.dao.impl.BookDAOImpl;
import com.project.sp.vo.BookVO;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class NullTest {
public static void main(String[] args) {
	BookDAOImpl book = new BookDAOImpl();
	BookVO bo = new BookVO();
	bo.setBookName("집");
}
}
