//= require jquery
//= require jquery_ujs
//= require angular
//= require angular-animate
//= require turbolinks
//= require bootstrap
//= require cookiesManager


function crearCookie(name,value,days) {
	if (days) {
	    var date = new Date();
	    date.setTime(date.getTime()+(days*24*60*60*1000));
	    var expires = "; expires="+date.toGMTString();
	}
	else var expires = "";
	document.cookie = name+"="+value+expires+"; path=/";
}

function eliminarCookie(name) {
  crearCookie(name,"",-1);
}

function myFunctionJS(){	


	$('#importform').on("ajax:remotipartComplete", function(e, data){
	  console.log(e, data)
	});

	// Get the modal
	var modal = document.getElementById('myModal1');

	// Get the button that opens the modal
	var btn = document.getElementById("btnMyModal");

	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];

	var btnClose = document.getElementById("btnCloseModal");

	// When the user clicks on the button, open the modal 
	modal.style.display = "block";

	// When the user clicks on <span> (x), close the modal
	span.onclick = function() {
	    modal.style.display = "none";
	}

	btnClose.onclick = function(){
		modal.style.display = "none";
	}

	$('.container').on('hidden', '#myModal3', function (e) {
	  e && e.delegateTarget.focus();
	});
}

function changeModalWindow(idModalWindowParent, idModalWindow){
	
	document.getElementById(idModalWindowParent).style.display = "none";
	document.getElementById(idModalWindow).style.display = "block";

}

