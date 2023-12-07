<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PaymentHistory</title>
</head>
<body>
	<fieldset>
	<table border="1">
		<tr bgcolor="gray">
			<th width="50px "><strong>NO</strong></th>
			<th width="100px"><strong>결제 일시</strong></th>
			<th width="100px"><strong>결제 금액</strong></th>
			<th width="100px"><strong>결제 내역</strong></th>
		</tr>
		<tr>
			<c:forEach var="paymentHistory" items="${paymentHistory}" begin="0" end="9999" step="1" varStatus="status">
				<td align="center" width="300" height="50">${status.count}</td>
				<td align="center" width="300" height="50">${paymentHistory.payment_date}</td>
				<td align="center" width="300" height="50">${paymentHistory.payment_money}</td>
				<c:choose>
				<c:when test='${fn:contains(paymentHistory.payment_ctgr, "0")}'>
					<td align="center" width="200" height="50">심부름 요청</td>
				</c:when>
				<c:when test='${fn:contains(paymentHistory.payment_ctgr, "1")}'>
					<td align="center" width="200" height="50">심부름 완수</td>
				</c:when>
				<c:when test='${fn:contains(paymentHistory.payment_ctgr, "2")}'>
					<td align="center" width="200" height="50">심부름 지원비용</td>
				</c:when>
				<c:when test='${fn:contains(paymentHistory.payment_ctgr, "3")}'>
					<td align="center" width="200" height="50">심부름 지원비용 반환</td>
				</c:when>
				<c:when test='${fn:contains(paymentHistory.payment_ctgr, "4")}'>
					<td align="center" width="200" height="50">심부름 요청 취소 수수료</td>
				</c:when>
			</c:choose>
		</tr>
	</c:forEach>
	</table>
	</fieldset>
	

</body>
</html>