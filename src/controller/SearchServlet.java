package controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import model.Order;
import model.Room;
import service.CustomerActions;

/**
 * Servlet implementation class SearchServlet
 */
@WebServlet("/SearchServlet")
public class SearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchServlet() {
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

		String date1 = request.getParameter("checkin");
		String date2 = request.getParameter("checkout");
		String[] sourceStrArray1 = date1.split("/");
		String[] sourceStrArray2 = date2.split("/");
		System.out.println("date1"+date1);
		System.out.println("date2"+date2);
		
		int checkin = Integer.valueOf(sourceStrArray1[0]+sourceStrArray1[1]+sourceStrArray1[2]);
		int checkout = Integer.valueOf(sourceStrArray2[0]+sourceStrArray2[1]+sourceStrArray2[2]);
		System.out.println(checkin);
		System.out.println(checkout);
        
        Order orderbig=new Order();
        CustomerActions ca = new CustomerActions();
        
        orderbig.setCheckin(checkin);
        orderbig.setCheckout(checkout);
        orderbig.setRoomtype("大床房");
        ArrayList<String> unfit_room=ca.getUnfitroom(orderbig);
        ArrayList<Room> fit_room_big=ca.getFitroom(unfit_room,orderbig.getRoomtype());
        Order orderstd=new Order();
        orderstd.setCheckin(checkin);
        orderstd.setCheckout(checkout);
        orderstd.setRoomtype("标准间");
        unfit_room=ca.getUnfitroom(orderstd);
        ArrayList<Room> fit_room_med=ca.getFitroom(unfit_room,orderstd.getRoomtype());
        Order ordersgl=new Order();
        ordersgl.setCheckin(checkin);
        ordersgl.setCheckout(checkout);
        ordersgl.setRoomtype("单人间");
        unfit_room=ca.getUnfitroom(ordersgl);
        ArrayList<Room> fit_room_sma=ca.getFitroom(unfit_room,ordersgl.getRoomtype());
        System.out.println(fit_room_sma.size());
        System.out.println(fit_room_med.size());
        System.out.println(fit_room_big.size());

		
		
		
		
		
		HttpSession session = request.getSession();
        
		session.setAttribute("checkin", checkin);
		session.setAttribute("checkout", checkout);
		
        session.setAttribute("num_big", fit_room_big.size());
        session.setAttribute("num_med", fit_room_med.size());
        session.setAttribute("num_sma", fit_room_sma.size());

        session.setAttribute("list_big",fit_room_big);
        session.setAttribute("list_med",fit_room_med);
        session.setAttribute("list_sma",fit_room_sma);
        

        RequestDispatcher rd = request.getRequestDispatcher("Menu.jsp");
        rd.forward(request, response);
	}

}
