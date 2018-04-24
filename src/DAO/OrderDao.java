package DAO;

import model.Order;

import java.sql.*;
import java.util.ArrayList;

public class OrderDao extends BaseDao {


    //通过身份证 集合类
    public ArrayList<Order> getOrdersBy_idcard(String idcard){
      ArrayList<Order> list = null;
      Connection con;
      PreparedStatement stmt;
      ResultSet resultSet;
      String SQL="select * from orders where idcard=?";
        try {
            con=dataSource.getConnection();
            stmt=con.prepareStatement(SQL);
            stmt.setString(1,idcard);
            resultSet=stmt.executeQuery();
            while (resultSet.next()){
            	if( list == null ) list = new ArrayList<>();
                Order order=new Order();
                order.setOrder_id(resultSet.getString("order_id"));
                order.setIdcard(resultSet.getString("idcard"));
                order.setCustomerName(resultSet.getString("customerName"));
                order.setCheckin(resultSet.getInt("checkin"));
                order.setCheckout(resultSet.getInt("checkout"));
                order.setRoom_id(resultSet.getString("room_id"));
                order.setProcessed(resultSet.getInt("processed"));
                order.setRequirement(resultSet.getString("requirement"));
                order.setRoomtype(resultSet.getString("roomtype"));
                list.add(order);
            }
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public Order getOrder(String order_id){
        Connection con;
        PreparedStatement stmt;
        ResultSet resultSet;
        Order order=new Order();
        String SQL="select * from Orders where order_id=?";
        try {
            con=dataSource.getConnection();
            stmt=con.prepareStatement(SQL);
            stmt.setString(1,order_id);
            resultSet=stmt.executeQuery();
            while (resultSet.next()){
                order.setRoom_id(resultSet.getString("room_id"));
                order.setOrder_id(resultSet.getString("order_id"));
                order.setIdcard(resultSet.getString("idcard"));
                order.setCustomerName(resultSet.getString("customerName"));
                order.setCheckin(Integer.valueOf(resultSet.getString("checkin")));
                order.setCheckout(Integer.valueOf(resultSet.getString("checkout")));
                order.setRoomtype(resultSet.getString("roomtype"));
                order.setRequirement(resultSet.getString("requirement"));
                order.setProcessed(resultSet.getInt("processed"));
            }
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return order;
    }
    public Order getOrderbyRoomStatus(String room_id){
        Connection con;
        PreparedStatement stmt;
        ResultSet resultSet;
        Order order=null;
        String SQL="select * from Orders where room_id=? and processed=1";
        try {
            con=dataSource.getConnection();
            stmt=con.prepareStatement(SQL);
            stmt.setString(1,room_id);
            resultSet=stmt.executeQuery();
            while (resultSet.next()){
                order=new Order();
                order.setRoom_id(resultSet.getString("room_id"));
                order.setOrder_id(resultSet.getString("order_id"));
                order.setIdcard(resultSet.getString("idcard"));
                order.setCustomerName(resultSet.getString("customerName"));
                order.setCheckin(Integer.valueOf(resultSet.getString("checkin")));
                order.setCheckout(Integer.valueOf(resultSet.getString("checkout")));
                order.setRoomtype(resultSet.getString("roomtype"));
                order.setRequirement(resultSet.getString("requirement"));
                order.setProcessed(resultSet.getInt("processed"));
            }
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return order;
    }
    public boolean addOrder(Order order){
        Connection con;
        PreparedStatement stmt;
        String SQL="Insert into Orders(order_id,idcard,customerName,checkin,checkout,roomtype,requirement,room_id,processed) values(?,?,?,?,?,?,?,?,?);";
        try {
            con=dataSource.getConnection();
            stmt=con.prepareStatement(SQL);
            stmt.setString(1,order.getOrder_id());
            stmt.setString(2,order.getIdcard());
            stmt.setString(3,order.getCustomerName());
            stmt.setInt(4,order.getCheckin());
            stmt.setInt(5,order.getCheckout());
            stmt.setString(6,order.getRoomtype());
            stmt.setString(7,order.getRequirement());
            stmt.setString(8,order.getRoom_id());
            stmt.setInt(9,order.getProcessed());
            stmt.executeUpdate();
            stmt.close();
            con.close();
            return true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false;
    }
    public boolean deleteOrder(String order_id){
        Connection con;
        PreparedStatement pstmt;
        String SQL="DELETE FROM Order WHERE order_id=?";
        try {
            con=dataSource.getConnection();
            pstmt=con.prepareStatement(SQL);
            pstmt.setString(1,order_id);
            pstmt.executeUpdate();
            pstmt.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("删除客户信息时发生问题"+e);
        }
        return false;
    }

    //前台分配房间，相当于修改 订单的room_id
    public boolean update_Room_id(String order_id,String room_id){
        Connection con;
        PreparedStatement pstmt;
        String SQL="UPDATE Orders SET room_id=? WHERE order_id=?;";
        try {
            con=dataSource.getConnection();
            pstmt=con.prepareStatement(SQL);
            pstmt.setString(1, room_id);
            pstmt.setString(2, order_id);
            pstmt.executeUpdate();
            pstmt.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("更新客户信息时发生问题"+e);
        }
        return false;
    }
    public boolean update_Status (String order_id,int processed){
        Connection con;
        PreparedStatement pstmt;
        String SQL="UPDATE Orders SET processed=? WHERE order_id=?;";
        try {
            con=dataSource.getConnection();
            pstmt=con.prepareStatement(SQL);
            pstmt.setInt(1, processed);
            pstmt.setString(2, order_id);
            pstmt.executeUpdate();
            pstmt.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("更新Order信息时发生问题"+e);
        }
        return false;
    }
    public ArrayList<Order> getOrders_by_roomtype(String roomtype){
        ArrayList<Order> list=new ArrayList<>();
        Connection con;
        PreparedStatement stmt;
        ResultSet resultSet;
        String SQL="select * from orders where roomtype=?";
        try {
            con=dataSource.getConnection();
            stmt=con.prepareStatement(SQL);;
            stmt.setString(1,roomtype);
            resultSet=stmt.executeQuery();
            while (resultSet.next()){
                Order order=new Order();
                order.setOrder_id(resultSet.getString("order_id"));
                order.setIdcard(resultSet.getString("idcard"));
                order.setRequirement(resultSet.getString("requirement"));
                order.setCustomerName(resultSet.getString("customerName"));
                order.setCheckin(Integer.valueOf(resultSet.getString("checkin")));
                order.setCheckout(Integer.valueOf(resultSet.getString("checkout")));
                order.setRoomtype(resultSet.getString("roomtype"));
                order.setRoom_id(resultSet.getString("room_id"));
                order.setProcessed(resultSet.getInt("processed"));
                list.add(order);
            }
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("orderDao出错");
        }
        return list;
    }
    public ArrayList<Order> getAllOrder(){
        ArrayList<Order> list=new ArrayList<>();
        Connection con;
        PreparedStatement stmt;
        ResultSet resultSet;
        String SQL="select * from orders ";
        try {
            con=dataSource.getConnection();
            stmt=con.prepareStatement(SQL);
            resultSet=stmt.executeQuery();
            while (resultSet.next()){
                Order order=new Order();
                order.setOrder_id(resultSet.getString("order_id"));
                order.setIdcard(resultSet.getString("idcard"));
                order.setCustomerName(resultSet.getString("customerName"));
                order.setCheckin(resultSet.getInt("checkin"));
                order.setCheckout(resultSet.getInt("checkout"));
                order.setRoom_id(resultSet.getString("room_id"));
                order.setProcessed(resultSet.getInt("processed"));
                order.setRequirement(resultSet.getString("requirement"));
                order.setRoomtype(resultSet.getString("roomtype"));
                list.add(order);
            }
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
