package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.OrderDao;
import model.Order;

/**
 * Servlet implementation class DoOrderServlet
 */
@WebServlet("/DoOrderServlet")
public class DoOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DoOrderServlet() {
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
		
		Order o = new Order();
		OrderDao od = new OrderDao();
		HttpSession session = request.getSession();//创建会话
		
		String all = (String) session.getAttribute("all");
		o = (Order) session.getAttribute("o");
		o.setProcessed(0);
		o.setRequirement(all);
		
		od.addOrder(o);
		
		response.sendRedirect("ordersuccess.jsp");return;
	}

}
