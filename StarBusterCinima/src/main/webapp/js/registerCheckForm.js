$(function() {

})

function checkForm() {
	if ($('#password').val() != $('#cpassword').val()) {
		alert('Please confirm your password again');
	}
}
