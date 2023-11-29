<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	}
</style>
</head>
<body>
	<c:forEach var="errand" items="${errandList}">
			<div>
				No. ${errand.errand_id}<br><br>
				${errand.location_ctgr}  ${errand.errand_ctgr}<br>
				<h1>${errand.title}</h1>
				${errand.req_location}<br>
				${errand.req_date}<br>
				  ~   ${errand.want_date}<br><br>
				${errand.price} 원<br>
				${errand.status}
				<c:if test="${errand.status eq 0}">
					<span>매칭대기중</span>
				</c:if>
			</div>
	</c:forEach>
</body>
</html>