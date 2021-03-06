<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>

<head>
		<meta charset="UTF-8">
		<title>행복한 우리집 | Q&A </title>
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
		<script type="text/javascript">
			$(document).ready(function() {
				$("#side").css('float', 'left');
				$("#side").css('margin', '0px 50px');
			})
		</script>
	
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
		<meta name="description" content="">
		<meta name="author" content="">
	
		<!-- Bootstrap core CSS -->
		<link href="../resources/res/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	
		<!-- Custom fonts for this template -->
		<link href="../resources/res/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
		<link href='https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic' rel='stylesheet'
			type='text/css'>
		<link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800'
			rel='stylesheet' type='text/css'>
	
		<!-- Custom styles for this template -->
		<link href="../resources/res/css/clean-blog.min.css" rel="stylesheet">
	
	</head>
	
	<body>
	
	<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
		<div class="container">
			<a class="navbar-brand" href="/happyhouse/">HAPPY HOUSE</a>
			<button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse"
				data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu
				<i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item">
						<a class="nav-link" href="/happyhouse/">메인 화면</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/happyhouse/introduce">사이트 소개</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/happyhouse/notice">공지사항</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/happyhouse/sitemap">사이트맵</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="/happyhouse/news">관련기사</a>
					</li>
					
					<c:if test="${!empty id}">
						<li class="nav-item">
							<a class="nav-link" href="/happyhouse/myPage">마이페이지</a>
						</li>
						<li class="nav-item">
							<a class="nav-link" href="/happyhouse/qna">Q&A</a>
						</li>
					</c:if>
				</ul>
			</div>
				<hr>
		</div>
	</nav>
	
	<header class="masthead" style="background-image: url('../resources/res/img/apartment.jpg')">
		<div class="overlay"></div>
		<div class="container">
			<div class="row">
				<div class="col-lg-8 col-md-10 mx-auto">
					<div class="page-heading" style="padding-top: 100px; padding-bottom: 50px;">
						<h1>${title}</h1>
						<span class="subheading">${ desc }</span>
						<div class="container" align="center">
							<br>
							<c:if test="${ !empty msg }">
								<b>${ msg }</b>
								<br>
							</c:if>
							<c:if test="${ empty id }">
								<!-- Button trigger modal -->
								<div class="container">
									<button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#login" style="padding-top: 5px; padding-bottom: 5px;">
									  LOGIN
									</button>	
									<a href="/happyhouse/join" type="button" class="btn btn-primary btn-lg" style="padding-top: 5px; padding-bottom: 5px;">
									  JOIN
									</a>
									<a href="/happyhouse/findPw" class="btn btn-warning btn-xs" style="padding-top: 5px; padding-bottom: 5px;">
									  비밀번호 수정
									</a>	
								</div>
								<!-- Modal -->
								<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
								  <div class="modal-dialog">
								    <div class="modal-content">
								      <div class="modal-header">
								        <h4 class="modal-title" id="myModalLabel">LOGIN</h4>
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								      </div>
								      <div class="modal-body">
								        <%@ include file="/WEB-INF/views/user/loginCheck.jsp" %>
								      </div>
								    </div>
								  </div>
								</div>	
							</c:if>
							<c:if test="${!empty id}">
							<span>
								<div class="bg-info" style="margin: 10px;">
									${id }님, 반갑습니다!!												
								</div>
								<a type="button" href="/happyhouse/logout"class="btn btn-primary btn-lg" style="padding-top: 5px; padding-bottom: 5px; align: right;">
									  LOGOUT 
								</a>
							</span>
							</c:if>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>

	<div class="container" align="center">
		<table class="table">
			<tr>
				<td align="center" class="table-success"><b>번호</b></td>
				<td align=center height="22">${qna.qnaNo}</td>
			</tr>
			<tr>					
				<td align=center class="table-success"><b>제목</b></td>
				<td width=100 align=center bgcolor="ffffff" height="22">${qna.qnaTitle}</td>
			</tr>
			<tr>
				<td width=100 align=center class="table-success"><b>작성자</b></td>
				<td width=100 align=center bgcolor="ffffff" height="22">${qna.qnaUserid}</td>
			</tr>
			<tr>
				<td width=100 align=center class="table-success"><b>작성 날짜</b></td>
				<td width=100 align=center bgcolor="ffffff" height="22">${qna.qnaDatetime}</td>
			</tr>
		</table>
		<table class="table">
			<tr class="table-success">
				<td width=100 align=center bgcolor="b3d9ff" height="22"><b>내용</b></td>
			</tr>
			<tr>
				<td width=100 bgcolor="ffffff">${qna.qnaContent}</td>
			</tr>
		</table>
			
		<c:if test="${!empty qna.replyContent}">
			<table class="table">
				<tbody>
					<tr>
						<td>답글</td>
						<td>${qna.replyContent}</td>
					</tr>
					<tr>
						<td>답글-작성일</td>
						<td>${qna.replyDatetime}</td>
					</tr>
					<tr>
						<td>답글-작성자</td>
						<td>${qna.replyUserid}</td>
					</tr>
				</tbody>
			</table>
		</c:if>
		
		<button type="submit" class="btn btn-primary" id="sendMessageButton" onClick="location.href='/happyhouse/qna'">돌아가기</button>
		<c:if test="${qna.qnaUserid eq  sessionScope.id }">
			<a href="/happyhouse/qna/update/${qna.qnaNo }">수정하기</a>
			<a href="/happyhouse/qna/delete/${qna.qnaNo }">삭제하기</a>
		</c:if>
		<c:if test="${sessionScope.id eq 'admin'}">
			<c:choose>
				<c:when test="${ empty  qna.replyContent }">
					<a href="/happyhouse/qna/update/${qna.qnaNo }">&nbsp;&nbsp;&nbsp;답글달기</a>
				</c:when>
				<c:otherwise>
					<a href="/happyhouse/qna/update/${qna.qnaNo }">&nbsp;&nbsp;&nbsp;답글 수정하기</a>
				</c:otherwise>
			</c:choose>
				<c:if test="${!empty qna.replyContent}">
					<a href="/happyhouse/qna/reply/${qna.qnaNo }">&nbsp;&nbsp;&nbsp;답글삭제</a>
				</c:if>
		</c:if>
	</div>

	<hr>

	<!-- Footer -->
      <%@ include file="/WEB-INF/views/footer.jsp"%>
   
     <!-- JavaScript -->
     <!-- Bootstrap core JavaScript -->
	<script src="../resources/res/vendor/jquery/jquery.min.js"></script>
	<script src="../resources/res/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
	
	<!-- Contact Form JavaScript -->
	<script src="../resources/res/js/jqBootstrapValidation.js"></script>
	<script src="../resources/res/js/contact_me.js"></script>
	
	<!-- Custom scripts for this template -->
	<script src="../resources/res/js/clean-blog.min.js"></script>
</body>

</html>