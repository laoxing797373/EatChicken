<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page import="cn.itcast.ssm.bean.*"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>我的信息</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<link
	href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
<script
	src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/layer/layer.js"></script>
<script type="text/javascript">	 
function func1() {
    layer.open({
      type: 1,
      area: ['600px', '360px'],
      shadeClose: true, //点击遮罩关闭
      content: '\<\div style="padding:20px;">\<\/div>'
    });
   }
</script>
</head>

<body>
	<div class="container">
		<jsp:include page="common/NavigationMessage.jsp"></jsp:include>
		<div class="row">
			<div class="col-md-4">
				<table class="table table-hover">
					<caption><b>个人资料</b></caption>
					<tbody>
						<tr>
							<td>头像</td>
							<td><img class="img-circle" src="Img/userPhoto/${userMessage.photo }" style="width:100px;height:100px;"></td>
						</tr>
						<tr>
							<td>昵称</td>
							<td>${userMessage.userName }</td>
						</tr>
						<tr>
							<td>steamID</td>
							<td>${userMessage.userSteamId }</td>
						</tr>
						<tr>
							<td>用户等级</td>
							<td>${userMessage.userLv }</td>
						</tr>
						<tr>
							<td>用户邮箱</td>
							<td>${userMessage.email }</td>
						</tr>
						<tr>
							<td>用户简介</td>
							<td>${userMessage.introduction }</td>
						</tr>
					</tbody>
				</table>    		
				<button id="myMessage" name="myMessage" onclick="func1();">修改基本信息</button>
				<button>修改密码</button>
				<button>修改验证信息</button>
			</div>
			<div class="col-md-4">
				<table class="table table-hover">
					<caption><b>论坛信息</b></caption>
					<tbody>
						
					</tbody>
				</table>    		
			</div>
			<div class="col-md-4">
				<table class="table table-hover">
					<caption><b>历史战绩</b></caption>
					<tbody>
						
					</tbody>
				</table>
			</div>
		</div>
	</div>
</body>
</html>
