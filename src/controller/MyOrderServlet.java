package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.OrderDao;
import model.Customer;
import model.Order;

/**
 * Servlet implementation class MyOrderServlet
 */
@WebServlet("/MyOrderServlet")
public class MyOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyOrderServlet() {
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
		
		HttpSession session = request.getSession();//创建会话
		
		OrderDao od = new OrderDao();
		Customer c = new Customer();
		c = (Customer) session.getAttribute("c");
		ArrayList<Order> orderlist = od.getOrdersBy_idcard(c.getIdcard());
		
		session.setAttribute("orderlist", orderlist);
		
		response.sendRedirect("MyOrder.jsp");return;
	}

}
