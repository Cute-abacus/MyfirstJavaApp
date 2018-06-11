package servlet;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import dao.UserDAO;
import entity.User;

/**
 * Servlet implementation class loginServelet
 */
@WebServlet("/loginServlet")
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public loginServlet() {
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
		//PrintWriter out = response.getWriter();
		//out.println("<strong>here is my first jsp</string><br>");
		User u=null;
		String user_id = null,user_code=null;
		try {
			user_id=request.getParameter("username");
			user_code=request.getParameter("password");
			if(user_id==null||user_code==null) {
				System.out.print("wrong\n");
			}
				
			UserDAO m=new UserDAO();
			if(user_id!=null) {
				u=m.get(user_id);
			}
			else {
				System.out.println("传递参数失败");
			}
			
			String message;
			if(u==null||u.getUser_code()==null) {
				message="没有该用户";
			    request.getSession().setAttribute("message", message);
				request.getRequestDispatcher("../NoUser.jsp").forward(request, response);
				//为什么不跳转呢？
			}
			//System.out.print(u.getUser_code());
			if(u!=null&&u.getUser_code()!=null&&user_code.equals(u.getUser_code())) {
				User u1=u;
				message="登陆成功";
				request.getSession().setAttribute("user",u1);
				request.getSession().setAttribute("success", message);
				request.getRequestDispatcher("../CurrentUserweb.jsp").forward(request, response);
			}
			else if(u!=null) {
				message="密码错误";
				request.getSession().setAttribute("message", message);
				request.getRequestDispatcher("../WrongCode.jsp").forward(request, response);

			}
			
		}
		catch(Exception ex){
			ex.printStackTrace();
		}
		
		
	}

}
