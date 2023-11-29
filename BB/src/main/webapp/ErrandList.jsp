<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
	div{
		background-color : whitesmoke;
		display: inline-box;
		border: 1px solid;
		width: 300px;
		height: 300px;
		text-align: center;
		positino: static;
		float: left;
	}
	span{
		background-color: black;
		color: white;
	}
</style>
</head>
<body>
	<c:forEach var="errand" items="${errandList}">
			<a href="ErrandInfoService?member_id=${errand.member_id}">
			<div>
				No. ${errand.errand_id}<br><br>
				${errand.location_ctgr}  ${errand.errand_ctgr}<br>
				<h1>${errand.title}</h1>
				${errand.req_location}<br>
				${errand.req_date}<br>
				  ~   ${errand.want_date}<br><br>
				${errand.price} 원<br>
				<c:choose>
					<c:when test='${fn:contains(errand.status, "0")}'>
						<span>매칭대기중</span>
					</c:when>
					<c:when test='${fn:contains(errand.status, "1")}'>
						<span>매칭완료</span>
					</c:when>
					<c:when test='${fn:contains(errand.status, "3")}'>
						<span>종료</span>
					</c:when>
				</c:choose>
				
			</div>
			</a>
	</c:forEach>
</body>
</html>