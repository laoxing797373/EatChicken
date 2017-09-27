<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Navigation.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  </head>
  
  <body>
  <div class="container">
    <div class="row">
    		<div class="col-md-12">
    			<img src="Img/mainPage/title.jpg" class="img-responsive" alt="Cinque Terre" style="height:200px;width:100%;">
    		</div>
    	</div>
    	<div class="row">
	    	<div class="col-md-12">
	    		<nav class="navbar navbar-default navbar-static-top" role="navigation">
				    <div class="container-fluid">
				    <div class="navbar-header">
				        <a class="navbar-brand active" href="#">大逃杀</a>
				    </div>
				    <div>
				        <ul class="nav navbar-nav">
				            <li class="active"><a href="#">战友搜索</a></li>
				            <li><a href="#">会议室</a></li>
				            <li class="dropdown">
				                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
				                    安全屋 <b class="caret"></b>
				                </a>
				                <ul class="dropdown-menu">
				                    <li><a href="UserMessageController/enterMessagePage">我的信息</a></li>
				                    <li><a href="#">我的日志</a></li>
				                    <li class="divider"></li>
				                    <li><a href="#">我的消息</a></li>
				                    <li class="divider"></li>
				                    <li><a href="#">我的设置</a></li>
				                </ul>
				            </li>
				        </ul>
				    </div>
				    </div>
				</nav>
	    	</div>
	    </div>
	    </div>
  </body>
</html>
