<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR" isELIgnored="false" %>
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
    <div>
        <img id="logo" src="./부릉부름_logo.png" alt="요청한 이미지를 찾을 수 없습니다.">
        <nav>
            <span>심부름 요청</span><span>심부름 목록</span><span>랭킹</span><span>채팅</span><span>마이페이지</span><br>
        </nav>
        <button>내 정보</button>
        <button>회원정보 변경</button>
        <button>요청한 심부름</button>
        <button>지원한 심부름</button>
        <button>충전내역</button>
        <button>결제 내역</button>
    </div>
    	<c:forEach var="chargeHistory" items="${chargeHistory}">
    		${chargeHistory.charge_money}
    	</c:forEach>
    <div>
    	
    </div>

    <script>


    </script>
</body>

</html>