package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import DAO.MessageDao;
import DAO.OrderDao;
import model.Customer;
import model.Message;
import model.Order;

/**
 * Servlet implementation class CommentServlet
 */
@WebServlet("/CommentServlet")
public class CommentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommentServlet() {
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
		
		ServletContext context = this.getServletContext();
		HttpSession session = request.getSession();//创建会话
		Customer c = new Customer();
		Order o = new Order();
		OrderDao od = new OrderDao();
		Message m = new Message();
		MessageDao md = new MessageDao( (DataSource)context.getAttribute("dataSource") );
		
		int star = Integer.parseInt( request.getParameter("star") );
		String comment = request.getParameter("comment");
		String order_id = (String) session.getAttribute("order_id");
		c = (Customer) session.getAttribute("c");
		
		if( md.getMessageBy_OrderId(order_id) != null ) {
			response.sendRedirect("commentfail.jsp");return;
		}
		
		ArrayList<Order> orderlist = (ArrayList<Order>) session.getAttribute("orderlist");
		for(int i =0;i<orderlist.size();i++) {
			o = orderlist.get(i);
			if ( o.getOrder_id().equals(order_id) ) {
				m.setOrder_id(order_id);
				m.setRoom_id(o.getRoom_id());
				m.setRoomtype(o.getRoomtype());
				m.setLevel(star);
				m.setMessage(comment);
				m.setCustomer_id(c.getCustomer_id());
				m.setName(c.getName());
				md.addMessage(m);
				od.update_Status(order_id, 3);
				response.sendRedirect("commentsuccess.jsp");return;
			}
			
		}
		
		response.sendRedirect("commenterror.jsp");return;
		
	}

}
