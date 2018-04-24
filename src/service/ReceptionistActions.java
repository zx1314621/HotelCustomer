package service;

import DAO.OrderDao;
import DAO.RoomDao;
import model.Order;
import model.Room;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

public class ReceptionistActions {
    //写成成员变量，方便调用
    OrderDao orderDao=new OrderDao();
    RoomDao roomDao=new RoomDao();
    //房间属性：订单数 可有可无，有的话还需要 怎样返回room集合呢？

    //检查订单是否可以执行 即是否有对应的空房
    public ArrayList<String> getUnfitroom(Order order) {
        OrderDao orderDao=new OrderDao();
        ArrayList<Order> orderlist;
        Order temporder;
        orderlist = orderDao.getOrders_by_roomtype(order.getRoomtype());//订单中同房型的订单
        ArrayList<String> unfit_room = new ArrayList<>();
        for (int i = 0; i < orderlist.size(); i++) {
            temporder = orderlist.get(i);
            //不符合 就加到unfit_room中
            if (!checkDate(order, temporder)) {
                unfit_room.add(temporder.getRoom_id());
            }
        }
        return unfit_room;
    }

    
    
    public ArrayList<Room> getFitroom(ArrayList<String> unfit_room, String roomtype) {
        RoomDao roomDao=new RoomDao();
        ArrayList<Room> allroom = roomDao.getRooms_by_roomtype(roomtype);
        ArrayList<Room> fit_room = new ArrayList<>();//需要返回的房间
        int count;
        for (int i = 0; i < allroom.size(); i++) {
            Room room = allroom.get(i);
            count = 0;
            for (int j = 0; j < unfit_room.size(); j++) {
                //如果所有房间中有这个不符合的房间，则
                if (!room.getRoom_id().equals(unfit_room.get(j)))
                    count++;
            }
            if (count == unfit_room.size()) {
            	System.out.println("count="+count+"room_id"+room.getRoom_id());
                fit_room.add(room);//把不在unfitroom中的加到fitroom中
            }
        }
        return fit_room;
    }
    
    
    
    public boolean checkDate(Order order,Order temporder){
        for (int i=order.getCheckin();i<=order.getCheckout();i++){
            //checkin-checkout 只要有一天不符合，返回 false
            if (i>=temporder.getCheckin()&&i<temporder.getCheckout()){
                
                return false;
            }
        }
        
        return true;
    }

    //续住
    //按照 房间号 搜订单-房间 匹配顾客身份证号
    //


    //返回有效的房间列表供前台接待人员选择--订单可以执行后，再具体分配
    //public ArrayList<Room> searchroom(Order order){
      //  ArrayList<Room> list=new ArrayList<>();
    //}
    //散客入住，未预定直接入住
    //预订入住：根据身份证号直接调出预订单，并按客户要求如楼层、朝向等分配房间直接入住。--前台接待员
    //注意搜到的订单应该时未处理过的
    public ArrayList<Order> getUnhandledOrders(String idcard){
        ArrayList<Order> list=orderDao.getOrdersBy_idcard(idcard);
        ArrayList<Order> newlist=new ArrayList<>();
        Order order;
        for(int i=0;i<list.size();i++){
            order=list.get(i);
            //若是未处理的订单，则加入到待分配房间的newlist中
            if (order.getProcessed()==0){
                newlist.add(order);
            }
        }
        return newlist;
    }
    public  long TimeDifference(int checkin, int checkout) {
        String time1 = Integer.toString(checkin);
        String time2 = Integer.toString(checkout);
        SimpleDateFormat format = new SimpleDateFormat("yyyyMMdd");
        Date date1 = null;
        Date date2=null;
        try {
            date1 = format.parse(time1);
            date2 = format.parse(time2);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        long diff = date2.getTime() - date1.getTime();
        long diffDays = diff / (24 * 60 * 60 * 1000);
        return diffDays;
        /*
        long between = end - start;
        long day = between / (24 * 60 * 60 * 1000);
        long hour = (between / (60 * 60 * 1000) - day * 24);
        long min = ((between / (60 * 1000)) - day * 24 * 60 - hour * 60);
        long s = (between / 1000 - day * 24 * 60 * 60 - hour * 60 * 60 - min * 60);
        long ms = (between - day * 24 * 60 * 60 * 1000 - hour * 60 * 60 * 1000
                - min * 60 * 1000 - s * 1000);
        String timeDifference = day + "天" + hour + "小时" + min + "分" + s + "秒" + ms
                + "毫秒";
        return timeDifference;
        */
    }
}
