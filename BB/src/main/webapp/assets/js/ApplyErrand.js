let button = document.getElementById("applyButton");

button.addEventListener("click", function(){
	let message = prompt("간단한 지원메시지를 입력하세요.");
	let msg = document.getElementById("message");
	msg.value=message;
});