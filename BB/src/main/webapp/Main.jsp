<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div>
        <section>
            <ul>
                <div>
                    <li></li>
                </div>
            </ul>
        </section>

    </div>






    <a id="ErrandList" href="ErrandList.jsp">심부름 목록</a>
    <a id="RequireErrand" href="RequireErrand.jsp">심부름 요청</a>
    <a id="Charge" href="Charge.jsp">충전하기</a>
    <a id="MyInfo" href="MyInfo.jsp">마이 페이지</a>
    <a id="Ranking" href="Ranking.jsp">랭킹 페이지</a>
    <a id="ChatList" href="ChatList">채팅</a>

    <script>
        let ErrandList = document.getElementsByClassName("ErrandList")
        let RequireErrand = document.getElementsByClassName("RequireErrand")
        let Charge = document.getElementsByClassName("Charge")
        let MyInfo = document.getElementsByClassName("MyInfo")
        let Ranking = document.getElementsByClassName("Ranking")
        let ChatList = document.getElementsByClassName("ChatList")
    </script>
    
</body>
</html>