package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;

import DAO.MessageDao;
import model.Message;

/**
 * Servlet implementation class LookServlet
 */
@WebServlet("/LookServlet")
public class LookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LookServlet() {
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
		ServletContext context = this.getServletContext();
		Message m = new Message();
		MessageDao md = new MessageDao( (DataSource)context.getAttribute("dataSource") );
		
		String order_id = request.getParameter("lookup");
		
		m = md.getMessageBy_OrderId(order_id);
		session.setAttribute("m", m);
		session.setAttribute("single", "1");
		
		RequestDispatcher rd = request.getRequestDispatcher("MyOrder.jsp");
        rd.forward(request, response);
	}

}
