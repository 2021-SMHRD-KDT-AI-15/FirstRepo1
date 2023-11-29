<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>InfoChange1</title>
</head>
<body>
    <div>
        <button>내 정보</button>
        <button>회원정보 변경</button>
        <button>요청한 심부름</button>
        <button>지원한 심부름</button>
        <button>충전내역</button>
        <button>결제 내역</button>
    </div>
    

    <section>
        <input type="text" placeholder="비밀번호를 입력해주세요.">
        <button>확인</button>
    </section>


    <script>
        if(pw!=input.value){
            alert("비밀번호가 일치하지 않습니다.")
        }

    </script>

</body>
</html>