<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="java.util.ArrayList,com.ts.dto.Worker"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
	
	<jsp:include page="AdminHomePage.jsp" />
	<table border=2 align=center height=200 style="width:70%;
	border-collapse:collapse;
	background-color:#e6e6fa;">

		<tr style = "background-color:pink;color:white;">
			<th>ID</th>
			<th>NAME</th>
			<th>USER NAME</th>
			<th>EXPERIENCE</th>
			<th>PHONE NO</th>
			<th>AVAILABILTY</th>
			<th>RATING</th>
			<th>STATUS</th>
			
			<th colspan=2>Action to be taken</th>
		</tr>
		<c:forEach var="worker" items="${workersData}">
			<tr>
				<td>${worker.workId}</td>
				<td>${worker.name}</td>
				<td>${worker.userName}</td>
				<td>${worker.exp}</td>
				<td>${worker.phoneNo}</td>
				<td>${worker.avilability}</td>
				<td>${worker.rating}</td>
				<td><a href='ChangeStatus?workId=${worker.workId}&statusId=1'>Activate</a></td>
			    <td><a href='ChangeStatus?workId=${worker.workId}&statusId=0'>DeActivate</a></td>
				

			</tr>
		</c:forEach>
	</table>
</body>
</html>





