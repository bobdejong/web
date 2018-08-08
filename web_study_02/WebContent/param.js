function check(){
	if(document.frn.id.value==""){
		alert("아이디를 입력해 주세요");
		document.frn.id.focus();
		return false;
		
	}else if(document.frn.age.value==""){
		alert("나이를 입력해 주세요");
		document.frn.age.focus();
		return false;
		
	}else if(isNaN(document.frn.age.value)){
		alert("숫자로 입력해주세요")
		document.frn.age.focus();
		return false;
		
	}else{
		return true;
	}
		
	
}