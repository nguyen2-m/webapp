package myConntroller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DBControl;
import javaMode.DTO;

@WebServlet(urlPatterns = {"/test123"})
public class servlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		List<DTO> list = DBControl.getInstanse().selectAll();

		System.out.println("11");

		for (DTO dto : list) {
			System.out.println(dto.toString());
		}

		req.setAttribute("listS", list);
		System.out.println("12");
		RequestDispatcher rs = req.getRequestDispatcher("kintaikanri.jsp");
		rs.forward(req, resp);

	}

}
