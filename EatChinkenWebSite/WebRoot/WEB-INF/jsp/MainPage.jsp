<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>MainPage</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link href="https://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://cdn.bootcss.com/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<link href="http://cdn.bootcss.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
	<link href="http://cdn.bootcss.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="css/htmleaf-demo.css">
	<style type="text/css">
		.demo{
			height: 400px;
			background: #fff;
			padding: 2em 0;
		}
		a:hover,a:focus{
		    outline: none;
		    text-decoration: none;
		}
		.tab{ text-align: center; }
		.tab .nav-tabs{
		    display: inline-block;
		    position: relative;
		    border-bottom: none;
		}
		.tab .nav-tabs li{
		    margin: 0;
		}
		.tab .nav-tabs li a{
		    display: block;
		    padding: 80px 20px 10px;
		    background: #fff;
		    font-size: 17px;
		    font-weight: 700;
		    color: #999;
		    text-transform: uppercase;
		    text-align: center;
		    border-radius: 0;
		    border: none;
		    border-bottom: 2px solid #fff;
		    margin-right: 0;
		    overflow: hidden;
		    z-index: 1;
		    position: relative;
		    transition: all 0.3s ease 0s;
		}
		.tab .nav-tabs li a span{
		    display: block;
		    width: 50px;
		    height: 50px;
		    line-height: 50px;
		    background: #f2f2f2;
		    margin: auto;
		    font-size: 22px;
		    color: #999;
		    border-radius: 5px;
		    position: absolute;
		    top: 10px;
		    left: 0;
		    right: 0;
		    transform: rotate(45deg);
		}
		.tab .nav-tabs li.active a span{
		    background: #29335c;
		    color: #fff;
		}
		.tab .nav-tabs li a span i{
		    transform: rotate(-45deg);
		}
		.tab .nav-tabs li.active a,
		.tab .nav-tabs li a:hover{
		    color: #999;
		    border: none;
		    border-bottom: 2px solid #fff;
		}
		.tab .nav-tabs li.active a{
		    border-bottom: 2px solid #29335c;
		}
		.tab .tab-content{
		    padding: 20px;
		    margin-top: -5px;
		    font-size: 15px;
		    color: #757575;
		    line-height: 26px;
		    text-align: left;
		    border-top: 1px solid #e5e5e5;
		}
		.tab .tab-content h3{
		    font-size: 24px;
		    margin-top: 0;
		}
		@media only screen and (max-width: 479px){
		    .tab .nav-tabs li{
		        width: 100%;
		        text-align: center;
		        margin-bottom: 5px;
		    }
		    .tab .nav-tabs li:last-child{
		        margin-bottom: 0;
		    }
		}
		.btn.blue{
		    border: 1px solid #3bb4e5;
		    background: #3bb4e5;
		}
		.btn.blue:hover,
		.btn.blue span{
		    color: #3bb4e5;
		}
		.btn.blue:hover span,
		.btn.blue:hover span:after{
		    background: #3bb4e5;
		}
		.btn{
		    color: #fff;
		    text-transform: uppercase;
		    border-radius: 0;
		    padding-left: 60px;
		    position: relative;
		    transform: translateZ(0px);
		    transition: all 0.5s ease 0s;
		}
		.btn:after{
		    content: "";
		    position: absolute;
		    top: 0;
		    left: 0;
		    bottom: 0;
		    right: 0;
		    background: #fff;
		    z-index: -1;
		    transform: scaleX(0);
		    transform-origin: 100% 50% 0;
		    transition: all 0.5s ease-out 0s;
		}
		.btn:hover:after{
		    transform: scaleX(1);
		    transition-timing-function: cubic-bezier(0.52, 1.64, 0.37, 0.66);
		}
		.btn span{
		    width: 40px;
		    height: 100%;
		    line-height: 40px;
		    background: #fff;
		    position: absolute;
		    top: 0;
		    left: 0;
		    transition: all 0.3s linear 0s;
		}
		.btn span:after{
		    content: "";
		    display: block;
		    width: 10px;
		    height: 10px;
		    background: #fff;
		    margin: auto 0;
		    position: absolute;
		    top: 0;
		    right: -6px;
		    bottom: 0;
		    transform: rotate(45deg);
		    transition: all 0.3s linear 0s;
		}
		.btn.btn-sm{
		    padding-left: 40px;
		}
		.btn.btn-sm span{
		    width: 27px;
		    line-height: 27px;
		}
		.btn.btn-sm span:after{
		    width: 8px;
		    height: 8px;
		    right: -5px;
		}
		.btn.btn-xs{
		    padding-left: 30px;
		}
		.btn.btn-xs span{
		    width: 20px;
		    line-height: 20px;
		}
		.btn.btn-xs span:after{
		    width: 7px;
		    height: 7px;
		    right: -4px;
		}
	</style>
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
				                    <li><a href="#">我的信息</a></li>
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
	    <div class="row">
		    <div class="htmleaf-container">
			<header class="htmleaf-header">
				<h1>战友搜索系统</h1>
			</header>
			<div class="demo">
			        <div class="container">
			            <div class="row">
			                <div class="col-md-offset-3 col-md-6">
			                    <div class="tab" role="tabpanel">
			                        <!-- Nav tabs -->
			                        <ul class="nav nav-tabs" role="tablist">
			                            <li role="presentation" class="active"><a href="#Section1" aria-controls="home" role="tab" data-toggle="tab"><span><i class="fa fa-globe"></i></span> 大范围寻找</a></li>
			                            <li role="presentation"><a href="#Section2" aria-controls="profile" role="tab" data-toggle="tab"><span><i class="fa fa-rocket"></i></span> 精准定位</a></li>
			                            <li role="presentation"><a href="#Section3" aria-controls="messages" role="tab" data-toggle="tab"><span><i class="fa fa-user-md"></i></span> 在线战友</a></li>
			                        </ul>
			                        <!-- Tab panes -->
			                        <div class="tab-content tabs">
			                            <div role="tabpanel" class="tab-pane fade in active" id="Section1">
			                                <h3>大范围寻找</h3>
			                                <p>对于网站当前允许搜素的战友进行查询</p>
		                                	<div class="col-sm-3">
							                    <a href="SearchController/normalSearch" class="btn btn-lg blue">
							                        <span class="fa fa-home"></span>开始搜索
							                    </a>
							                </div>
			                            </div>
			                            <div role="tabpanel" class="tab-pane fade" id="Section2">
			                                <h3>精准定位</h3>
			                            </div>
			                            <div role="tabpanel" class="tab-pane fade" id="Section3">
			                                <h3>在线战友</h3>
			                            </div>
			                        </div>
			                    </div>
			                </div>
			            </div>
			        </div>
			    </div>
			</div>
		 </div>
	 </div>
  </body>
</html>
