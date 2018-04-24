package DAO;

import model.Room;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class RoomDao extends BaseDao {
    public ArrayList<Room> getRooms_by_roomtype(String roomtype){
        ArrayList<Room> list=new ArrayList<>();
        Connection con;
        PreparedStatement stmt;
        ResultSet resultSet;
        String SQL="select * from room where roomtype=?";
        try {
            con=dataSource.getConnection();
            stmt=con.prepareStatement(SQL);
            stmt.setString(1,roomtype);
            resultSet=stmt.executeQuery();
            while (resultSet.next()){
                Room room=new Room();
                room.setRoom_id(resultSet.getString("room_id"));
                room.setRoomtype(resultSet.getString("roomtype"));
                room.setOrientation(resultSet.getString("orientation"));
                room.setFloor(resultSet.getInt("floor"));
                room.setPrice(resultSet.getInt("price"));
                room.setOrderNum(resultSet.getInt("orderNum"));
                list.add(room);
            }
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    public Room getRoom(String room_id){
       Room room=new Room();
        Connection con;
        PreparedStatement pstmt;
        ResultSet rs;
        String SQL="select * from room where room_id=?;";
        try {
            con=dataSource.getConnection();
            pstmt=con.prepareStatement(SQL);
            pstmt.setString(1,room_id);
            rs=pstmt.executeQuery();
            if (rs.next()) {
                room.setRoom_id(rs.getString("room_id"));
                room.setRoomtype(rs.getString("roomtype"));
                room.setOrientation(rs.getString("orientation"));
                room.setFloor(rs.getInt("floor"));
                room.setPrice(rs.getInt("price"));
                room.setOrderNum(rs.getInt("orderNum"));
            }
            pstmt.close();
            con.close();
        } catch (SQLException e) {
            System.out.println("查找房间信息（获得对象）时发生问题"+e);
        }
        return room;
    }
    public boolean deleteRoom(String room_id){
        Connection con;
        PreparedStatement pstmt;
        String SQL="DELETE FROM Customer WHERE room_id=?";
        try {
            con=dataSource.getConnection();
            pstmt=con.prepareStatement(SQL);
            pstmt.setString(1,room_id);
            pstmt.executeUpdate();
            pstmt.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("删除room信息时发生问题"+e);
        }
        return false;
    }
    public boolean updateRoom(Room room){
        Connection con;
        PreparedStatement stmt;
        String SQL="UPDATE room SET roomtype=?,orientation=?,floor=?,price=?,orderNum=? WHERE room_id=?;";
        try {
            con=dataSource.getConnection();
            stmt=con.prepareStatement(SQL);
            stmt.setString(1,room.getRoomtype());
            stmt.setString(2,room.getOrientation());
            stmt.setInt(3,room.getFloor());
            stmt.setInt(4,room.getPrice());
            stmt.setInt(6,room.getOrderNum());
            stmt.setString(5,room.getRoom_id());
            stmt.executeUpdate();
            stmt.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("更新room信息时发生问题"+e);
        }
        return false;
    }
    public boolean addRoom(Room room){
        Connection con;
        PreparedStatement pstmt;
        String SQL="Insert into Room(room_id,roomtype,orientation,floor,price) values(?,?,?,?,?);";
        try {
            con=dataSource.getConnection();
            pstmt=con.prepareStatement(SQL);
            pstmt.setString(1,room.getRoom_id());
            pstmt.setString(2,room.getRoomtype());
            pstmt.setString(3,room.getOrientation());
            pstmt.setInt(4,room.getFloor());
            pstmt.setInt(5,room.getPrice());
            pstmt.executeUpdate();
            pstmt.close();
            con.close();
            return true;
        } catch (SQLException e) {
            System.out.println("添加Room时发生问题"+e);
        }
        return false;
    }
    public ArrayList<Room> getAllRoom(){
        ArrayList<Room> list=new ArrayList<>();
        Connection con;
        PreparedStatement stmt;
        ResultSet resultSet;
        String SQL="select * from room ";
        try {
            con=dataSource.getConnection();
            stmt=con.prepareStatement(SQL);
            resultSet=stmt.executeQuery();
            while (resultSet.next()){
                Room room=new Room();
                room.setRoom_id(resultSet.getString("room_id"));
                room.setRoomtype(resultSet.getString("roomtype"));
                room.setOrientation(resultSet.getString("orientation"));
                room.setFloor(resultSet.getInt("floor"));
                room.setPrice(resultSet.getInt("price"));
                room.setOrderNum(resultSet.getInt("orderNum"));
                list.add(room);
            }
            stmt.close();
            con.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
}
