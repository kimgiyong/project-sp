package com.project.sp.util;

import java.util.Date;
import java.util.List;
import java.util.Properties;

import javax.mail.Address;
import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class SendMail {


	static final String username = "xxzcsv@gmail.com";
	static final String password = "112548zx@";
	
	public static String send(String email, String userName) {
		String key = randomKey();
		String msg = "<div style=\"width: 800px; margin:0px auto; padding:0px auto;\">\r\n" + 
				"<div style=\"margin: 90px auto; text-align: center;  padding-top:20px; border: 1px solid gray;\">\r\n" + 
				"\r\n" + 
				"<h1>비밀번호 재설정을 위한 인증번호입니다.</h1>\r\n" + 
				"\r\n" + 
				"<pre style=\"font-size: 20px;\">\r\n" + 
				"비밀번호를 찾기 위한 인증번호입니다.	\r\n" + 
				"비밀번호 찾기 페이지에서 아래의 인증번호를 입력하여\r\n" + 
				"비밀번호를 재설정 할 수 있습니다.\r\n" + 
				"\r\n" + 
				"\r\n" + 
				"<div style=\"text-align: left; margin:0 40px;\">\r\n" + 
				"<hr>\r\n" + 
				userName +"님의 계정  :		"+ email +"\r\n" + 
				"<hr>\r\n" + 
				"인증번호  :		        "+ key +"\r\n" + 
				"<hr>\r\n" + 
				"</div>\r\n" + 
				"\r\n" + 
				"</pre>\r\n" + 
				"</div>\r\n" + 
				"</div>";
		Properties props = new Properties();
		/*
		 * props.put("mail.smtp.user",username); props.put("mail.smtp.password",
		 * password);
		 */
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "25");
		props.put("mail.debug", "true");
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.EnableSSL.enable", "true");
		props.setProperty("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
		props.setProperty("mail.smtp.socketFactory.fallback", "false");
		props.setProperty("mail.smtp.port", "465");
		props.setProperty("mail.smtp.socketFactory.port", "465");

		Session session = Session.getInstance(props, new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		});
		System.out.println("??");
		try {
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username,"좋은향 도서관"));//
			message.setRecipients(Message.RecipientType.TO, InternetAddress.parse(email));
			message.setSubject("좋은향 도서관 비밀번호 재설정 인증번호입니다.");
			message.setContent(msg, "text/html; charset=utf-8");// 내용
			// message.setContent("내용","text/html; charset=utf-8");//글내용을 html타입 charset설정
			System.out.println("send!!!");
			Transport.send(message);
			System.out.println("SEND");

		} catch (Exception e) {
			e.printStackTrace();
		}
		return key;
	}
	
	public static String randomKey() {
		String key = "";
		for(int a=0;a<=7;a++) {
			int num = (int) (Math.random() * 36);
			if(num>=1 &&num<=9) {
				key+=num;
			}else {
				char ch = (char)(num+55);
				key+= String.valueOf(ch);
			}
		}
		return key;
	}

}
