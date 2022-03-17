<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@include file="WorkerHomePage.jsp"%>
	<form action="UpdateWorker" method="post">
		<table border=2 align=center>
			<tr>
				<th>WORK ID</th>
				<th>USER NAME</th>
				<th>PASSWORD</th>
				<th>PHONE NO</th>
				<th>AVAILABILITY</th>
				<th>RATING</th>
				
			</tr>
			<tr>
				<td><input type="text" name="id" value=${worker.workId} readonly="true"></td>
				<td><input type="text" name="uid" value=${worker.userName} readonly="readonly"></td>
				<td><input type="text" name="pwd" value=${worker.password}></td>
				<td><input type="text" name="pnum" value=${worker.phoneNo}></td>
				<td><input type="text" name="available" value=${worker.avilability}></td>
				<td><input type="text" name="rating" value=${worker.rating} readonly="true"></td>


			</tr>
		</table>
		<CENTER>
			<input type="submit" value="UPDATE">
		</CENTER>
	</form>

</body>
</html>