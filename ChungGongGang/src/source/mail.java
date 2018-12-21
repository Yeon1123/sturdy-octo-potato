//메일을 전송하는 메소드.

package source;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Properties;

import java.util.Date;
import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

//출처: http://fruitdev.tistory.com/15 [과일가게 개발자]
public class mail {
	public void sendMail(String id, String mail){

		String htmltext = 
				"<html>"+"<meta charset=\"utf-8\">"+"<h1>충남대학교 공지 갱신사이트!</h1>"+
						"<p>"+id+"회원님 반갑습니다.</p>"+"<p>회원님의 충공갱 회원 가입을 진심으로 축하합니다!</p>"+
						"<a href=\"http://localhost:8080/ChungGongGang/chungGongGang/pages/cnuNew.jsp\">충남대학교 새소식 확인하기!</a>"+ 
						"<p>----------------------------------------------</p>"+
						"<a href=\"http://localhost:8080/ChungGongGang/chungGongGang/index.jsp\" style=\"font-size:10px\">충공갱 바로가기</a>";

		// 항목

		Properties p = System.getProperties();
		p.put("mail.smtp.starttls.enable", "true"); // gmail은 무조건 true 고정
		p.put("mail.smtp.host", "smtp.gmail.com"); // smtp 서버 주소
		p.put("mail.smtp.auth", "true"); // gmail은 무조건 true 고정
		p.put("mail.smtp.port", "587"); // gmail 포트

		Authenticator auth = new MyAuthentication();

		Session session = Session.getDefaultInstance(p, auth);

		MimeMessage msg = new MimeMessage(session);
		try {
			// 편지보낸시간
			msg.setSentDate(new Date());
			InternetAddress from = new InternetAddress();

			from = new InternetAddress("test<test@gmail.com>");
			// 이메일 발신자
			msg.setFrom(from);
			// 이메일 수신자
			InternetAddress to = new InternetAddress(mail);
			msg.setRecipient(Message.RecipientType.TO, to);
			// 이메일 제목
			msg.setSubject("<<충남대학교 공지 갱신사이트 회원 가입을 축하드립니다!>>", "UTF-8");
			// 이메일 내용
			msg.setText("내용", "UTF-8");
			msg.setContent(htmltext, "text/html; charset=utf-8");
			// 이메일 헤더
			msg.setHeader("content-Type", "text/html");

			// 메일보내기
			javax.mail.Transport.send(msg);
			//System.out.println("보내졌어요!");

		} catch (AddressException addr_e) {
			addr_e.printStackTrace();
		} catch (MessagingException msg_e) {
			msg_e.printStackTrace();
		}

	}

}

class MyAuthentication extends Authenticator {

	PasswordAuthentication pa;

	public MyAuthentication() {

		String id = "dbwjddus1997@gmail.com"; // 구글 ID
		String pw = "gh06090730"; // 구글 비밀번호

		// ID와 비밀번호를 입력한다.
		pa = new PasswordAuthentication(id, pw);

	}

	// 시스템에서 사용하는 인증정보
	public PasswordAuthentication getPasswordAuthentication() {
		return pa;
	}
}
