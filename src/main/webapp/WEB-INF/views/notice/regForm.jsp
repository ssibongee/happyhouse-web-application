<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="root" value="${ pageContext.request.contextPath }" />
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>행복한 우리집 | 공지사항 등록</title>
		
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
		
<!-- 		<title>Clean Blog - Start Bootstrap Theme</title> -->
		
		<!-- Bootstrap core CSS -->
		<link href="res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		
		<!-- Custom fonts for this template -->
		<link href="res/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
		
		<!-- Custom styles for this template -->
		<link href="res/css/clean-blog.min.css" rel="stylesheet">
	</head>
	<body>
	
		<!-- Navigation -->
		<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
		  <div class="container">
		    <a class="navbar-brand" href="/happyhouse/list.main">HAPPY HOUSE</a>
		    <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
		      Menu
		      <i class="fas fa-bars"></i>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarResponsive">
		      <ul class="navbar-nav ml-auto">
		        <li class="nav-item">
		          <a class="nav-link" href="/happyhouse/list.main">메인 화면</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="${ root }/main/introduce.jsp">사이트 소개</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="${ root }/list.notice">공지사항</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="${ root }/main/sitemap.jsp">사이트맵</a>
		        </li>
		      </ul>
		    </div>
		  </div>
		</nav>
		
		<!-- Page Header -->
		<header class="masthead" style="background-image: url('res/img/apartment.jpg')">
		  <div class="overlay"></div>
		  <div class="container">
		    <div class="row">
		      <div class="col-lg-8 col-md-10 mx-auto">
		        <div class="page-heading">
		          <h1>NOTICE</h1>
		          <span class="subheading">공지사항 입니다.</span>
		        </div>
		      </div>
		    </div>
		  </div>
		</header>
		
		<!-- Main Content -->
		<div class="container">
		  <div class="row">
		    <div class="col-lg-8 col-md-10 mx-auto">
		   	
		      <form method="post" action="register.notice">
		        <div class="control-group">
		          <div class="form-group floating-label-form-group controls">
		            <label>Title</label>
		            <input type="text" class="form-control" placeholder="TITLE" id="title" name="title" required data-validation-required-message="Please enter your name.">
		            <p class="help-block text-danger"></p>
		          </div>
		        </div>
		        <div class="control-group">
		          <div class="form-group floating-label-form-group controls">
		            <label>Content</label>
		            <textarea rows="5" class="form-control" placeholder="CONTENT" id="content" name="content" required data-validation-required-message="Please enter a message."></textarea>
		            <p class="help-block text-danger"></p>
		          </div>
		        </div>
		        <br>
		        <div id="success"></div>
		        <div class="form-group">
		          <button type="submit" class="btn btn-primary" id="sendMessageButton">등록하기</button>
		          <input type="reset" class="btn btn-primary" value="돌아가기" onClick="location.href='${root}/list.notice'">
		        </div>
		      </form>
		    </div>
		  </div>
		</div>
		
		<!-- Footer -->
		<footer>
		  <div class="container">
		    <div class="row">
		      <div class="col-lg-8 col-md-10 mx-auto">
		        <ul class="list-inline text-center">
		          <li class="list-inline-item">
		            <a href="#">
		              <span class="fa-stack fa-lg">
		                <i class="fas fa-circle fa-stack-2x"></i>
		                <i class="fab fa-twitter fa-stack-1x fa-inverse"></i>
		              </span>
		            </a>
		          </li>
		          <li class="list-inline-item">
		            <a href="#">
		              <span class="fa-stack fa-lg">
		                <i class="fas fa-circle fa-stack-2x"></i>
		                <i class="fab fa-facebook-f fa-stack-1x fa-inverse"></i>
		              </span>
		            </a>
		          </li>
		          <li class="list-inline-item">
		            <a href="https://lab.ssafy.com/jane3999591/happyhouse_web_front.git">
		              <span class="fa-stack fa-lg">
		                <i class="fas fa-circle fa-stack-2x"></i>
		                <i class="fab fa-github fa-stack-1x fa-inverse"></i>
		              </span>
		            </a>
		          </li>
		        </ul>
		        <p class="copyright text-muted">Copyright &copy; SSAFY 서울 13반 안시원 윤재원</p>
		      </div>
		    </div>
		  </div>
		</footer>
		
		<!-- Bootstrap core JavaScript -->
		<script src="res/vendor/jquery/jquery.min.js"></script>
		<script src="res/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		
		<!-- Custom scripts for this template -->
		<script src="res/js/clean-blog.min.js"></script>
	</body>
</html>