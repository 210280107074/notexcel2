<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="plugins.jsp"%>
<title>Add notes</title>

<style>
.custom-shape-divider-bottom-1713469035 {
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    overflow: hidden;
    line-height: 0;
    transform: rotate(180deg);
}

.custom-shape-divider-bottom-1713469035 svg {
    position: relative;
    display: block;
    width: calc(113% + 1.3px);
    height: 112px;
}

.custom-shape-divider-bottom-1713469035 .shape-fill {
background:);
    fill: blue;
    opacity:0.3;
}
.a{
display:grid;
grid-template-columns: repeat(2, 1fr);
background-color:white;
}
.container-fluid p-0 m-0{
 margin-left: 15%;
}
.vasu{
 margin-left: 20%;
 margin-top: 3%;
height:700px;
background-image:url(ram-removebg-preview.png);
background-repeat:no-repeat;

}
    body {
        margin: 0;
        padding: 0;
       
        height: 100vh; /* Set height of body to full viewport height */
        width: 100vw; /* Set width of body to full viewport width */
        overflow: hidden; /* Hide overflow to prevent scrollbars */
    }

    .purple {
        background: rgb(2, 0, 36);
        background: linear-gradient(90deg, rgba(2, 0, 36, 1) 0%, rgba(68, 9, 121, 1) 50%, rgba(0, 212, 255, 1) 100%);
    }

    /* Add padding to the form container */
    .form-container {
   
        padding: 30px;
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
       
        width: 400px;
        color:white;
        margin-left: 200px; 
        margin-top: 70px; /* Adjust this value to vertically center the container */
       background: rgb(2,0,36);
       font-weight:bolder;
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(68,9,121,1) 0%, rgba(0,212,255,1) 100%); /* Apply a blur effect */
        border-radius: 20px;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    }

    label {
        margin-top: 20px;
    }

    .form-control {
        width: 300px; /* Adjust this value as needed */
    } 

    form {
        margin: 40px;
    }
    .image-container {
        display: flex;
        justify-content: space-between; /* Arrange items with space in between */
        width: 400px; /* Match width of the form container */
        margin-top: 20px; /* Adjust this value for spacing */
    }
   
</style>
</head>
<body>
<%@include file="navigation.jsp" %>
<div class="a">
<div class="container-fluid p-0 m-0">
    <div class="container-fluid p-0 m-0">
        <div class="form-container">
            <h2 style="font-weight:bolder;font-size:44px">Login</h2>
            <form action="verifyUser" method="post">
                <div class="form-group">
                    <label for="user">User name : </label> 
                    <input
                        type="text" class="form-control" name="uname" id="username"
                        aria-describedby="username" placeholder="Enter Username"> <small
                        id="emailHelp" class="form-text text-muted" ></small>
                </div>
                <div class="form-group">
                    <label for="exampleInputPassword1">Password</label> 
                    <input
                        type="password" class="form-control" name="pass" id="exampleInputPassword1"
                        placeholder="Password"><br>
                </div>
                <button type="submit" class="btn btn-primary" style="color:darkwhite;font-weight:bold;background-color:blue;opacity:0.8">Submit</button>
            </form>
        </div>
    </div>
   
</div>
 <div class="vasu">
   
    </div>
</div>
<div class="custom-shape-divider-bottom-1713469035">
    <svg data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 1200 120" preserveAspectRatio="none">
        <path d="M0,0V46.29c47.79,22.2,103.59,32.17,158,28,70.36-5.37,136.33-33.31,206.8-37.5C438.64,32.43,512.34,53.67,583,72.05c69.27,18,138.3,24.88,209.4,13.08,36.15-6,69.85-17.84,104.45-29.34C989.49,25,1113-14.29,1200,52.47V0Z" opacity=".25" class="shape-fill"></path>
        <path d="M0,0V15.81C13,36.92,27.64,56.86,47.69,72.05,99.41,111.27,165,111,224.58,91.58c31.15-10.15,60.09-26.07,89.67-39.8,40.92-19,84.73-46,130.83-49.67,36.26-2.85,70.9,9.42,98.6,31.56,31.77,25.39,62.32,62,103.63,73,40.44,10.79,81.35-6.69,119.13-24.28s75.16-39,116.92-43.05c59.73-5.85,113.28,22.88,168.9,38.84,30.2,8.66,59,6.17,87.09-7.5,22.43-10.89,48-26.93,60.65-49.24V0Z" opacity=".5" class="shape-fill"></path>
        <path d="M0,0V5.63C149.93,59,314.09,71.32,475.83,42.57c43-7.64,84.23-20.12,127.61-26.46,59-8.63,112.48,12.24,165.56,35.4C827.93,77.22,886,95.24,951.2,90c86.53-7,172.46-45.71,248.8-84.81V0Z" class="shape-fill"></path>
    </svg>
</div>
</body>
</html>