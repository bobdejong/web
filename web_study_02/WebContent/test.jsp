<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원 가입</title>
<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
<style type="text/css">
form label {
	font-size: 14px;
	width: 160px;
	float: left;
}

form label em {
	font-size: 15px;
	color: red;
	font-weight: 800;
	float: right;
	width: 15px;
}

input {
	size: 20;
}
</style>
<script type="text/javascript">
function blkInput(value){
	
	if (value != ""){
		document.all.mail2.disabled = true;
		document.all.mail2.value = value;
	} else {
		document.all.mail2.disabled = false;
		document.all.mail2.value = "";
	}
}
/* 
function check(){
	if(document.all.ssn2.value!=""){
		var num = document.all.ssn2.value.charAt(0);
		}if(document.all.ssn2.value!=""){
			var num = document.all.ssn2.value.charAt(0);
			if ( !(num >= 1 && num <= 4) ){
				alert("주민등록번호 뒷자리를 올바르게 입력해 주세요.");
				document.frm.ssn2.focus();
				return false;
		} else { // 6 or 7 자리수 맞추기.
			if ( !(num >= 1 && num <= 4) ){
				alert("주민등록번호를 올바르게 입력해 주세요.");
				document.frm.ssn2.focus();
				return false;
		} else {
		return true;
	}
} */
function check(){
		if(!/^[ㄱ-ㅣ가-힣a-zA-Z]{1,10}$/.test($("#name").val())){
			alert("이름이 올바르지 않습니다.");
			return false;
		}
		if(!/^[0-9]{6}$/.test($("#ssn1").val())){
			alert("주민등록 앞번호가 올바르지 않습니다.");
			return false;	
		}
		if(!/^[1-4]{1}[0-9]{6}$/.test($("#ssn2").val())){
			alert("주민등록 뒷번호가 올바르지 않습니다.");
			return false;	
		}
		if(!/^[ㄱ-ㅣ가-힣a-zA-Z0-9~!@#$%^&*()]{4,12}$/.test($("#pw").val())){
			alert("패스워드가 올바르지 않습니다.");
			return false;	
		}
		if(!($("#pw").val()==$("#repw").val())){
			alert("패스워드가 같지 않습니다.")
			return false;
		}		
	}
	


</script>
</head>
<body>
	<form method="get" action="testServlet">
		<label>이름<em>*</em></label>	<input type="text" name="name" id="name" required><br>
		<label>주민등록번호<em>*</em></label><input type="text" name="ssn1" id="ssn1" required>
		- <input type="password" name="ssn2" id="ssn2" required><br>
		<label>아이디<em>*</em></label><input	name="id" id="id" required><br>
		<label>비밀번호<em>*</em></label><input type="password" name="pw" id="pw" required><br>
		<label>비밀번호 확인<em>*</em></label><input type="password" name="repw" id="repw" required><br>
		<label>이메일</label><input name="mail1">
		@ <input name="mail2">
		<select name="mail" onChange="blkInput(value)">
			<option value="">직접입력</option>
			<option value="daum.net">daum.net</option>
			<option value="empal.com">empal.com</option>
			<option value="gmail.com">gmail.com</option>
			<option value="hanmail.net">hanmail.net</option>
			<option value="msn.com">msn.com</option>
			<option value="naver.com">naver.com</option>
			<option value="nate.com">nate.com</option>
		</select><br> 
		<label>우편번호</label><input name="post"><br>
		<label>주소</label><input type="text" name="addr1">
		<input type="text" name="addr2"><br> <label>핸드폰번호</label>
		<input type="tel" name="phone"><br> <label>직업</label>
		<select name="job" size="3">
			<option value="컴퓨터/인터넷" selected>컴퓨터/인터넷</option>
			<option value="언론">언론</option>
			<option value="공무원">공무원</option>
		</select><br> <label>메일/SMS 정보 수신</label>
		<input type="radio" name="mailrcv"	value="yes" checked>수신
		<input type="radio" name="mailrcv"	value="no">수신거부<br> <label>관심분야</label>
			<input type="checkbox" name="interest" value="생두">생두
			<input type="checkbox" name="interest" value="원두" checked>원두
			<input type="checkbox" name="interest" value="로스팅">로스팅
			<input type="checkbox" name="interest" value="핸드드립" checked>핸드드립
			<input type="checkbox" name="interest" value="에스프레소" checked>에스프레소
			<input type="checkbox" name="interest" value="창업">창업 <br><br>
			<center><input type="submit" value="회원가입" onclick="return check()">
			<input type="reset" value="취소"></center>
	</form>
</body>
</html>