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
        <h3 class="card-title">Register</h3>
        <%
        if(request.getParameter("buat") !=null) {
            Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/member","root","");
            String userRegis=request.getParameter("userRegis");
            String passRegis=request.getParameter("passRegis");
            String confirmPass=request.getParameter("confirmPass");
            
            boolean berhasil=true;
        
            if(passRegis.equals(confirmPass)){
                String query="INSERT INTO login (user, pass) VALUES('"+userRegis+"','"+passRegis+"')" ;
                try{
                    Statement stm=koneksi.createStatement(); stm.executeUpdate(query);
                }
                catch(Exception ex) {
                    out.println("Kesalahan " + ex);
                    berhasil = false;
                }
                
                if (berhasil){
                %>
                    <script>
                        alert('Berhasil Buat Akun');
                        document.location='loginSession.jsp';
                    </script>
                <%
                }
                else {
                    out.println ("Gagal membuat akun!");
                }
            }
            else {
                out.println ("Password dan Confirm Password harus sama!");
            }
        }
        %>
         <form method='post' action='register.jsp'>
            <div class="formgroup">
                <label class="control-label col-sm-12" for="username">Username:</label>
                <div class="col-sm-12">
                <input type="text" class="form-control" name="userRegis" placeholder="Masukkan Username" autofocus>
          </div>
          <div class="formgroup">
                <label class="control-label col-sm-12" for="password">Password:</label>
                <div class="col-sm-12"> 
                <input type="password" class="form-control" name="passRegis" placeholder="Masukkan Password">
                </div>
          </div>

          <div class="formgroup">
            <label class="control-label col-sm-12" for="password">Konfirmasi Password:</label>
            <div class="col-sm-12"> 
            <input type="password" class="form-control" name="confirmPass" placeholder="Masukkan Ulang Password">
            </div>
      </div>
          <br>
            <button type="submit" name="buat" class="btn btn-primary"><span class="glyphicon glyphicon-log-in"></span> Register</button>
            <p>Sudah Punya Akun ? <a href="loginSession.jsp"> Login</a></p>
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