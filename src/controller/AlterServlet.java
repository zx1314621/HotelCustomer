package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.CustomerDao;
import model.Customer;

/**
 * Servlet implementation class AlterServlet
 */
@WebServlet("/AlterServlet")
public class AlterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AlterServlet() {
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
		Customer c = new Customer();
		c.setCustomer_id(request.getParameter("id"));
		c.setPassword(request.getParameter("password"));
		c.setIdcard(request.getParameter("idcard"));
		c.setName(request.getParameter("name"));
		c.setGender(request.getParameter("gender"));
		c.setAge( Integer.parseInt(request.getParameter("age")) );
		
		CustomerDao cd = new CustomerDao();
		if ( cd.updateCustomer(c) ) {
			HttpSession session = request.getSession();//创建会话
			session.setAttribute("c",c);//储存用户登录数据
			session.setAttribute("alterflag", "1");
			response.sendRedirect("alter.jsp");return;//重定向转发
		}
		else {
			response.sendRedirect("alterfail.jsp");return;//重定向转发
		}
		
		
	}

}
