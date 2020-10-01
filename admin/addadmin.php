<?php include("header.php"); ?>
  <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
  <style>
    #myDiv
    {
      border: 2px solid lightgray;
      height:210px;
      width:210px;
      float: left;
    }
  </style>
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Admins
        <small>Admin Panel</small>
      </h1>
      <ol class="breadcrumb">
        <li><a href="dashboard.php"><i class="fa fa-home"></i> Home</a></li>
        <li class="active">Add Admin</li>
      </ol>
          <?php
            if(isset($_GET['flag']))
            {
                if($_GET['flag']==1)
                {
                   echo "<center><font style='color:green; text-align:center;font-size:18px'><b><u><i>Admin Added Successfully</i></u></b></font></center><br/>";
                }
            }
          ?>
          <?php
          if(isset($_GET['xyz']))
          {
            if($_GET['xyz']==1)
            {
                echo "<center><font style='color:blue; text-align:center;font-size:18px'><b><u><i>Email Id or Phone No. Already Exists</i></u></b></font></center><br/>";
            }
          }
          ?>
    </section>
    <!-- Main content -->
    <section class="content">
      <!-- Small boxes (Stat box) -->
       <div class="row">
	   <div class="box box-warning">
            <div class="box-header with-border">
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <form role="form" method="POST" action="insertadmin.php" enctype="multipart/form-data" >
                <!-- text input -->
                <div class="form-group">
                  <label>Name</label>
                  <input type="text" name="name" class="form-control" placeholder="Enter name ..." required />
                </div>
				<div class="form-group">
                  <label>Email</label>
                  <input type="email" name="email" class="form-control" placeholder="Enter Email ..." required />
                </div>
				<div class="form-group">
                  <label>Phone No</label>
                  <input type="text" name="phone" class="form-control" placeholder="Enter Phone no ..." pattern="[6789][0-9]{9}" oninput="setCustomValidity('')" title='Enter 10 Digit mobile number starting with 6 or 7 or 8 or 9' required />
                </div>
				<div class="form-group">
                  <label>Password</label>
                  <input type="password"pattern=.{8,12} title="Enter 8 to 12 characters" name="pass1" id ="pass1" class="form-control" placeholder="Enter Password ..." required />
                </div>
				<div class="form-group">
                  <label>Re-Enter Password</label>
                  <input type="password" name="pass2" pattern=.{8,12} title="Enter 8 to 12 characters" id="pass2" class="form-control" placeholder="Re-Enter Password ..." oninput="check(this)" required />
					<script language='javascript' type='text/javascript'>
						function check(input) {
							if (input.value != document.getElementById('pass1').value) {
								input.setCustomValidity('Password Must be Matching.');
							} else {
								// input is valid -- reset the error message
								input.setCustomValidity('');
							}
						}
					</script>
                </div>
				<div class="form-group" >
                <label>Birth Date:</label>

					<div class="input-group date">
					<div class="input-group-addon">
						<i class="fa fa-calendar"></i>
					</div>
					<input type="date" name="dob" class="form-control pull-right" id="datepicker" autocomplete="off" required />
					</div>
					<!-- /.input group -->
				</div>
                <!-- textarea -->
                <div class="form-group">
                  <label>Address</label>
                  <textarea class="form-control" rows="3" name="address" placeholder="Enter Address..." required></textarea>
                </div>
                <!-- input states -->
                <!-- radio -->
                <div class="form-group">
				<label>Gender</label>
                  <div class="radio">
                    <label>
                      <input type="radio" name="gender" id="optionsRadios1" value="male" checked>
							Male
					 </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="gender" id="optionsRadios2" value="female">
							Female
					  </label>
                  </div>
                </div>
                <!-- select -->
                <div class="form-group">
                  <label>User Type</label>
                  <select class="form-control" name="user_type" >
                    <option value="1" selected>Admin</option>                   
                  </select>
                </div>
				<div class="form-group">
                  <label>Add Profile Pic</label>
				  
                  <input type="file" id="profile-img" name="image" accept="image/png,image/jpg,image/jpeg" class="form-control" placeholder="">
					<div id="myDiv" align="center"> 
						<!--<p class="square"> -->
					  <img src="../photos/default.png" id="profile-img-tag" alt="Profile Pic" width="200px" height="200px" style="border:5px solid #ffffff; background-color: #ffffff;" />
						<script type="text/javascript">
							function validate()
      {
		  var name = document.myForm.fullname.value;
		  var email = document.myForm.email.value;
		  var pass = document.myForm.password.value;
	      
	      if(name == "")
		 {
		 document.getElementById("name").innerHTML="Please Fill Name Filed.";
		 document.myForm.fullname.focus() ;
            return false;
         }
		 else{
			 document.getElementById("name").innerHTML="";
		 }
		 
		 if( email == "" )
         {
            document.getElementById("email").innerHTML="Please Fill the username field";
            document.myForm.email.focus() ;
            return false;
         }
		 else{
			document.getElementById("email").innerHTML=""; 
		 }
		 if((email.length <= 5) || (email.length > 25) )
		 {
			document.getElementById("email").innerHTML="user length must be between 5 and 25";
            document.myForm.email.focus() ;
            return false;
		 }
		 else{
			document.getElementById("email").innerHTML=""; 
		 }
		 if(!isNaN(email))
		 {
			document.getElementById("email").innerHTML="Only character allowed";
            document.myForm.email.focus() ;
            return false;
		 }
		 else{
			document.getElementById("email").innerHTML=""; 
		 }
		 if(email.indexOf('@') <= 0)
		 {
			document.getElementById("email").innerHTML="@ Invalid Position ";
            document.myForm.email.focus() ;
            return false;
		 }
		 else{
			document.getElementById("email").innerHTML=""; 
		 }
		 if((email.charAt(email.length-4)!='.') && (email.charAt(email.length-3)!='.'))
		 {
			document.getElementById("email").innerHTML=". Invalid Position ";
            document.myForm.email.focus() ;
			 return false;
		 }
		 else
		 {
			 document.getElementById("email").innerHTML="";
		 }
		 
		if( pass == "" )
         {
            document.getElementById("password").innerHTML="Please Fill the password field";
            document.myForm.password.focus() ;
            return false;
         }
		 else{
			document.getElementById("password").innerHTML=""; 
		 }
		 if((pass.length <= 5) || (pass.length > 20) )
		 {
			document.getElementById("password").innerHTML="password length must be between 5 and 20";
            document.myForm.password.focus() ;
            return false;
		 }	
		else{
			document.getElementById("password").innerHTML=""; 
		 }
							function readURL(input)
                            {
								if (input.files && input.files[0]) 
                                {
									var reader = new FileReader();
									reader.onload = function (e) 
                                    {
										$('#profile-img-tag').attr('src', e.target.result);
									}
									reader.readAsDataURL(input.files[0]);
								}
							}
							$("#profile-img").change(function()
                            {
								readURL(this);
							});
						</script>
					</div>	
				</div>
              <div class="box-footer" style="float:right;">
                <input type="submit" name="submit" value="ADD" class="btn btn-primary">
              </div>
              </form>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
      <!-- /.row (main row) -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  <?php include("footer.php"); ?> 
  
