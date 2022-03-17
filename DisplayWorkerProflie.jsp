<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.ts.dto.Worker"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type='text/css'>
table {
  width: 95%;
  background:;
  border: 1px solid #C5B798;
  margin-top: 15px;
  margin-bottom: 25px;
}
td {
  border-bottom: 1px solid #CDC1A7;
  padding: 5px;
}
th {
  font-family: "Trebuchet MS", Arial, Verdana;
  font-size: 14px;
  padding: 5px;
  border-bottom-width: 1px;
  border-bottom-style: solid;
  border-bottom-color: #CDC1A7;
  background-color: #CDC1A7;
  color: #993300;
}
</style>

</head>
<body>
<jsp:include page="WorkerHomePage.jsp"></jsp:include>
  <%
	%>
	<!-- 
	<jsp:useBean id="workerData" class="com.ts.dto.Worker"
		scope="request" />
	<table border=2 align=center>
		<tr>
			<th>ID</th>
			<th>USER NAME</th>
			<th>PASSWORD</th>
			<th>PHONE NO</th>
			<th>AVAILABITIY</th>
			<th>RATING</th>
			<th>EDIT</th>
		</tr>
		<tr>
			<td><%=workerData.getWorkId()%></td>
			<td><%=workerData.getUserName()%></td>
			<td><%=workerData.getPassword()%></td>
			<td><%=workerData.getPhoneNo()%></td>
			<td><%=workerData.getAvilability()%></td>
			<td><%=workerData.getRating()%></td>
		
		</tr>
	</table>
 -->
 
 	<table border=2 align=center height=200 style="width:70%;
	border-collapse:collapse;
	background-color:#e6e6fa;">

		<tr style = "background-color:pink;color:white;">
			<th>ID</th>
			<th>USER NAME</th>
			<th>PASSWORD</th>
			<th>PHONE NO</th>
			<th>AVAILABITIY</th>
			<th>RATING</th>
			<th>EDIT</th>
		</tr>
		<tr>
			<td>${workerData.workId}</td>
			<td>${workerData.userName}</td>
			<td>${workerData.password}</td>
			<td>${workerData.phoneNo}</td>
			<td>${workerData.avilability}</td>
			<td>${workerData.rating}</td>
			<td><a href='EditWorker?workId=${workerData.workId}'>UPDATE</a></td>
			
		</tr>
	</table>
</body>
</html>