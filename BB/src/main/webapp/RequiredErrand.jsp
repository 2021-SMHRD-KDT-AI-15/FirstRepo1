<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>RequiredErrand</title>
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

    <main>
        <a href="ErrandInfo.jsp"><button>심부름제목</button></a><button>요청 취소</button>
        <section>
            <table border="solid" width="700px">
                <tr>

                    <td>No</td>
                    <td>지원메시지</td>
                    <td>지원자 닉네임</td>

                </tr>
                <tr>
                    <td>1</td>
                    <td>지원 메세지1</td>
                    <td>지원자 닉네임1</td>
                    <td><button>선택</button></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>지원 메세지2</td>
                    <td>지원자 닉네임2</td>
                    <td><a href="ChatList.jsp"><button>채팅</button></a></td>
                    <td><button>완료</button></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>지원 메세지3</td>
                    <td>지원자 닉네임3</td>
                    <td><a href="WriteReview.jsp"><button>후기작성</button></a></td>
                </tr>
            </table>
        </section>
        <section>
            <a href="ErrandInfo.jsp"><button>심부름제목</button></a><button>요청 취소</button>
            <table border="solid" width="700px">
                <tr>
                <tr>
                    <td>No</td>
                    <td>지원메시지</td>
                    <td>지원자 닉네임</td>

                </tr>

                </tr>
                <tr>
                    <td>1</td>
                    <td>지원 메세지1</td>
                    <td>지원자 닉네임1</td>
                    <td><button>선택</button></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>지원 메세지2</td>
                    <td>지원자 닉네임2</td>
                    <td><button>선택</button></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>지원 메세지3</td>
                    <td>지원자 닉네임3</td>
                    <td><button>선택</button></td>
                </tr>
            </table>
        </section>
    </main>


    <script>




    </script>
</body>

</html>