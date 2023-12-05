// 1. 방 번호 확인
const room = $('#room').html();

// 2. 미리 객체 만들어두기
let chat = {
	'chat' : '',
	'member_id' : '',
	'errand_id' : '',
	'timestamp' : ''
};

let socket;

// 3. user id 받아오기
window.onload= function(){
	
	chat.member_id = $('#client').val();
	
	// Socket 연결
	socket = new WebSocket('ws://localhost:8081/BB/chat/' + room);
	// Socket의 콜백함수 지정
	socket.onopen = onOpen;
	socket.onclose = onClose;
	socket.onmessage = onMessage;
	
	chat.member_id = $("#client").html();
		// 채팅창 초기화
	loadChat();
	
	$('#chatBody').animate({
         scrollTop: $('#chatBody').scrollHeight
     });
	
};

$('#button-send').on("click", function(){
	
	// 1) 사용자가 작성한 데이터 가져오기
	chat.chat = $("#msg").val();
	chat.errand_id = room;
	
	var today = new Date();

	var year = today.getFullYear();
	var month = ('0' + (today.getMonth() + 1)).slice(-2);
	var day = ('0' + today.getDate()).slice(-2);

	var dateString = year + '-' + month  + '-' + day;
	
	var hours = ('0' + today.getHours()).slice(-2); 
	var minutes = ('0' + today.getMinutes()).slice(-2);
	var seconds = ('0' + today.getSeconds()).slice(-2); 

	var timeString = hours + ':' + minutes  + ':' + seconds;
	
	dateString += " " + timeString;

	chat.timestamp = dateString;
	chat.member_id = $("#client").html();
	
	// 2) chat 객체를 JSON 데이터로 변환
	// Javascript Object --> json String
	let json = JSON.stringify(chat);
	
	// 3) WebSocket으로 메세지 전송
	// socket.send("보내고 싶은 문자열");
	send();
	loadChat();
});

loadChat();

// 채팅 내용 불러오기
function loadChat(){
	
	// 채팅 div 초기화
	$("#msgArea").html("");
	
	// 비동기 통신을 이용해서 채팅 내용 가져와 출력하기(직접해보기)
	 $.ajax({
    url: "Test",
    data: {
		room : room
	},
    type: "get",
    dataType: "json",
    success: function (data) {
			// alert("성공");
			
			let resultJson = data;
			
			// alert(resultJson[0].memberId);
			
			for(let i = 0; i < resultJson.length; i++){
				
				let c_chat = data[i].chat;
				let c_timestamp = data[i].timestamp;
				let c_member_id = data[i].memberId;
				
				
				var chatDiv_subject = `
					<div class='row'>
						<div class='col-6'>
							<div class='alert alert-warning'>
								<b>${c_chat}</b>
							</div>
							<span>${c_timestamp}</span>
						</div>
					</div>
				`;
				
				var chatDiv_client = `
					<div class='row'>
						<div class='col-sm-6'></div>
						<div class='col-sm-6'>
							<div class='alert alert-secondary'>
								<b>${c_chat}</b>
							</div>
							<span>${c_timestamp}</span>
						</div>
					</div>
				`;
				
				if(c_member_id == chat.member_id){
					$('#msgArea').append(chatDiv_client);
				}else{
					$('#msgArea').append(chatDiv_subject);
				}
				
			}
		},
		error: function(){
			alert("error");
		}
	})
	
}

// 사용자가 연결되었을 때
function onOpen(){
	console.log("웹 소켓 연결됨!");	
}

// 사용자가 연결을 종료했을 때
function onClose(){
	console.log("웹 소켓 종료!");
}

// 사용자가 메세지를 받았을 때
function onMessage(msg){
	
	// String json --> javascript Object
	// 받은 메세지의 data 값이 받아온 메세지 데이터
	var message = JSON.parse(msg.data);
	
	// 받은 데이터 출력하기
	var chatDiv = `
		<div class='row'>
			<div class='col-6'>
				<div class='alert alert-warning'>
					<b>${message.chat}</b>
				</div>
				<span>${message.timestamp}</span>
			</div>
		</div>
	`;
	// 채팅창에 추가
	$('#msgArea').append(chatDiv);
	// Div 스크롤을 가장 아래로 내리기
	$('#chatBody').animate({
         scrollTop: $('#chatBody')[0].scrollHeight
     }, 400);
	
	loadChat();
}

// 메세지를 보내는 함수
function send(){
	
	chat.chat = $('#msg').val();
	
	// 메세지 전송
	socket.send(JSON.stringify(chat));	
	
	// `` : 백 틱 : 엔터가 가능한 문자열 기호
	// 백틱 내에서 ${변수명}으로 원하는 위치에 변수값을 집어넣을 수 있다.
	var chatDiv = `
		<div class='row'>
			<div class='col-sm-6'></div>
			<div class='col-sm-6'>
				<div class='alert alert-secondary'>
					<b>${chat.chat}</b>
				</div>
				<span>${chat.timestamp}</span>
			</div>
		</div>
	`;
	// 채팅창에 추가
	$("#msgArea").append(chatDiv);
	// Div 스크롤을 가장 아래로 내리기
	 $('#chatBody').animate({
         scrollTop: $('#chatBody')[0].scrollHeight
     }, 400);
}
