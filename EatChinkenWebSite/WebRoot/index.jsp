<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
StringBuffer uploadUrl = new StringBuffer("http://");
	uploadUrl.append(request.getHeader("Host"));
	uploadUrl.append(request.getContextPath());
	uploadUrl.append("");
	System.out.println("uploadUrl====>"+uploadUrl);
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <base href="<%=basePath%>">
    
    <title>MainPage</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" href="<%=basePath%>css/validate_login.css">
	<link rel="stylesheet" href="<%=basePath%>css/miaov_style.css">
	<!-- 可选的Bootstrap主题文件（一般不使用） -->
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"></script>
	<script src="<%=basePath%>js/miaov.js"></script>
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script src="<%=basePath%>js/validate_login.js"></script>	
<script type="text/javascript">
						
/*登录时候前台验证*/
$(document).ready(function(){
	
	$("#login-form").easyform();

	/*点击注册按钮*/
	$("#register_a").bind('click',function(){
		$("#login_a").removeClass("active_ls");
		$("#register_a").addClass("active_ls");
		$("#login-form").hide();
		$("#register-form").show();
	});

/*点击登录按钮*/
	$("#login_a").bind('click',function(){
		$("#register_a").removeClass("active_ls");
		$("#login_a").addClass("active_ls");
		$("#login-form").show();
		$("#register-form").hide();
	});
	
	
});
	function checkShop(){
	var  check1=$("#userName").val().length;
	var  check2=$("#userPassword").val().length;
	var  check3=$("#userPasswordAgain").val().length;
	
	if(check1==0 || check2 == 0 ||check3 ==0 ){
		alert("输入有错，必须全部填写");
		return false;
		}
	return true;
	}

	</script>
  </head>
  
  <body>
  	<div class="container">
  		<div class="row">
  			<div class="col-md-12"><img src="Img/mainPage/title.jpg" class="img-responsive" alt="Cinque Terre" style="height:200px;width:100%;"></div>
  		</div>
  		<div class="row">
  			<div class="col-md-5">
  				<div id="div1">
					<a href="http://www.qianxunsucai.com">M4</a>
					<a href="http://www.qianxunsucai.com" class="red">M16A4</a>
					<a href="http://www.qianxunsucai.com">AWM</a>
					<a href="http://www.qianxunsucai.com">UMP</a>
					<a href="http://www.qianxunsucai.com" class="blue">武器库</a>
					<a href="http://www.qianxunsucai.com">图拉夫</a>
					<a href="http://www.qianxunsucai.com" class="red">哦棒</a>
					<a href="http://www.qianxunsucai.com" class="yellow">117</a>
					<a href="http://www.qianxunsucai.com">steam</a>
					<a href="http://www.qianxunsucai.com" class="red">绝地求生</a>
					<a href="http://www.qianxunsucai.com">大逃杀</a>
					<a href="http://www.qianxunsucai.com" class="blue">加速器</a>
					<a href="http://www.qianxunsucai.com">吃鸡</a>
					<a href="http://www.qianxunsucai.com/" class="red">LYB</a>
					<a href="http://www.qianxunsucai.com" class="blue">军事基地</a>
					<a href="http://www.qianxunsucai.com">防空洞</a>
					<a href="http://www.qianxunsucai.com" class="blue">2s17发</a>
					<a href="http://www.qianxunsucai.com" class="yellow">科隆</a>
					<a href="http://www.qianxunsucai.com">托马斯</a>
					<a href="http://www.qianxunsucai.com" class="yellow">帝国鹰眼</a>
					<a href="http://www.qianxunsucai.com">图图</a>
				</div>
  			</div>
  			<div class="col-md-7">
  				<div class="form-div">
	  				<div style=" width:390px; height:40px; border-radius:10px; font-size:16px; color:#666">
				    	<ul>
				        <li id="login_a" class="login_register1 active_ls" style=" border-left:#666;"><a style="color: #605E5C;">大逃杀登录</a></li>
				        <li id="register_a" class="login_register1" ><a style="color: #605E5C;">大逃杀注册</a></li>
				        </ul>
	  				 </div>
			    
				    <form id="login-form" action="UserController/userLogin.do" method="post" class="formheight">	
				        <table>   	
				            <tr>
				                <td>用户名:</td>
				                <td><input name="userName" style="margin:20px 0;" type="text" id="uid" easyform="length:4-16;char-normal;real-time;" message="用户名必须为4—16位的英文字母或数字" easytip="disappear:lost-focus;theme:blue;" ajax-message="用户名已存在!">
				                </td>
				            </tr>        	
				            <tr >
				                <td>密码:</td>
				                <td><input name="userPassword" style="margin:20px 0;" type="password" id="psw1" easyform="length:6-16;" message="密码必须为6—16位" easytip="disappear:lost-focus;theme:blue;"></td>
				            </tr>         
				        </table>
						<div class="buttons">
							<input value="登录" type="submit" style="margin-right:20px; margin-top:20px;"/>
							<input value="忘记密码？" type="button" style="margin-right:45px; margin-top:20px;" onclick="location='<%=basePath%>/RePairShop/RepairShopMForgetAdministratorsPassword.jsp'"/>
				        </div>		
				        <br class="clear">
				    </form>
			       
				     <!--  注册部分的form-->
				     <form id="register-form" action="UserController/userRegister.do" method="post" class="formheight">
				        <table>
				            <tr>
				                <td>用户名:</td>
				                <td><input name="userName" type="text" id="userName" style="width:230px;"/>
				                </td>
				            </tr>
				        
				            <tr>
				                <td>密码:</td>
				                <td><input name="userPassword" type="text" id="userPassword" style="width:230px;"/></td>
				            </tr>
				            <tr>
				                <td>确认密码:</td>
				                <td><input name="userPasswordAgain" type="text" id="userPasswordAgain" style="width:230px;"/></td>
				            </tr> 
				            
				 	    <tr> 
				        </table>
				
						<div class="buttons">
							<input value="注 册" type="submit" style="margin-right:20px; margin-top:20px;"/>
				        </div>
				        <br class="clear">
				    </form>
			    </div>
  			</div>
  		</div>
  		<div class="row">
  			<div class="col-md-12" >
  				<div class="col-md-4" style="margin:0px;padding:0px;"><img src="Img/mainPage/3.png" class="img-responsive" alt="Cinque Terre" style="height:130px;width:100%;"></div>
  				<div class="col-md-4" style="margin:0px;padding:0px;"><img src="Img/mainPage/1.jpg" class="img-responsive" alt="Cinque Terre" style="height:130px;width:100%;"></div>
  				<div class="col-md-4" style="margin:0px;padding:0px;"><img src="Img/mainPage/2.png" class="img-responsive" alt="Cinque Terre" style="height:130px;width:100%;"></div>
  			</div>
  		</div>

  	</div>
  </body>
</html>
