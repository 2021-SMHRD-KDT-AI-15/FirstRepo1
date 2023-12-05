<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RequiredErrand</title>
</head>

<body>
	<div>
		<c:choose>
		    <c:when test="${not empty errandList}">
		        <c:forEach var="errand" items="${errandList}" varStatus="status">
		            <tr>
		            	<td>${status.count}</td>
		                <td><a href="ErrandInfoService?errand_id=${errand.errand_id}&member_id=${errand.member_id}">제목 : ${errand.title}</a></td>
		                <button>요청취소</button>
		                <br>
		                <c:when test="${not empty applyErrandList}">
		                	<c:forEach var="apply" items="${applyErrandList}" varStatus="applystatus">
		                		<c:if test="${apply.errand_id eq errand.errand_id}">
			                		<div>
			                			<span>${applystatus.count}</span>
			                			<span>지원자 메시지 : ${apply.message}</span>
			                		</div>
		                		</c:if>
		                	</c:forEach>
		                </c:when>
		        </c:forEach>
		    </c:when>
		    <c:otherwise>
		        <p>No errands available.</p>
		    </c:otherwise>
		</c:choose>
	</div>

</body>

</html>
