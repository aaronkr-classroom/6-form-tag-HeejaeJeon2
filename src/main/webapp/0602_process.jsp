<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 환영하기</title>
</head>
<body>
	<h3>새로운 고객님 환영합니다.</h3>
	<table border=1 cellspacing=0 cellpadding=0>
		<tr>
			<th>요청 파라미터 이름</th>
			<th>요청 파라미터 값</th>
		</tr>
		<%@ page import="java.util.Enumeration" %>
		<%
			request.setCharacterEncoding("UTF-8");
		
			Enumeration paramNames = request.getParameterNames();
			
			while(paramNames.hasMoreElements()) {
				String name = (String) paramNames.nextElement();
				out.print("<tr><td>" + name + "</td>\n");
				
				String value = request.getParameter(name);
				out/print("<td>" + value + "</td></tr>"\n);
			}
		%>
	</table>
</body>
</html>