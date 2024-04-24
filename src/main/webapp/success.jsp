<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file = "plugins.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Modal Example</title>
    <!-- Bootstrap CSS -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        .modal#statusSuccessModal .modal-content{
	border-radius: 30px;
}
.modal#statusSuccessModal .modal-content svg {
	width: 100px; 
	display: block; 
	margin: 0 auto;
}
.modal#statusSuccessModal .modal-content .path {
	stroke-dasharray: 1000; 
	stroke-dashoffset: 0;
}
.modal#statusSuccessModal .modal-content .path.circle {
	-webkit-animation: dash 0.9s ease-in-out; 
	animation: dash 0.9s ease-in-out;
}
.modal#statusSuccessModal .modal-content .path.line {
	stroke-dashoffset: 1000; 
	-webkit-animation: dash 0.95s 0.35s ease-in-out forwards; 
	animation: dash 0.95s 0.35s ease-in-out forwards;
}
.modal#statusSuccessModal .modal-content .path.check 
 {
	stroke-dashoffset: -100; 
	-webkit-animation: dash-check 0.95s 0.35s ease-in-out forwards; 
	animation: dash-check 0.95s 0.35s ease-in-out forwards;
}

@-webkit-keyframes dash { 
	0% {.
		stroke-dashoffset: 1000;
	}
	100% {
		stroke-dashoffset: 0;
	}
}
@keyframes dash { 
	0% {
		stroke-dashoffset: 1000;
	}
	100%{
		stroke-dashoffset: 0;
	}
}
@-webkit-keyframes dash { 
	0% {
		stroke-dashoffset: 1000;
	}
	100% {
		stroke-dashoffset: 0;
	}
}
@keyframes dash { 
	0% {
		stroke-dashoffset: 1000;}
	100% {
		stroke-dashoffset: 0;
	}
}
@-webkit-keyframes dash-check { 
	0% {
		stroke-dashoffset: -100;
	}
	100% {
		stroke-dashoffset: 900;
	}
}
.purple{
		background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(68,9,121,1) 50%, rgba(0,212,255,1) 100%);
	}
	
@keyframes dash-check {
	0% {
		stroke-dashoffset: -100;
	}
	100% {
		stroke-dashoffset: 900;
	}
}
.box00{
	width: 100px;
	height: 100px;
	border-radius: 50%;
}

    </style>
</head>
<body>
<div class="container-fluid p-0 m-0">
<%@include file="navigation.jsp" %>
</div>

    <div class="container p-5">
        <div class="row">
            <!-- Success Modal -->
            <div class="modal fade" id="statusSuccessModal" tabindex="-1" role="dialog" data-bs-backdrop="static" data-bs-keyboard="false"> 
                <div class="modal-dialog modal-dialog-centered modal-sm" role="document"> 
                    <div class="modal-content"> 
                        <div class="modal-body text-center p-lg-4"> 
                            <svg version="1.1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 130.2 130.2">
                                <circle class="path circle" fill="none" stroke="#198754" stroke-width="6" stroke-miterlimit="10" cx="65.1" cy="65.1" r="62.1" />
                                <polyline class="path check" fill="none" stroke="#198754" stroke-width="6" stroke-linecap="round" stroke-miterlimit="10" points="100.2,40.2 51.5,88.8 29.8,67.5 " /> 
                            </svg> 
                            <h4 class="text-success mt-3">Oh Yeah!</h4> 
                            <p class="mt-3">You have successfully logged in.</p>
                            <div class="button">
                            <button type="button" class="btn btn-sm mt-3 btn-success"  onclick = "redirectToAddNotes()" >Ok</button> 
                            </div>
                        </div> 
                    </div> 
                </div> 
            </div>
        </div>
    </div>

    <!-- Bootstrap Bundle with Popper -->
    <script>
        // jQuery code to show the modal on page load
        $(document).ready(function() {
            $('#statusSuccessModal').modal('show');
        });
        
        function redirectToAddNotes() {
            window.location.href = "addnotes.jsp";
        }
    </script>
    
</body>
</html>
