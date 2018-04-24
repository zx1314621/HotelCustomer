package DAO;

import model.Customer;

import java.sql.*;
import java.util.ArrayList;

public class CustomerDao extends BaseDao{
    //添加客户信息（注册）
    public boolean addCustomer(Customer customer){
        Connection con;
        PreparedStatement pstmt;
        String SQL="Insert into Customer(customer_id,password,idcard,name,gender,age) values(?,?,?,?,?,?);";
        try {
            con=dataSource.getConnection();
            pstmt=con.prepareStatement(SQL);
            pstmt.setString(1,customer.getCustomer_id());
            pstmt.setString(2,customer.getPassword());
            pstmt.setString(3,customer.getIdcard());
            pstmt.setString(4,customer.getName());
            pstmt.setString(5,customer.getGender());
            pstmt.setInt(6,customer.getAge());
            pstmt.executeUpdate();
            pstmt.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("添加客户信息（注册）时发生问题"+e);
        }
        return false;
    }

    //更新客户信息
    //更新一个属性 通过多选框确定修改几个属性
    public boolean updateCustomer(Customer customer){
        Connection con;
        PreparedStatement pstmt;
        String SQL="UPDATE Customer SET password=?,idcard=?,name=?,gender=?,age=? WHERE customer_id=?;";
        try {
            con=dataSource.getConnection();
            pstmt=con.prepareStatement(SQL);
            pstmt.setString(1, customer.getPassword());
            pstmt.setString(2, customer.getIdcard());
            pstmt.setString(3, customer.getName());
            pstmt.setString(4, customer.getGender());
            pstmt.setInt(5, customer.getAge());
            pstmt.setString(6, customer.getCustomer_id());
            pstmt.executeUpdate();
            pstmt.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("更新客户信息时发生问题"+e);
        }
        return false;
    }

    //查找 客户对象（通过id查找）
    public Customer getCustomer(String customer_id){
        Customer customer = new Customer();
        Connection con;
        PreparedStatement pstmt;
        ResultSet rs;
        String SQL="select * from Customer where customer_id=?;";
        try {
            con=dataSource.getConnection();
            pstmt=con.prepareStatement(SQL);
            pstmt.setString(1,customer_id);
            rs=pstmt.executeQuery();
            customer.setCustomer_id(rs.getString("customer_id"));
            customer.setPassword(rs.getString("password"));
            customer.setIdcard(rs.getString("idcard"));
            customer.setName(rs.getString("name"));
            customer.setGender(rs.getString("gender"));
            customer.setAge(rs.getInt("age"));
            pstmt.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("查找客户信息（获得对象）时发生问题"+e);
        }
        return customer;
    }
    public ArrayList<Customer> getAllCustomer(){
        ArrayList<Customer> list=new ArrayList<>();
        Connection con;
        PreparedStatement pstmt;
        ResultSet rs;
        String SQL="select * from Customer";
        try {
            con=dataSource.getConnection();
            pstmt=con.prepareStatement(SQL);
            rs=pstmt.executeQuery();
            while (rs.next()) {
                Customer customer = new Customer();
                customer.setCustomer_id(rs.getString("customer_id"));
                customer.setPassword(rs.getString("password"));
                customer.setIdcard(rs.getString("idcard"));
                customer.setName(rs.getString("name"));
                customer.setGender(rs.getString("gender"));
                customer.setAge(rs.getInt("age"));
                customer.getIdcard();
                list.add(customer);
            }
            pstmt.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("查找客户信息（获得对象）时发生问题"+e);
        }
        return list;
    }
    public boolean deleteCustomer(String customer_id){
        Connection con;
        PreparedStatement pstmt;
        String SQL="DELETE FROM Customer WHERE customer_id=?";
        try {
            con=dataSource.getConnection();
            pstmt=con.prepareStatement(SQL);
            pstmt.setString(1,customer_id);
            pstmt.executeUpdate();
            pstmt.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("删除客户信息时发生问题"+e);
        }
        return false;
    }
}


