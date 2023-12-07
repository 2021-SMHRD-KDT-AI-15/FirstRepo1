<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>RequiredErrand</title>
</head>

<body>
	<c:if test="${fn:contains(param.reqCheck, 0)}">  <!-- 요청한 심부름이 없을 경우 -->
		<div style="width: 1100px; border: 1px solid; margin: 20px auto;">
			<p style="text-align: center;">요청한 심부름이 없습니다.<p>
		</div>
	</c:if>
	<c:forEach var="clientErrand" items="${clientErrandAll}"
		varStatus="status">
		<div style="width: 1100px; border: 1px solid; margin: 20px auto;">
			<c:if test="${not fn:contains(clientErrand.status, 3)}">
				<!-- 후기까지 작성한 경우 목록에서 안보임 -->
				<div style="padding: 5px 5px;">${clientErrand.title}</div>
				<table style="border: 1px solid; width: 1100px;">
					<tr>
						<td style="border: 1px solid; width: 700px;">지원메시지</td>
						<td style="border: 1px solid; width: 200px;">지원자 닉네임</td>
						<td style="border: 1px solid; width: 200px;">상태</td>
					</tr>
					<c:forEach var="applyMember" items="${applyMembers[status.index]}"
						varStatus="status2">
						<c:if test="${not fn:contains(applyMember.match_status, 2)}">
							<!-- 지원자 매칭상태 2 아닌 것만 출력 -->
							<tr>

								<td style="border: 1px solid"><p>${applyMember.message}</p></td>
								<td style="border: 1px solid">${applyMembersNickname[status.index][status2.index]}</td>
								<c:choose>
									<c:when test="${fn:contains(clientErrand.status, 0)}">
										<td>매칭대기 <a
											href="SelectApply?errand_id=${clientErrand.errand_id}&apply_member_id=${applyMember.member_id}"><button>선택하기</button></a>
										</td>
									</c:when>
									<c:when test="${fn:contains(clientErrand.status, 1)}">
										<td>매칭완료 <a href="ChatListService"><button>채팅</button></a>
											<a
											href="CompleteErrand?errand_id=${clientErrand.errand_id}&apply_member_id=${applyMember.member_id}"><button>완료</button></a>
										</td>
									</c:when>
									<c:when test="${fn:contains(clientErrand.status, 2)}">
										<td>심부름 수행확정 <a
											href="WriteReviewServiceFromReqErr?apply_member_id=${applyMember.member_id}&errand_title=${clientErrand.title}&errand_id=${clientErrand.errand_id}&errand_ctgr=${clientErrand.errand_ctgr}"><button>후기작성</button></a>
										</td>
									</c:when>
								</c:choose>
							</tr>
						</c:if>
					</c:forEach>
				</table>
			</c:if>
		</div>
	</c:forEach>
</body>
</html>
