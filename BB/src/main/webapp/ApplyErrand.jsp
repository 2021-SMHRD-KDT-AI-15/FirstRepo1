<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="False"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
div {
	background-color: whitesmoke;
	width: 900px;
	height: 60px;
	border: 1px solid;
}

table {
	width: 900px;
	margin: 10px;
}

#title {
	width: 600px;
	height: 35px;
	background-color: #c4c4c4;
	border-radius: 10px;
}

td {
	text-align: center;
}

#status {
	background-color: black;
	color: white;
}
</style>
</head>
<body>

	<c:choose>
		<c:when test="${fn:contains(param.applyCheck, 0)}">
			<div>
				<table>
					<tr>
						<td>지원한 심부름이 없습니다.</td>
					</tr>
				</table>
			</div>
		</c:when>
		<c:otherwise>
			<c:forEach var="ErrandTitle" items="${ErrandTitleList}" varStatus="status">
				<c:if test="${not fn:contains(ApplyErrandList[status.index].match_status, 5)}"> <!-- 지원자의 매칭상태가 5면 출력안됨 -->
					<div>
						<table>
							<tr>
								<td id="title">${ErrandTitle.title}</td>
								<c:choose>
									<c:when
										test="${fn:contains(ApplyErrandList[status.index].match_status, 0)}">
										<td id="status">수락대기</td>
										<td><a
											href="ApplyCancelService?errand_id=${ErrandTitle.errand_id}"><button>지원취소</button></a></td>
									</c:when>
									<c:when
										test="${fn:contains(ApplyErrandList[status.index].match_status, 1)}">
										<td id="status">매칭완료</td>
										<td><a
											href="ApplyCancelService?errand_id=${ErrandTitle.errand_id}"><button>지원취소</button></a></td>
										<td><a href="ChatListService"><button>채팅</button></a></td>
									</c:when>
									<c:when
										test="${fn:contains(ApplyErrandList[status.index].match_status, 2)}">
										<td id="status">선택받지 못함</td>
										<td><a
											href="ApplyCancelService?errand_id=${ErrandTitle.errand_id}"><button>확인</button></a></td>
										<td></td>
									</c:when>
									<c:when
										test="${fn:contains(ApplyErrandList[status.index].match_status, 4)}">
										<td id="status">심부름 종료</td>
										<td><a
											href="GetNickname_WriteReviewService?subject_id=${ErrandTitle.member_id}&title=${ErrandTitle.title}&errand_ctgr=${ErrandTitle.errand_ctgr}&errand_id=${ErrandTitle.errand_id}"><button>후기작성</button></a></td>
									</c:when>
								</c:choose>
							</tr>
						</table>
					</div>
				</c:if>
			</c:forEach>
		</c:otherwise>
	</c:choose>

</body>
</html>