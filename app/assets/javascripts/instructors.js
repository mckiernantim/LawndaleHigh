// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.

$(document).ready(function() {
    $('.deleteInstructor').click(function (e){
        console.log("CLICKED IT BRUH!!!!")
       
        e.preventDefault();
         // ^^^^^ js thing that stops the normal action of something
         let deletionUrl = e.target.getAttribute('href');
        $.ajax({
            method: 'DELETE',
            url: deletionUrl,
            success: function (data){
                $(e.target).parents('.instructor').remove();
                toastr.success('your Instructor has been successfully deleted');
            }


        });
       
        
    });
	
})