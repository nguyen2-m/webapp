package test;

import java.util.List;

import DAO.DBControl;
import javaMode.DTO;

//テストするためメイン関数
public class test {

	public static void main(String[] args) {
		// TODO 自動生成されたメソッド・スタブ
		List<DTO> list = DBControl.getInstanse().selectAll();

		for (DTO dto : list) {
			System.out.println(dto.toString());
		}
	}

}
