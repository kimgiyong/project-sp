package com.project.sp;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class NullTest {
public static void main(String[] args) {
	String test=null;
	if(test.equals("test")) {
		log.info("test => {}",test);
	}
}
}
