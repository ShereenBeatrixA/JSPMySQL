<%@ include file="koneksi.jsp" %>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Perancangan Sistem 4</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>


<div class="container col-5">
  <div class="card-text">
    <div class="card" style="width:500px">
      <div class="card-body text-center">
        <h3 class="card-title">Login</h3>
        <%
        Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/member","root","");
        Statement stm=koneksi.createStatement();

    if(request.getParameter("login") != null){
        String user = request.getParameter("user");
        String pass = request.getParameter("pass");

        String result = "SELECT COUNT(*) AS count FROM login WHERE user='"+user+"' AND pass='"+pass+"';";
        ResultSet hasil = stm.executeQuery(result);

        hasil.next();
        int rowCount = hasil.getInt("count");

        if(rowCount > 0){
            session.setAttribute("user", user);
            session.setAttribute("pass", pass);
            %>
            <script>
			    alert('Berhasil Login');
			    document.location='input.jsp';
		    </script>
		<%
        }
        else{
            out.println ("Username dan Password Salah");
        }
    }
        %>
         <form method='post' action='loginSession.jsp'>
            <div class="formgroup">
                <label class="control-label col-sm-12" for="username">Username:</label>
                <div class="col-sm-12">
                <input type="text" class="form-control" name="user" placeholder="Input Username" autofocus>
          </div>
          <div class="formgroup">
                <label class="control-label col-sm-12" for="password">Password:</label>
                <div class="col-sm-12"> 
                <input type="password" class="form-control" name="pass" placeholder="Input Password">
                </div>
          </div>
          <br>
            <button type="submit" name="login" class="btn btn-primary"><span class="glyphicon glyphicon-log-in"></span> Login</button>
            <p>Belum Punya Akun ? <a href="register.jsp"> Register</a></p>
          </form>

          

      </div>
    </div>
  </div>
</div>
</div>

 <Link rel="stylesheet" href="css/bootstrap.min.css" />
</head>
<body>
  
<script src="js/bootstrap.min.js"></script>
</body>
</html>