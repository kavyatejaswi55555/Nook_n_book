<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="com.ts.dto.Worker"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Test.jsp" />
	<table border=2 align=center height=200 style="width:400px;">

		<tr>
			<th>ID</th>
			<th>NAME</th>
			<th>EXPERIENCE</th>
			<th>PHONE NO</th>
			<th>RATING</th>
			<th>BOOK</th>
		</tr>
		<c:forEach var="worker" items="${workersData}">
			<tr>
				<td>${worker.workId}</td>
				<td>${worker.name}</td>
				<td>${worker.exp}</td>
				<td>${worker.phoneNo}</td>
				<td>${worker.rating}</td>	
				<td><a href='SelectWorker?workId=${worker.workId }'>Book</a></td>		
			</tr>


		</c:forEach>
	</table>


</body>
</html>