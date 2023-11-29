<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<a href="MyInfo.jsp"><button>내정보</button></a>
	<a href="InfoChange1.jsp"><button>회원정보 변경</button></a>
	<a href="RequiredErrand.jsp"><button>요청한 심부름</button></a>
	<a href=""><button>지원한 심부름</button></a>
	<a href="ChargeHistory.jsp"><button>충전내역</button></a>
	<a href="PaymentHistory.jsp"><button>결제내역</button></a>

		${nick}(${id})님 환영합니다! 보유금액 : ${money} 원 내가 받은 좋아요 내가 받은 싫어요 나에 대한 후기
		review_ctgr1 내가 작성한 후기 review_ctgr0
</body>
</html>