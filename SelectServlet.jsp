<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
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
	<jsp:include page="Test.jsp" />
	<table  border=2 align=center height=200 style="width:400px;
	border-collapse:collapse;
	background-color:#e6e6fa;">

		<tr style = "background-color:pink;color:white;">
			<th>NAME</th>
			<th>PRICE</th>
			<th>SELECT</th>
		</tr>
		<c:forEach var="subcategory" items="${subcategorysData}">
			<tr>
				<td>${subcategory.subType}</td>
				<td>${subcategory.price}</td>
				<td><a href='SelectSubcategory?subId=${subcategory.subId }'>BOOK</a></td>	
								
			</tr>


		</c:forEach>
	</table>


</body>
</html>