package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class RequireServlet
 */
@WebServlet("/RequireServlet")
public class RequireServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RequireServlet() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String orientation = request.getParameter("orientation");
		String floor = request.getParameter("floor");
		String requirement = request.getParameter("requirement");
		
		String all = "房间朝向：" + orientation + "	房间楼层：" + floor + "		备注信息：" + requirement;
		
		HttpSession session = request.getSession();//创建会话
		session.setAttribute("flag", "1");
		session.setAttribute("requirement", requirement);
		session.setAttribute("all", all);
		
		response.sendRedirect("Layer.jsp");return;
	}

}
