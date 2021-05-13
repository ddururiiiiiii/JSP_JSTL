<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.jsp.dto.MemberVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
	List<MemberVO> memberList = new ArrayList<MemberVO>();
	
	for(int i = 1; i < 11; i++){
	MemberVO member = new MemberVO("mini"+i, "mini", "mini@naver.com", "010-1234-1234");
	memberList.add(member);
		
	}
	
	pageContext.setAttribute("memberList", memberList);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>

	<table>
		<tr>
			<th>아이디</th>
			<th>패스워드</th>
			<th>이메일</th>
			<th>번호</th>
		</tr>
		<%--
			// 집합체 반복문
			if(memberList!=null) for(MemberVO member : memberList){
				pageContext.setAttribute("member", member);
		--%>
		<tr>
			<td>${member.id }</td>
			<td>${member.pwd }</td>
			<td>${member.email }</td>
			<td>${member.phone }</td>
		</tr>
		<% 
			}
		%>
	</table>

</body>
</html>