$(document).ready(function() {//Start when document will ready.
	$( "#login_button" ).click(function() {
		// var email = $("#email").val();// Store email input value in the variable email.
		// var password = $("#password").val();//Store password input value in the variable password.

		// Check if email=formget@gmail.com and password=fugo then,Show the message Account Validated!!! in the div having id message.
		if (email == "formget@gmail.com" && password == "fugo") {
			$("#message").html("Account Validated!!!");
		}
		/*If email and password do not match then shake div having id maindiv and show the message "***Invalid email or password***" in the div having id message.*/
		else{ 
			$( "#login" ).effect( "shake" );
			$("#message").html('***Invalid email or password***');

		}

	});
});
