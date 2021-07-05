<%@ include file="cekSession.jsp" %>
<%@ include file="koneksi.jsp" %>

<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Tugas JSP</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <script src="jquery.min.js"></script>
       <script src="bootstrap.min.js"></script>
       <link rel="stylesheet" href="css/bootstrap.min.css">
       <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
       </head>

    <body>
        <div class="container">
        <div class="text-center">
            <h2><b>Input Data Anggota</b></h2>
        </div>
            <form class="form-horizontal" method="post" action="prosesinput.jsp">

                <div class="form-group">
                    <label class="control-label col-sm-2" for="nidn">NIDN:</label>
                    <div class="col-sm-4">
                    <input type="text" class="form-control" id="nidn" placeholder="Masukkan NIDN" name="nidn">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="nama">Nama:</label>
                    <div class="col-sm-4">
                    <input type="text" class="form-control" id="nama" placeholder="Masukkan Nama" name="nama">
                    </div>
                </div>
                
                <div class="form-group">
                    <label class="control-label col-sm-2"  for="tempat">Tempat Lahir:</label>
                    <div class="col-sm-4">
                    <input type="text" class="form-control" id="tempat" placeholder="Masukkan Tempat Lahir" name="tempat">
                    </div>
                </div>
        
                <div class="form-group">
                    <label class="control-label col-sm-2" for="lahir">Tanggal Lahir:</label>
                    <div class="col-sm-4">
                    <input type="date" class="form-control" id="lahir" placeholder="Masukkan Tanggal Lahir" name="lahir">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="telepon">Nomor Telepon:</label>
                    <div class="col-sm-4"> 
                    <input type="tel" class="form-control" id="telepon" placeholder="Masukkan Nomor Telepon" name="telepon">
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="pendidikan">Pendidikan Terakhir:</label>
                    <div class="col-sm-10">
                    <select class="form-control" id="pendidikan" name="pendidikan">
                        <option value='-'>--Masukkan Pendidikan--</option>
                        <option value='S2'>S2</option>
                        <option value='S3'>S3</option>
                        <option value='lainnya'>Lainnya</option>
                    </select>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="jk">Jenis Kelamin:</label>
                    <div class="col-sm-10">
                    <label class="radio-inline" ><input type="radio" id="jk" name="jk" value="Pria"> Pria</label>
                    <label class="radio-inline"><input type="radio" id="jk" name="jk" value="Wanita"> Wanita</label>
                    </div>
                </div>

                <div class="form-group">
                    <label class="control-label col-sm-2" for="ahli">Spesialisasi:</label>
                    <div class="col-sm-10">
                        <label class="checkbox-inline" ><input type='checkbox' name='ahli1' value='Programming' id="ahli">Programming</label>
                        <label class="checkbox-inline" ><input type='checkbox' name='ahli2' value='Networking' id="ahli"> Networking</label>
                        <label class="checkbox-inline" ><input type='checkbox' name='ahli3' value='Database' id="ahli"> Database</label>
                        <label class="checkbox-inline" ><input type='checkbox' name='ahli4' value='System' id="ahli"> System</label>
                    </div>
                </div>
                
                <div class="form-group text-left">
                    <label class="control-label col-sm-2" for="email">Username:</label>
                    <div class="col-sm-10">
                    <input type="email" class="form-control" id="email" placeholder="Masukkan Username" name="email">
                    </div>
                </div>
        
                <div class="form-group">
                    <label class="control-label col-sm-2" for="pswd">Password:</label>
                    <div class="col-sm-4"> 
                    <input type="password" class="form-control" name="pswd" placeholder="Input Password">
                    </div>
                </div>
        
                <div class="form-group"> 
                    <label class="control-label col-sm-2" for="tg">Tunjangan Golongan:</label>
                    <div class="col-sm-10"> 
                    <label class="radio-inline"><input type="radio" id="tg" name="tg" value="3A"> 3A</label>
                    <label class="radio-inline"><input type="radio" id="tg" name="tg" value="3B"> 3B</label>
                    <label class="radio-inline"><input type="radio" id="tg" name="tg" value="3C"> 3C</label>
                    <label class="radio-inline"><input type="radio" id="tg" name="tg" value="4A"> 4A</label>
                    <label class="radio-inline"><input type="radio" id="tg" name="tg" value="4B"> 4B</label>
                    <label class="radio-inline"><input type="radio" id="tg" name="tg" value="4C"> 4C</label>
                    </div>
                </div>
        
                <div class="form-group"> 
                    <label class="control-label col-sm-2" for="tp">Tunjangan Pangkat:</label>
                    <div class="col-sm-10"> 
                    <label class="radio-inline"><input type="radio" id="tp" name="tp" value="AA"> AA</label>
                    <label class="radio-inline"><input type="radio" id="tp" name="tp" value="L"> L</label>
                    <label class="radio-inline"><input type="radio" id="tp" name="tp" value="LK"> LK</label>
                    <label class="radio-inline"><input type="radio" id="tp" name="tp" value="GB"> GB</label>
                    </div>
                </div>
        
                <div class="form-group"> 
                    <label class="control-label col-sm-2" for="pengalaman">Pengalaman Kerja:</label>
                    <div class="col-sm-10"> 
                    <textarea class="form-control" rows="5" style="resize: none" id="pengalaman" name="pengalaman"></textarea>
                    </div>
                </div>
        
                <div class="form-group">
                    <label class="control-label col-sm-2" for="gp">Gaji Pokok:</label>
                    <div class="col-sm-4">
                    <input type="text" class="form-control" id="gp" name="gp">
                    </div>
                </div>

                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-success" name="submit"><span class="glyphicon glyphicon-floppy-save"></span> Submit</button>
                        <button type="reset" class="btn btn-warning"><span class="glyphicon glyphicon-repeat"></span> Reset</button>
                        <a href="lihat.jsp" class="btn btn-info"><span class="glyphicon glyphicon-eye-open"> Lihat</a>
                        <a href="logoutSession.jsp" class="btn btn-primary"><span class="glyphicon glyphicon-log-out"> Logout</a>
                        </div>
                    </div>
                </div>
        </div>
        </form>
        <div class="col-sm-10 col-sm-offset-1">
            </div>
                <div class="table-responsive col-sm-10 col-sm-offset-1">
                    <div class="text-center">
                    <h2><b>List Data Anggota</b></h2>
                    </div>
                    <table class="table table-striped ">
                        <thead>
                            <tr>
                                <th>NIDN</th>
                                <th>Nama</th>
                                <th>Tempat Lahir</th>
                                <th>Tanggal Lahir</th>
                                <th>Nomor Telepon</th>
                                <th>Pendidikan Terakhir</th>
                                <th>Jenis Kelamin</th>
                                <th>Spesialisasi</th>
                                <th>Username</th>
                                <th>Password</th>
                                <th>Golongan</th>
                                <th>Pangkat</th>
                                <th>Pengalaman</th>
                                <th>Gaji Pokok</th>
                                <th>Total Gaji</th>
                                <th> </th>
                            </tr>
                        </thead>
                        <tbody>
                            <% ResultSet hasil=null; 
                            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost/member","root","");
                                Statement stm=koneksi.createStatement(); 
                                hasil=stm.executeQuery("SELECT COUNT(*) AS jum FROM tabel_member ORDER BY nama"); 
                                hasil.next(); 
                                int rowCount=hasil.getInt("jum"); 
                                if (rowCount==0) { 
                            %>
                                <tr>
                                    <td colspan="8" class="danger">Data Anggota Masih Kosong</td>
                                </tr>
                            <%  } 
                                else { 
                                    stm=koneksi.createStatement(); 
                                    hasil=stm.executeQuery("SELECT * FROM tabel_member ORDER BY nama"); 
                                    int i=0; 
                                    while (hasil.next()) { 
                                        i++; 
                                        String nidn=hasil.getString("nidn"); 
                                        String nama=hasil.getString("nama");
                                        String tempat=hasil.getString("tempat"); 
                                        String lahir=hasil.getString("lahir");
                                        String telepon=hasil.getString("telepon");
                                        String pendidikan=hasil.getString("pendidikan");
                                        String jenis=hasil.getString("jenis_kelamin"); 
                                        String keahlian=hasil.getString("keahlian"); 
                                        String email=hasil.getString("username");
                                        String pswd=hasil.getString("password");  
                                        String tg=hasil.getString("tunjangan_golongan"); 
                                        String tp=hasil.getString("tunjangan_pangkat"); 
                                        String pengalaman=hasil.getString("pengalaman"); 
                                        String gp=hasil.getString("gaji_pokok");    
                                        String total=hasil.getString("total");                                     
                            %>
                                    <tr>
                                        <td>
                                            <%=nidn%>
                                        </td>
                                        <td>
                                            <%=nama%>
                                        </td>
                                        <td>
                                            <%=tempat%>
                                        </td>
                                        <td>
                                            <%=lahir%>
                                        </td>
                                        <td>
                                            <%=telepon%>
                                        </td>
                                        <td>
                                            <%=pendidikan%>
                                        </td>
                                        <td>
                                            <%=jenis%>
                                        </td>
                                        <td>
                                            <%=keahlian%>
                                        </td>
                                        <td>
                                            <%=email%>
                                        </td>
                                        <td>
                                            <%=pswd%>
                                        </td>
                                        <td>
                                            <%=tg%>
                                        </td>
                                        <td>
                                            <%=tp%>
                                        </td>
                                        <td>
                                            <%=pengalaman%>
                                        </td>
                                        <td>
                                            <%=gp%>
                                        </td>
                                        <td>
                                            <%=total%>
                                        </td>
                                        <td><a href='edit.jsp?nidn=<%=nidn%>'><button type='button' class='btn btn-sm btn-info'><span class="glyphicon glyphicon-edit"></span> Edit</button></a></td>
                                        <td><a href='hapus.jsp?nidn=<%=nidn%>'><button type='button' class='btn btn-sm btn-danger'><span class="glyphicon glyphicon-trash"></span> Hapus</button></a></td>
                                    </tr>
                                    <% } 
                                } %>
                        </tbody>
                    </table>
                </div>
                </div>
</body>
</html>