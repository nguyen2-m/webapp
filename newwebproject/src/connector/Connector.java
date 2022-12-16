package connector;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connector {

	public static Connection getConnection() {
		Connection c= null;

		try {
			System.out.println("2");
//			DriverManager.registerDriver(new com.mysql.jdbc.Driver());
//			DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());

			Class.forName("com.mysql.jdbc.Driver");
			System.out.println("3");
			String url = "jdbc:mysql://localhost:3306/kintaikanri";   //?useLegacyDatetimeCode=false&serverTimezone=UTC";
			String username ="root";
			String password ="";

			c= DriverManager.getConnection(url, username, password);



		} catch (SQLException e) {

			System.out.println("エラー１");
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
//		} catch (Exception e) {
//			// TODO 自動生成された catch ブロック
//			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			System.out.println("エラー2");
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}

		return c;

	}

	public static void closeConnection(Connection c) {
		try {
			if(c!=null) {
				System.out.println("close");
				c.close();

			}
		} catch (Exception e) {
			System.out.println("エラー２");
			e.printStackTrace();
		}
	}

}
