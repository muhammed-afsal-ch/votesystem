<?php
  	session_start();
  	if(isset($_SESSION['admin'])){
    	header('location:home.php');
  	}
?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition login-page">
<style>
	*{
    margin: 0;
    padding: 0;
    box-sizing: border-box;
    color: white;
}
.container{
    color: white;
    z-index: 1;
    height:calc(100vh - 40px);
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction: column;
}
.login-page{
    display: flex;
    align-items: center;
    justify-content: center;
    flex-direction:column;
    background-image: url('bg.jpg');
    background-size: cover;
    background-repeat: no-repeat;
    /* filter: blur(4px);
    -webkit-filter: blur(4px); */
}
.login-box-body{
    /* filter: blur(4px);
    -webkit-filter: blur(4px); */
    /* From https://css.glass */
    backdrop-filter: blur(16px) saturate(180%);
    -webkit-backdrop-filter: blur(16px) saturate(180%);
    background-color: rgba(3, 4, 3, 0.502);
    border-radius: 12px;
    border: 1px solid rgba(255, 255, 255, 0.125);
    box-shadow: 0 4px 8px  rgba(255, 255, 255, 0.194)
}
.form-control{
    border-radius: 50px;
    transition: all 300ms linear;
    color: black;
    border: 1px solid rgb(176, 174, 174);
    height: 45px;
    font-weight: 400;
}
.form-control:focus{
    background: transparent;
    border: 1px solid white;
    color: white;
    font-weight: 600;
}
.form-control-feedback{
    margin-top: 5px;
    margin-right: 5px;
}
.login-btn{
    width: 100%;
    background-color: #28a745;
    outline: none;
    transition: all 100ms ease-in-out;
    border: none;
    margin-left: 5px;
    height: 35px;
    font-weight: 600;
    color: white;
}
.login-btn:hover{
    background-color: #0a8e2b;

}
.form-control::placeholder { 
    color: rgb(88, 87, 87);
}
.form-control:focus::placeholder { 
    color: rgb(255, 251, 251);
}
</style>
<div class="container">
  	<div class="login-box-body">
	<div class="login-box">
  	<div class="login-logo">
  		<b>Voting System</b>
  	</div>
    	<p class="login-box-msg">Sign in to start your session</p>

    	<form action="login.php" method="POST">
      		<div class="form-group has-feedback">
        		<input type="text" class="form-control" name="username" placeholder="Username" required>
        		<span class="glyphicon glyphicon-user form-control-feedback"></span>
      		</div>
          <div class="form-group has-feedback">
            <input type="password" class="form-control" name="password" placeholder="Password" required>
            <span class="glyphicon glyphicon-lock form-control-feedback"></span>
          </div>
      		<div class="row">
    			<div class="col-xs-4">
          			<button type="submit" class=" login-btn btn btn-primary btn-block btn-flat" name="login"><i class="fa fa-sign-in"></i> Sign In</button>
        		</div>
      		</div>
    	</form>
  	</div>
</div>
  	<?php
  		if(isset($_SESSION['error'])){
  			echo "
  				<div class='callout callout-danger text-center mt20'>
			  		<p>".$_SESSION['error']."</p> 
			  	</div>
  			";
  			unset($_SESSION['error']);
  		}
  	?>
</div>
	
<?php include 'includes/scripts.php' ?>
</body>
<footer>
<p><center>Login Details Are Provided Inside README.txt File<center></p></footer>
</html>