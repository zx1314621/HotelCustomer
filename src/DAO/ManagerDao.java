package DAO;
import java.sql.*;

import model.*;

public class ManagerDao extends BaseDao{
	//添加操作
    public boolean updateManager(Manager manager){     
        String sql="UPDATE Manager SET manager_id=?,password=?,idcard=?,name=?,gender=?,age=? WHERE room_id=?;";
        try {
        	Connection conn=dataSource.getConnection();
        	PreparedStatement pstmt=conn.prepareStatement(sql);
            pstmt.setString(1,manager.getManager_id());
            pstmt.setString(2,manager.getPassword());
            pstmt.setString(3,manager.getIdcard());
            pstmt.setString(4,manager.getName());
            pstmt.setString(5,manager.getGender());
            pstmt.setInt(6,manager.getAge());
            pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            return true;
        } catch (SQLException e) {
            System.out.println("更新room信息时发生问题"+e);
        }
        return false;
    }
	public boolean addReceptionist(Receptionist receptionist)
	{
		String sql = "INSERT INTO receptionist" 
	                 + "(receptionist_id,password,name,gender,idcard,age)VALUES(?,?,?,?,?,?)";
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			{
				pstmt.setString(1, receptionist.getReceptionist_id());
				pstmt.setString(2, receptionist.getPassword());
				pstmt.setString(3, receptionist.getName());
				pstmt.setString(4, receptionist.getGender());
				pstmt.setString(5, receptionist.getIdcard());
				pstmt.setInt(6, receptionist.getAge());
				pstmt.executeUpdate();
				return true;
			}
		}catch(SQLException se) {
			se.printStackTrace();
			return false;
		}
	}
	public boolean addCustomer(Customer customer)
	{
		String sql = "INSERT INTO customer" 
                + "(customer_id,password,name,gender,age,idcard)VALUES(?,?,?,?,?,?)";
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			{
				pstmt.setString(1, customer.getCustomer_id());
				pstmt.setString(2, customer.getPassword());
				pstmt.setString(3, customer.getName());
				pstmt.setString(4, customer.getGender());
				pstmt.setInt(5, customer.getAge());
				pstmt.setString(6, customer.getIdcard());
				pstmt.executeUpdate();
				return true;
			}
		}catch(SQLException se) {
			se.printStackTrace();
			return false;
		}
	}
	public boolean addRoom(Room room)
	{
		String sql = "INSERT INTO room" 
	                 + "(room_id,roomtype,orientation,floor,price,orderNum)VALUES(?,?,?,?,?,?)";
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			{
				pstmt.setString(1, room.getRoom_id());
				pstmt.setString(2, room.getRoomtype() );
				pstmt.setString(3, room.getOrientation() );
				pstmt.setInt(4, room.getFloor());
				pstmt.setInt(5, room.getPrice());
				pstmt.setInt(6, room.getOrderNum());
				pstmt.executeUpdate();
				return true;
			}
		}catch(SQLException se) {
			se.printStackTrace();
			return false;
		}
	}
	public boolean addOrder(Order order)
	{
		String sql = "INSERT INTO Orders" 
	                 + "(order_id,idcard,customerName,roomtype,checkin,checkout,room_id,requirement,processed)VALUES(?,?,?,?,?,?,?,?,?)";
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			{
				pstmt.setString(1, order.getOrder_id());
				pstmt.setString(2, order.getIdcard() );
				pstmt.setString(3, order.getCustomerName() );
				pstmt.setString(4, order.getRoomtype());
				pstmt.setInt(5, order.getCheckin());
				pstmt.setInt(6, order.getCheckout());
				pstmt.setString(7, order.getRoom_id());
				pstmt.setString(8, order.getRequirement());
				pstmt.setInt(9, order.getProcessed());
				pstmt.executeUpdate();
				return true;
			}
		}catch(SQLException se) {
			se.printStackTrace();
			return false;
		}
	}
	public boolean deleteReceptionist(String receptionist_id)
	{
		String sql = "delete * from receptionist where receptionist_id = ?" ;
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			{
				pstmt.setString(1,receptionist_id);
				pstmt.executeUpdate();
				return true;
			}
		}catch(SQLException se) {
			se.printStackTrace();
			return false;
		}
		
	}
	public boolean deleteCustomer(String customer_id)
	{
		String sql = "delete * from customer where customer_id = ?" ;
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			{
				pstmt.setString(1,customer_id);
				pstmt.executeUpdate();
				return true;
			}
		}catch(SQLException se) {
			se.printStackTrace();
			return false;
		}
	}
	public boolean deleteOrder(String order_id)
	{
		String sql = "delete * from Orders where order_id = ?" ;
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			{
				pstmt.setString(1,order_id);
				pstmt.executeUpdate();
				return true;
			}
		}catch(SQLException se) {
			se.printStackTrace();
			return false;
		}
	}
	public boolean deleteRoom(String room_id)
	{
		String sql = "delete * from Room where room_id = ?" ;
		try {
			Connection conn = dataSource.getConnection();
			PreparedStatement pstmt = conn.prepareStatement(sql);
			{
				pstmt.setString(1,room_id);
				pstmt.executeUpdate();
				return true;
			}
		}catch(SQLException se) {
			se.printStackTrace();
			return false;
		}
	}
}
