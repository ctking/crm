function requestSendMessage(){
		$('#submitDatabutton').button('loading');
	    var number = $('#phoneNumber').val();
		var msg = $('#textarea1').val();        
		if(number==''){
			 Toast.error('Number is required');
			 $('#submitDatabutton') .button('reset');
			 return;
			}
     $('#submitDatabutton').prop('disabled', true);
    $.post( "sendSms.php", {number:number,msg:msg})
    .done(function( data ) {
    Toast.info(data);
    sendMessageCallbackData();
   });
 }
 function sendMessageCallbackData(){
        $('#textarea1').val('');
        $('#phoneNumber').val('');
        $('#myModal').modal('toggle');
        $('#submitDatabutton').prop('disabled', false);
        $('#submitDatabutton') .button('reset');
        window.location.reload();
}


function requestDeleteMessage(id){
	$.post( "delete-message.php", {id:id})
    .done(function( data ) {
    Toast.info(data);
    window.location.reload();
   });
 }



function requestCallback(){
		$('#submitDatabutton').button('loading');
	    var username = $('#username').val();
        var email= $('#email').val();
        var phoneNumber= $('#phoneNumber').val();
        var typeBusiness= $('#typeBusiness').val();
        var city= $('#city').val();
        var tandc= $('#terms').is(":checked");
		if(!tandc){
			 Toast.error('Please agree on terms and conditions to get start support');
			 $('#submitDatabutton') .button('reset');
			 return;
			}
    //console.log(username+':'+email+':'+typeBusiness);
    //var jsonObject ="{\"username\":\""+username+"\",\"email\":\""+email+"\",\"phoneNumber\":"+phoneNumber+",\"typeBusiness\":\""+typeBusiness+"\"}";
    //console.log(jsonObject);
   $('#submitDatabutton').prop('disabled', true);
    $.post( "requestCallback.php", {username:username,email:email,phoneNumber:phoneNumber,typeBusiness:typeBusiness})
    .done(function( data ) {
    Toast.info(data);
    resetRequestCallbackData();
   });
 }


function resetRequestCallbackData(){
        $('#username').val('');
        $('#email').val('');
        $('#phoneNumber').val('');
        $('#typeBusiness').val('Business Consulting');
        $('#myModal').modal('toggle');
        $('#submitDatabutton').prop('disabled', false);
         $('#submitDatabutton') .button('reset');
}

 function requestCallbackCallback(){
    alert("Request Completed successfully our executive will contact you");
 }

function requestToSubscribe(){
    var email= $('#subsEmail').val();
    var phoneNumber= $('#subsPhoneNumber').val();
    $.post( "subscription.php", {email:email,phoneNumber:phoneNumber})
    .done(function( data ) {
    Toast.info(data);
    resetRequestToSubscribe();
   });
 }

function resetRequestToSubscribe(){
        $('#subsEmail').val('');
        $('#subsPhoneNumber').val('');
}


function requestToContact(){
    var name= $('#name').val();
    var email= $('#email').val();
    var phoneNumber= $('#phone').val();
    var comment= $('#textarea1').val();
    $.post( "contact.php", {name:name,email:email,phoneNumber:phoneNumber,comment:comment})
    .done(function( data ) {
    Toast.info(data);
    resetRequestToContact();
   });
 }

function resetRequestToContact(){
        $('#name').val('');
        $('#email').val('');
        $('#phone').val('');
        $('#textarea1').val('');
}

