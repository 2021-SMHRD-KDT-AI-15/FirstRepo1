<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" isELIgnored="false"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ChargeHistory</title>

<style>
#logo {
	width: 200px;
	height: 200px;
}
</style>
</head>

<body>
	<table border="1"> 
		<tr bgcolor="gray">
			<th width="50px"><b>NO</b></th>
			<th width="100"><b>충전일시</b></th>
			<th width="100"><b>충전금액</b></th>
			
		</tr>
		<c:forEach var="chargeHistory" items="${chargeHistory}" begin="1" end="9999" step="1" varStatus="status">
		<td align="center">${status.index}</td>
		<td align="center" width="300" height="50">${chargeHistory.charge_date}</td>
		<td align="center" width="200" height="50">${chargeHistory.charge_money}</td>
		</tr>
		</c:forEach>
	</table>
</body>

</html>