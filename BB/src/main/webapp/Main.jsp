<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR" isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

    <style>
        .box1{
            box-sizing: border-box;
            width: 200px;
            height: 550px;
            padding: 50px;
            box-shadow: 2px -2px 5px 0px;
        }

        .box2{
            box-sizing: border-box;
            width: 400px;
            height: 250px;
            padding: 50px;
            box-shadow: 2px -2px 5px 0px;
        }

        .box3{
            box-sizing: border-box;
            width: 500px;
            height: 250px;
            padding: 20px;
            box-shadow: 2px -2px 5px 0px;
        }
        .box4{
            box-sizing: border-box;
            width: 50%;
            height: 550px;
            padding: 20px;
            box-shadow: 2px -2px 5px 0px;
        }

    </style>
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


    <a class="box1" id="ErrandList" href="ErrandListService">심부름 목록</a>
    <a class="box1" id="RequireErrand" href="RequireErrand.jsp">심부름 요청</a>
    <a class="box2" id="Charge" href="Charge.jsp">충전하기</a>
    <a class="box3"id="MyInfo" href="MyInfo.jsp">마이 페이지</a>
    <a class="box4"id="Ranking" href="Ranking.jsp">랭킹 페이지</a>
    <a class="box4"id="ChatList" href="ChatList">채팅</a>
    
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