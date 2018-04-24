package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LeaveMessage
 */
@WebServlet("/LeaveMessage")
public class LeaveMessage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LeaveMessage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		HttpSession session =  request.getSession() ;
	
		String customer_id= (String)session.getAttribute("customer_id");
		String  name=request.getParameter("name");
		String  roomtype=request.getParameter("roomtype");
		String  message=request.getParameter("message");
		try {
			Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");			
			} catch (ClassNotFoundException e) {
					// TODO Auto-generated catch block
			e.printStackTrace();
				}
		try {
					String URL = "jdbc:sqlserver://localhost:1433;DatabaseName=hotel";
					Connection con=DriverManager.getConnection(URL,"sa","123");			
		            String sql = "insert into message(customer_id,name,roomtype,message) values (?,?,?,?)";
		            PreparedStatement stmt = con.prepareStatement(sql);
					stmt.setString(1,customer_id);
					stmt.setString(2,name);
					stmt.setString(3,roomtype);
					stmt.setString(4,message);
					stmt.executeUpdate();
		            stmt.close();
					con.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		        RequestDispatcher dispatcher=request.getRequestDispatcher("/LeaveMessageSuccess.html");
			    dispatcher.forward(request, response);
	}

}
