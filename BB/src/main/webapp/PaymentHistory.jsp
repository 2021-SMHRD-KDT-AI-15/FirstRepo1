<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PaymentHistory</title>
</head>
<body>
	<header>
		<div>
			<button>
				<a href="MyInfo.jsp">내정보</a>
			</button>
			<button>
				<a href="InfoChange1.jsp">회원정보변경</a>
			</button>
			<button>
				<a href="RequiredErrand.jsp">요청한심부름</a>
			</button>
			<button>
				<a href="ApplyErrand.jsp">지원한심부름</a>
			</button>
			<button>
				<a href="ChargeHistory.jsp">충전내역</a>
			</button>
			<button>
				<a href="PaymentHistory.jsp">결제내역</a>
			</button>
		</div>
	</header>

	<fieldset>
	<table border="1">
		<tr bgcolor="gray">
			<th width="50px "><strong>NO</strong></th>
			<th width="100px"><strong>결제 일시</strong></th>
			<th width="100px"><strong>결제 금액</strong></th>
			<th width="100px"><strong>결제 내역</strong></th>
		</tr>
		<tr>
			<c:forEach var="review1" items="${payment}" begin="0" end="9999"
				step="1" varStatus="status">
				<td align="center" width="300" height="50">${payment.no}</td>
				<td align="center" width="300" height="50">${payment.date}</td>
				<td align="center" width="200" height="50">${payment.money}</td>
				<td align="center" width="200" heifht="50">${payment.ctgr}</td>
		</tr>
		</c:forEach>

	</table>
	</fieldset>
	

</body>
</html>