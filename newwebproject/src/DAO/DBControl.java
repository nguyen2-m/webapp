package DAO;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import connector.Connector;
import javaMode.DTO;


public class DBControl implements DAOinterface<DTO> {


	public static DBControl getInstanse() {
		return new DBControl();
	}

	@Override
	public int insert(DTO t) {
		// TODO 自動生成されたメソッド・スタブ


		return 0;
	}

	@Override
	public int update(DTO t) {
		// TODO 自動生成されたメソッド・スタブ
		return 0;
	}

	@Override
	public int delete(DTO t) {
		// TODO 自動生成されたメソッド・スタブ
		return 0;
	}

	@Override
	public List<DTO> selectAll() {
		// TODO 自動生成されたメソッド・スタブ

		List<DTO> ketqua= new ArrayList<DTO>();
		try {
//			c.setAutoCommit(false);
			System.out.println("1");
			Connection con = Connector.getConnection();
			System.out.println("1");

			Statement st = con.createStatement();

			String sql =" SELECT * from userInfo";


			ResultSet rs =  st.executeQuery(sql);

			while(rs.next()) {
				String classname = rs.getString("className");
				String user = rs.getString("userId");
				String name = rs.getString("userName");


//				DTO dto = new DTO(id,code,name);
				ketqua.add(new DTO(classname, user, name));
			}


		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
		return ketqua;
	}

	@Override
	public DTO selectById(DTO t) {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}

	@Override
	public ArrayList<DTO> setectByCindition(String condition) {
		// TODO 自動生成されたメソッド・スタブ
		return null;
	}

}
