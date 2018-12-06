package com.project.sp;

import java.util.HashMap;
import java.util.Map;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class NullTest {
public static void main(String[] args) {
	Map<String,String> tes = new HashMap<String,String>();
	tes.put("test", "test");
	System.out.println(tes);
	tes = null;
	System.out.println(tes);
}
}
