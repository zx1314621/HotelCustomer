<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core %>
<%@ page import="DAO.MessageDao" %>
<%@ page import="javax.sql.DataSource" %>
<%@ page import="model.Message" %>
<%@ page import="java.util.ArrayList" %>
<html>
<head>
    <title>Title</title>
        <%
        MessageDao messageDao=new MessageDao((DataSource) application.getAttribute("dataSource"));
        ArrayList<Message> message_big=messageDao.getMessageBy_roomtype("大床房");
        request.setAttribute("message_big",message_big);%>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="layui/css/layui.css" media="all" />
    <link rel="stylesheet" href="css/table.css" />
    <link rel="stylesheet" href="css/global.css">
    <script type="text/javascript" src="http://code.jquery.com/jquery-latest.js "></script>
    <script src="layui/layui.all.js"></script>
<body>
    <div class="admin-main">

        <blockquote class="layui-elem-quote">
            <div class="kit-search-inputs">
            </div>
        </blockquote>
        <fieldset class="layui-elem-field">
            <form action="assignroom.do 

" method="post">
                <legend>评价列表-大床房</legend>
                <table class="layui-table">
                    <colgroup>
                        <col width="150">
                        <col width="200">
                        <col>
                    </colgroup>
                    <thead>
                    <tr>
                        <th>昵称</th>
                        <th>评价内容</th>
                        <th>评级</th>
                      
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="message" items="${requestScope.message_big}">
                        <tr>
                            <td>${message.name 

}</td>
                            <td>${message.message}</td>
                            <td>${message.level}</td>
                            <td>
                                <button class="layui-btn layui-btn-xs " name="room_id" value="${message.order_id}" >分配</button>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </form>
        </fieldset>
        <div class="admin-table-page">
            <div id="paged" class="page">
            </div>
        </div>
    </div>

    <script type="text/javascript" src="plugins/layui/layui.all.js"></script>
    </body>
</html>