<%@page import="meminfo.model.MemInfoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link href="https://fonts.googleapis.com/css2?family=Dongle&family=Nanum+Pen+Script&family=Noto+Sans+KR:wght@100..900&family=Single+Day&family=Stylish&display=swap" rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<title>Insert title here</title>
</head>
<body>
<%
	String m_num=request.getParameter("m_num");
	String m_pass=request.getParameter("m_pass");
	
	MemInfoDao dao=new MemInfoDao();
	dao.deleteMember(m_num);
	
	// 세션 무효화 (로그아웃)
    session.invalidate();
	
	response.sendRedirect("../index.jsp");
%>
	
</body>
</html>