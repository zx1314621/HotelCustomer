<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>留下评论</title>
<style >
body{  
  background: url("img/12.jpg") no-repeat;
  height:100%;
  width:100%;
  opacity: 0.5;
  overflow: hidden;
  background-size:cover;
}
</style>
</head>
<body>

<form action = LeaveMessage method = "post">
<table>
<tr><td>名字</td><td><input type = "text" name = "name" placeholder = "这里是您的名字" ></td></tr>
<tr><td>房型</td><td><input type = "text" name = "roomtype" placeholder = "这里是评论的房间类型" ></td></tr>
<tr><td>内容</td><td><textarea name = "message"  style="width:250px; height:150px;"   onfocus="if(value=='这里是评论内容')
  {value=''}" onblur="if(value=='') {value='这里是正文'}" />这里是正文</textarea></td></tr>
</table>
<tr><td><input type = "submit" value = "提交" style="width:50px;height:40px;"></td>
<td> <input type = "reset" value = "重置" style="width:50px;height:40px;"></td>
</tr>
</form>
</body>
</html>