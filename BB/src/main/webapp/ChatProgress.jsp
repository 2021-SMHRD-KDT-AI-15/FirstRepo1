<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8" isELIgnored="False"%>

<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org"
   xmlns:sec="http://www.thymeleaf.org/extras/spring-security">
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
   href="assets/css/ChatProgress.css">
<script
   src="https://cdn.jsdelivr.net/npm/jquery@3.6.3/dist/jquery.slim.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
   src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<script type="text/javascript"
   src="https://code.jquery.com/jquery-3.6.3.min.js"></script>
</head>

<body>
   
   <div class="container">
            <!-- EL을 이용해 쿼리스트링에 담긴 데이터 집어넣기 -->
            <h1 id="room" style="display: none;">${param.room}</h1>
            <p id="client" style="display: none;">${param.client_no}</p>
            <p id="subject" style="display: none;">${param.subject_no}</p>

      <div class="row">
         <div class="col-lg-2"></div>
         <div class="col-lg-8">
            <div class="card" style="height: 600px;">
               <!-- chat body -->
               <div class="card-body" style="overflow-y: scroll;" id="chatBody">
                  <div id="msgArea">

                     <!-- 메세지가 작성되는 영역 -->

                     <!-- 내가 보낸 메세지 예시 -->
                     <div class='row'>
                        <div class='col-sm-6'></div>
                        <div class='col-sm-6'>
                           <div class='alert alert-secondary'>
                           </div>
                        </div>
                     </div>

                     <!-- 남이 보낸 메세지 예시 -->
                     <div class='row'>
                        <div class='col-6'>
                           <div class='alert alert-warning'>
                           </div>
                        </div>
                     </div>


                  </div>
               </div>
               <!-- chat body end -->
               <!-- chat input -->
               <div style="text-align: center;">

                  <div class="row">
                     <div class="col-lg-1"></div>
                     <div class="input-group col-lg-10">

                        <!-- 메세지 전송 버튼 -->
                        <input type="text" id="msg" class="form-control"
                           aria-label="Recipient's username"
                           aria-describedby="button-addon2">

                        <div class="input-group-append">
                           <button class="btn btn-sm btn-info frame custom-btn" type="button"
                              id="button-send">전송</button>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- chat input end -->
            </div>
         </div>
      </div>

      <div class="col-lg-2"></div>
   </div>

   <script src="assets/js/chat.js"></script>
</body>
</html>