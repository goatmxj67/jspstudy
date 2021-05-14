<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String product = request.getParameter("product");
	String quantity = request.getParameter("quantity");
	
	// product와 quantity를 하나의 데이터로 저장하려면 DTO 또는 Map을 사용한다.
	// Map<product, quantity>
	Map<String, String> map = new HashMap<>();
	map.put(product, quantity);
	
	
	
	
	
	
	
%>