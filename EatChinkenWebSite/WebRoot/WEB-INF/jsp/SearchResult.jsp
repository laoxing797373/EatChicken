<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="cn.itcast.ssm.bean.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>搜索结果</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>
  
  <body>
    <div class="container">
    	<jsp:include page="common/Navigation.jsp"></jsp:include>
    	<div class="row">
    		<div class="col-md-12">
    			<table class="table table-hover">
    				<caption>战友搜索结果</caption>
    				<thead>
    					<tr>
    						<th>头像</th>
    						<th>名称</th>
							<th>SteamID</th>
    						<th>用户等级</th>
    						<th>简介</th>
    					</tr>
    				</thead>
    				<tbody>
    					<c:forEach items="${ar}" var="ar">
    					<tr>
    						<th><img class="img-circle" src="Img/userPhoto/${ar.photo }" style="width:100px;height:100px;"></th>
    						<th>${ar.userName }</th>
    						<th>${ar.userSteamId }</th>
    						<th>${ar.userLv }</th>
    						<th>${ar.introduction }</th>
    						<th><button onclick="location.href='enterConnectionPage.do?userId=${ar.userId}'">联系此战友</button></th>
    					</tr>
						</c:forEach>
    				</tbody>
    			</table>
    		</div>
    	</div>
    </div>
  </body>
</html>
