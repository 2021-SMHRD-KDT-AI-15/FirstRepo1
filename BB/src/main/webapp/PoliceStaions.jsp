<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>경찰서 조회</title>
</head>
<body>
    <h1>경찰서 목록</h1>
    <table border="1">
        <thead>
            <tr>
            	<th>순서</th>
                <th>경찰서 이름</th>
                <th>위치</th>
                <th>연락처</th>
            </tr>
        </thead>
        <tbody>
            <!-- Iterate over the policeList and display each police station -->
            <c:forEach var="police" items="${policeList}" varStatus="status">
                <tr>
                	<td>${status.count}</td>
                    <td>${police.police_name}</td>
                    <td>${police.police_location}</td>
                    <td>${police.police_number}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>

</body>
</html>
