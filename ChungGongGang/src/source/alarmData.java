package source;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

/*윤지애 : alarm database 생성, 가져오기.*/
public class alarmData {

	private ArrayList<String> a;

	public void dataSave(alarm alarm){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chung?serverTimezone=UTC", "root", "gh4512");
			// 객체를 생성한다.

			Statement stmt = conn.createStatement(); // stmt 객체.

			String sql = "INSERT INTO a1 (id, notice_board, aSystem, keyword, aDate)"
					+ " VALUES ('" + "myid"  + "', '"+ alarm.getNotice_board()  + "', '"  
					+ alarm.getSystem()  + "', '"  + 
					alarm.getKeyword()  + "', '"  + getToday()  + "')";

			if(stmt.executeUpdate(sql) == 1)
				System.out.println("삽입 성공");
			else
				System.out.println("삽입 실패");

			conn.close();
			stmt.close(); // Connection과 Statement 닫아주기.
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}


	/*알람 정보 열람*/
	public void dataOpen() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chung?serverTimezone=UTC", "root", "gh4512");
			// 객체를 생성한다.

			Statement stmt = conn.createStatement(); // stmt 객체.

			String sql2 = "SELECT * FROM a1;"; // chung 테이블을 선택
			PreparedStatement pstmt = conn.prepareStatement(sql2);

			ResultSet rs = pstmt.executeQuery(); // Resultset활용.

			a = new ArrayList<String>();

			while(rs.next()) {
				a.add(rs.getString(1));
				a.add(rs.getString(2));
				a.add(rs.getString(3));
				a.add(rs.getString(4));
				a.add(rs.getString(5));
				a.add(rs.getString(6));
			} // table의 한 행으로 모두 출력한다. 

			conn.close();
			stmt.close(); // Connection과 Statement 닫아주기.
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

	public void delRow(String index) {

		dataOpen();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chung?serverTimezone=UTC", "root", "gh4512");
			// 객체를 생성한다.

			Statement stmt = conn.createStatement(); // stmt 객체.

			int ind = Integer.parseInt(index);

			String sql3 = "delete from a1 where users = '" + ind + "'";

			stmt.execute(sql3);

			conn.close();
			stmt.close(); // Connection과 Statement 닫아주기.
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

	public void delTable() {

		dataOpen();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/chung?serverTimezone=UTC", "root", "gh4512");
			// 객체를 생성한다.

			Statement stmt = conn.createStatement(); // stmt 객체.

			String sql3 = "truncate a1";

			stmt.execute(sql3);

			conn.close();
			stmt.close(); // Connection과 Statement 닫아주기.
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}catch(SQLException e) {
			e.printStackTrace();
		}
	}

	/*알람 설정일을 받아오기 위한 메소드.*/
	public String getToday() {
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("MM/dd a hh:mm:ss");
		String to = date.format(today);

		return to;
	}

	/*알람 설정 정보 table로 받아오는 메소드*/
	public ArrayList<String> getList(){
		dataOpen();
		return a;
	}
}
