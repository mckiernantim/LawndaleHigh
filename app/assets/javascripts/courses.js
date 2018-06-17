// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.


$(document).ready(function() {
    $('.deleteCourse').click(function (e){
        console.log("CLICKED IT BRUH!!!!")
       
        e.preventDefault();
         // ^^^^^ js thing that stops the normal action of something
         let deletionUrl = e.target.getAttribute('href');
        $.ajax({
            method: 'DELETE',
            url: deletionUrl,
            success: function (data){
                $(e.target).parents('.course').remove();
                toastr.success('your Course has been successfully deleted');
            }


        });
       
        
    });
	
})