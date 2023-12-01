<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ChatProgress</title>
    <style>
        #logo {
            width: 200px;
            height: 200px;
        }

        .dot.wrapper {
            width: 600px;
            margin: 0 auto;
            
        }

        .dot {
            display: flex;
            float: left;
            list-style: none;
        }

        #gnb_li {
            width: 100px;
            height: 100px;
            line-height: 100px;
            text-align: center;
            color: grey;
            text-decoration: none;
            font-size: 18px;
            margin: 0 30px;
        }

        #ChatList_btn{
            width: 600px;
            height: 150px;
            font-size: 50px;
            border-radius: 30px;
            text-align: left;
            
            
        }
    </style>
</head>
<body>
    <fieldset>
        <div class="dot.wrapper">
            <div class="dot">
                <img class="dot" id="logo" src="./부릉부름_logo.png" alt="요청한 이미지를 찾을 수 없습니다.">
                <nav id="gnb">
                    <ul class="dot">
                        <li><a href="ErrandList.jsp" target="_blank" id="gnb_li" style="display: block;">심부름 요청</a></li>
                        <li><a href="RequireErrand.jsp" target="_blank" id="gnb_li" style="display: block;">심부름 목록</a>
                        </li>
                        <li><a href="Ranking.jsp" target="_blank" id="gnb_li" style="display: block;">랭킹</a></li>
                        <li><a href="Charge.jsp" target="_blank" id="gnb_li" style="display: block;">충전</a></li>
                        <li><a href="ChatList.jsp" target="_blank" id="gnb_li" style="display: block;">채팅</a></li>
                        <li><a href="Myinfo.jsp" target="_blank" id="gnb_li" style="display: block;">마이페이지</a></li>
                    </ul>
                </nav>
                
            </div>
        </div>
        <table class="dot">
            <tr align="center">
                <td>
                    <a href="ChatList.jsp" onClick="history.back();">
                        <img src="https://w7.pngwing.com/pngs/895/794/png-transparent-back-button-arrow-icon-the-direction-of-the-thumbnail.png" width="50px">
                    </a> 
                </td>
                <td><h2 style="width: 700px;">상대방 닉네임</h2></td>
            </tr>
            <tr style="height: 200px;">
                <td rowspan="2"></td>
                <td></td>
            </tr>
            

            
        </table>
        <script>
            
            







        </script>



    </fieldset>
</body>
</html>