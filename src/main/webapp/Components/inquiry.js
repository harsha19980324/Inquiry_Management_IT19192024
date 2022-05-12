$(document).ready(function()
{
$("#alertSuccess").hide();
$("#alertError").hide();
});

$(document).on("click", "#btnSave", function(event)
{ 
// Clear alerts---------------------
 $("#alertSuccess").text(""); 
 $("#alertSuccess").hide(); 
 $("#alertError").text(""); 
 $("#alertError").hide(); 
// Form validation-------------------
var status = validateInquiryForm(); 
if (status != true) 
 { 
 $("#alertError").text(status); 
 $("#alertError").show(); 
 return; 
 } 
// If valid------------------------
var type = ($("#hidInquiryIDSave").val() == "") ? "POST" : "PUT"; 
 $.ajax( 
 { 
 url : "InquirysAPI", 
 type : type, 
 data : $("#formInquiry").serialize(), 
 dataType : "text", 
 complete : function(response, status) 
 { 
 onInquirySaveComplete(response.responseText, status); 
 } 
 }); 
});

function onInquirySaveComplete(response, status)
{ 
if (status == "success") 
 { 
 var resultSet = JSON.parse(response); 
 if (resultSet.status.trim() == "success") 
 { 
 $("#alertSuccess").text("Successfully saved."); 
 $("#alertSuccess").show(); 
 $("#divInquiryGrid").html(resultSet.data); 
 } else if (resultSet.status.trim() == "error") 
 { 
 $("#alertError").text(resultSet.data); 
 $("#alertError").show(); 
 } 
 } else if (status == "error") 
 { 
 $("#alertError").text("Error while saving."); 
 $("#alertError").show(); 
 } else
 { 
 $("#alertError").text("Unknown error while saving.."); 
 $("#alertError").show(); 
 }
$("#hidInquiryIDSave").val(""); 
$("#formInquiry")[0].reset(); 
}


// UPDATE==========================================
$(document).on("click", ".btnUpdate", function(event)
		{ 
		$("#hidInquiryIDSave").val($(this).data("inquiryid")); 
		 $("#inquiryType").val($(this).closest("tr").find('td:eq(0)').text()); 
		 $("#inquiryEmail").val($(this).closest("tr").find('td:eq(1)').text()); 
		 $("#inquiryName").val($(this).closest("tr").find('td:eq(2)').text()); 
		 $("#inquiryMsg").val($(this).closest("tr").find('td:eq(3)').text()); 
		});




$(document).on("click", ".btnRemove", function(event)
		{ 
		 $.ajax( 
		 { 
		 url : "InquirysAPI", 
		 type : "DELETE", 
		 data : "inquiryID=" + $(this).data("inquiryid"),
		 dataType : "text", 
		 complete : function(response, status) 
		 { 
		 onInquiryDeleteComplete(response.responseText, status); 
		 } 
		 }); 
		});
		
function onInquiryDeleteComplete(response, status)
{ 
if (status == "success") 
 { 
 var resultSet = JSON.parse(response); 
 if (resultSet.status.trim() == "success") 
 { 
 $("#alertSuccess").text("Successfully deleted."); 
 $("#alertSuccess").show(); 
 $("#divInquiryGrid").html(resultSet.data); 
 } else if (resultSet.status.trim() == "error") 
 { 
 $("#alertError").text(resultSet.data); 
 $("#alertError").show(); 
 } 
 } else if (status == "error") 
 { 
 $("#alertError").text("Error while deleting."); 
 $("#alertError").show(); 
 } else
 { 
 $("#alertError").text("Unknown error while deleting.."); 
 $("#alertError").show(); 
 } 
}


// CLIENT-MODEL================================================================
function validateInquiryForm()
{
	// TYPE
	if ($("#inquiryType").val().trim() == "")
	{
	return "Insert Type correctly.";
	}
	// Email
	if ($("#inquiryEmail").val().trim() == "")
	{
	return "Insert Email.";
}


// Name------------------------
if ($("#inquiryName").val().trim() == ""){
	
	return "Insert Inquiry Name.";
}

if ($("#inquiryMsg").val().trim() == ""){
	
	return "Insert Inquiry Message.";
}

	return true;
}