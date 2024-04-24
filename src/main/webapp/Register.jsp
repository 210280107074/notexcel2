<!doctype html>
  <%@include file = "plugins.jsp" %>
<html lang="en">
  <head>
	<style>
	.purple{
		background: rgb(2,0,36);
background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(68,9,121,1) 50%, rgba(0,212,255,1) 100%);
	}
	@import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');
*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: 'Poppins', sans-serif;
}

.wrapper{
 

  position: relative;
  max-width: 430px;
  width: 100%;
  background: #fff;
  padding: 34px;
  border-radius: 6px;
  box-shadow: 0 5px 10px rgba(0,0,0,0.2);
  background: linear-gradient(90deg, rgba(2,0,36,1) 0%, rgba(68,9,121,1) 0%, rgba(0,212,255,1) 100%);
 
}
.wrapper h2{
  position: relative;
  font-size: 22px;
  
   color:white;
   font-weight: bolder;
}
.wrapper h2::hover{
  content: '';
  position: absolute;
  left: 0;
  bottom: 0;
  height: 3px;
  width: 28px;
  border-radius: 12px;
  background: #4070f4;
}
.wrapper form{
  margin-top: 30px;
  justify-content:center;
align-items:center;
}
.wrapper form .input-box{
  height: 52px;
  margin: 18px 0;
}
form .input-box input{
  height: 100%;
  width: 100%;
  outline: none;
  padding: 0 15px;
  font-size: 17px;
  font-weight: 400;
  color: #333;
  border: 1.5px solid #C7BEBE;
  border-bottom-width: 2.5px;
  border-radius: 6px;
  transition: all 0.3s ease;
}
.input-box input:focus,
.input-box input:valid{
  border-color: #4070f4;
}
form .policy{
  display: flex;
  align-items: center;
}
form h3{
  color: #707070;
  font-size: 14px;
  font-weight: 500;
  margin-left: 10px;
}
.input-box.button input{
  color: #fff;
  letter-spacing: 1px;
  border: none;
  background: #4070f4;
  cursor: pointer;
}
.input-box.button input:hover{
  background: #0e4bf1;
}
form .text h3{
 color: #333;
 width: 100%;
 text-align: center;
}
form .text h3 a{
  color: #4070f4;
  text-decoration: none;
}
form .text h3 a:hover{
  text-decoration: underline;
}

	</style>
    <title>Hello, world!</title>
  </head>
  <body >
 
 
   <div class="wrapper">
    <h2>Registration</h2>
    <form action="Register" method = "post">
      <div class="input-box">
        <input type="text" placeholder="Enter your name" name="uname" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your email" name ="email" required>
      </div>
      <div class="input-box">
        <input type="password" placeholder="Create password" name ="password" required>
      </div>
      <div class="input-box">
        <input type="text" placeholder="Enter your city" name ="city" required>
      </div>
      <div class="input-box button">
        <input type="Submit" value="Register Now">
      </div>
      <div class="text" >
        <h3 style="color: white;">Already have an account? <a href="login.jsp" style="color: white;font-weight:bolder">Log in</a></h3>
      </div>
    </form>
  </div>
  </body>
</html>