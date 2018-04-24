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
import model.Room;

/**
 * Servlet implementation class BookServlet
 */
@WebServlet("/BookServlet")
public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BookServlet() {
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
		if( session.getAttribute("c") == null) {response.sendRedirect("customerlogin.jsp");return;}
		
		Room r = new Room();
		Order o = new Order();
		Customer c = new Customer();
		OrderDao od = new OrderDao();
		
		int checkin = (int) session.getAttribute("checkin");
		int checkout =  (int) session.getAttribute("checkout");
		c = (Customer) session.getAttribute("c");
		
		ArrayList<Order> orderlist = od.getAllOrder();
		
		String action = request.getParameter("action");
		if (action != null && action.equals("big")){
			ArrayList<Room> list_big = (ArrayList<Room>) session.getAttribute("list_big");
			r = list_big.get(0);
			o.setOrder_id( orderlist.size()+1+"" );
			o.setIdcard( c.getIdcard() );
			o.setCustomerName( c.getName() );
			o.setCheckin(checkin);
			o.setCheckout(checkout);
			o.setRoom_id( r.getRoom_id() );
			o.setRoomtype( r.getRoomtype() );		
		}
		else if (action.equals("med")){
			ArrayList<Room> list_med = (ArrayList<Room>) session.getAttribute("list_med");
			r = list_med.get(0);
			o.setOrder_id( orderlist.size()+1+"" );
			o.setIdcard( c.getIdcard() );
			o.setCustomerName( c.getName() );
			o.setCheckin(checkin);
			o.setCheckout(checkout);
			o.setRoom_id( r.getRoom_id() );
			o.setRoomtype( r.getRoomtype() );
		}
		else if (action.equals("sma")) {
			ArrayList<Room> list_sma = (ArrayList<Room>) session.getAttribute("list_sma");
			r = list_sma.get(0);
			o.setOrder_id( orderlist.size()+1+"" );
			o.setIdcard( c.getIdcard() );
			o.setCustomerName( c.getName() );
			o.setCheckin(checkin);
			o.setCheckout(checkout);
			o.setRoom_id( r.getRoom_id() );
			o.setRoomtype( r.getRoomtype() );
		}
		
		session.setAttribute("o", o);
		
		response.sendRedirect("Layer.jsp");return;
	}

}
