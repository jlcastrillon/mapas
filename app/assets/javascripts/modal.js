//= require jquery
//= require jquery_ujs
//= require angular
//= require angular-animate
//= require turbolinks
//= require bootstrap


$('#import').bind('ajax:success', function() {
   $(this).fadeOut();
   alert('ajax request');
});

function myFunctionJS(){	

	//Se habilita el boton solamente cuando se ha importado algun fichero
	var fileInput = document.getElementById('file');
	fileInput.accept=".csv,.xls,.xlsx,.xml";

	var importButton = document.getElementById('importfile');
	importButton.disabled = true;

	fileInput.onchange = function() {
	    if(fileInput.value != null){
	    	importButton.disabled = false;
	    }else{
	    	importButton.disabled = true;
	    }
	}

	$("#uploadForm").on('submit',function() {
	    alert('Complete!');
	});

	$( "uploadForm" ).submit(function( event ) {
	  event.preventDefault();
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
}

function changeModalWindow(idModalWindowParent, idModalWindow){
	document.getElementById(idModalWindowParent).style.display = "none";
	document.getElementById(idModalWindow).style.display = "block";
}

