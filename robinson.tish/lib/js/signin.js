
const checkSigninForm = () => {
	let username = $("signin-username").val();

	let password = $("#signin-password").val();

	if(username=="user" && password=="pass") {
	console.log("logged in")
	sessionStorage.userID = 3;
	} else {
	console.log("logged out")
	sessionStorage.removeItem("userID");

checkUserId();
	}
}

const checkUserId = ()=> {
	let p = ["#signin-page", "signup-page",""];
	
	if(sessionStorage.userId === undefined) {
		// not logged in
		if(!p.some(o=>window.location.hash===o))
			$.mobile.navigate("#signin-page")
	} else {
		//logged in
		if(p.some(o=>window.location.hash===o))
			//passes a true or false
		$.mobile.navigate("#recent-page");

	}
}