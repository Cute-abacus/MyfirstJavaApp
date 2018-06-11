package servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.UserDAO;
import entity.User;

/**
 * Servlet implementation class changecodeServlet
 */
@WebServlet("/changecodeServlet")
public class changecodeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public changecodeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=utf-8");
		String new_code=null;
		String check_code=null;
		User u=(User)request.getSession().getAttribute("user");
		new_code=request.getParameter("user_code1");
		check_code=request.getParameter("user_code2");
		if(new_code==null||new_code=="") {
			request.getRequestDispatcher("../重设密码为空.jsp").forward(request, response);
		}
		else if(!new_code.equals(check_code)) {
			request.getRequestDispatcher("../重设密码不相等.jsp").forward(request, response);
		}
		else {
			UserDAO m=new UserDAO();
			u.setUser_code(new_code);
			try {
				m.updateUser_code(u);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			try {
				u=m.get(u.getUser_id());
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			if(new_code.equals(u.getUser_code())) {
				request.getRequestDispatcher("../重设成功.jsp").forward(request, response);
			}
			
		}
	}

}
