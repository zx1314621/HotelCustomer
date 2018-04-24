package service;

import java.util.ArrayList;

import DAO.CustomerDao;
import model.Customer;
import model.Order;
import model.Room;

public class CustomerActions {
	//成员变量
	Customer c = new Customer();
	CustomerDao cd = new CustomerDao();
	ReceptionistActions ra = new ReceptionistActions();
	
	public ArrayList<String> getUnfitroom(Order order){
		return ra.getUnfitroom(order);
	}
	
	public ArrayList<Room> getFitroom(ArrayList<String> unfit_room,String roomtype){
		return ra.getFitroom(unfit_room, roomtype);
	}
	
	public boolean checkDate(Order order, Order temporder) {
        for (int i = order.getCheckin(); i <= order.getCheckout(); i++) {
            //checkin-checkout 只要有一天不符合，返回 false
            if (i >= temporder.getCheckin() && i < temporder.getCheckout()) {
                return false;
            }
        }
        return true;
    }
	
	public Customer verifylogin(String username,String password) {
		ArrayList<Customer> cust = cd.getAllCustomer();
		
		for (int i=0;i<cust.size();i++){
			c=cust.get(i);
			if( c.getCustomer_id().equals(username) && c.getPassword().equals(password) ) {
				return c;
			}
		}
		return null;
	}
	
	
	
}
