<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="False"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
	xmlns:sec="http://www.thymeleaf.org/extras/spring-security">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
</head>

<body>

	<div class="container">
		<div class="card-body" style="overflow-y: scroll; height: 500px" id="chatBody">
			<c:forEach var="c" items="${chatList}" varStatus="status">
			
				<div class="card bg-success text-white" onclick="window.location.href='ChatProgress.jsp?room=${c.errand_id}'">
					<div class="card-body">${nicknameList[status.index]} 님과의 대화</div>
				</div><br>

			</c:forEach>
		</div>
	</div>

</body>
</html>