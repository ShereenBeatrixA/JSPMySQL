<%@ include file="cekSession.jsp" %>
<%@ include file="koneksi.jsp" %>

    <% Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost/member","root",""); 
            String nidn=request.getParameter("nidn");
                ResultSet hasil=null; 
                Statement stm=koneksi.createStatement();
                hasil=stm.executeQuery("SELECT * FROM tabel_member WHERE nidn='"+nidn+"'");
                hasil.next();
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
                int gp = Integer.parseInt(hasil.getString("gaji_pokok")); 
    %>
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
                <h2><b>Edit Data Anggota</b></h2>
            </div>
                <form class="form-horizontal" method="post" action="edit.jsp">

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="nama">Nama:</label>
                        <div class="col-sm-4">
                        <input type="text" class="form-control" id="nama" placeholder="Masukkan Nama" name="nama" value="<%=nama%>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2"  for="tempat">Tempat Lahir:</label>
                        <div class="col-sm-4">
                        <input type="text" class="form-control" id="tempat" placeholder="Masukkan Tempat Lahir" name="tempat" value="<%=tempat%>">
                        </div>
                    </div>
            
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="lahir">Tanggal Lahir:</label>
                        <div class="col-sm-4">
                        <input type="date" class="form-control" id="lahir" placeholder="Masukkan Tanggal Lahir" name="lahir" value="<%=lahir%>">
                        </div>
                    </div>
    
                    <div class="form-group">
                        <label class="control-label col-sm-2" for="telepon">Nomor Telepon:</label>
                        <div class="col-sm-4"> 
                        <input type="tel" class="form-control" id="telepon" placeholder="Masukkan Nomor Telepon" name="telepon" value="<%=telepon%>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pendidikan">Pendidikan Terakhir:</label>
                        <div class="col-sm-10">
                            <select class="form-control" id="pendidikan" name="pendidikan">
                                <option value='-' <% if (pendidikan.equals("-")) out.println("selected"); %>>--Masukkan
                                    Pendidikan--</option>
                                <option value='S2' <% if (pendidikan.equals("S2")) out.println("selected"); %>>S2
                                </option>
                                <option value='S3' <% if (pendidikan.equals("S3")) out.println("selected"); %>>S3
                                </option>
                                <option value='lainnya' <% if (pendidikan.equals("lainnya")) out.println("selected"); %>
                                    >Lainnya</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="jk">Jenis Kelamin:</label>
                        <div class="col-sm-10">
                            <label class="radio-inline"><input type="radio" id="jk" name="jk" value="Pria" <% if
                                    (jenis.equals("Pria")) out.println("checked"); %>> Pria</label>
                            <label class="radio-inline"><input type="radio" id="jk" name="jk" value="Wanita" <% if
                                    (jenis.equals("Wanita")) out.println("checked"); %>>
                                Wanita</label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="ahli">Spesialisasi:</label>
                        <div class="col-sm-10">
                            <label class="checkbox-inline"><input type='checkbox' name='ahli1' value='Programming'
                                    id="ahli" <% if (keahlian.contains("Programming")) out.println("checked"); %>>
                                Programming</label>
                            <label class="checkbox-inline"><input type='checkbox' name='ahli2' value='Networking'
                                    id="ahli" <% if (keahlian.contains("Networking")) out.println("checked"); %>>
                                Networking</label>
                            <label class="checkbox-inline"><input type='checkbox' name='ahli3' value='Database'
                                    id="ahli" <% if (keahlian.contains("Database")) out.println("checked"); %>>
                                Database</label>
                            <label class="checkbox-inline"><input type='checkbox' name='ahli4' value='System' id="ahli"
                                    <% if (keahlian.contains("System")) out.println("checked"); %>>
                                System</label>
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-sm-2" for="email">Username:</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="email" placeholder="Masukkan Email"
                                name="email" value="<%=email%>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pswd">Password:</label>
                        <div class="col-sm-4"> 
                        <input type="password" class="form-control" name="pswd" placeholder="Input Password" value="<%=password%>">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="jk">Tunjangan Golongan:</label>
                        <div class="col-sm-10">
                            <label class="radio-inline"><input type="radio" id="tg" name="tg" value="3A" <% if
                                    (tg.equals("3A")) out.println("checked"); %>> 3A</label>
                            <label class="radio-inline"><input type="radio" id="tg" name="tg" value="3B" <% if
                                    (tg.equals("3B")) out.println("checked"); %>> 3B</label>
                            <label class="radio-inline"><input type="radio" id="tg" name="tg" value="3C" <% if
                                    (tg.equals("3C")) out.println("checked"); %>> 3C</label>
                            <label class="radio-inline"><input type="radio" id="tg" name="tg" value="4A" <% if
                                    (tg.equals("4A")) out.println("checked"); %>> 4A</label>
                            <label class="radio-inline"><input type="radio" id="tg" name="tg" value="4B" <% if
                                    (tg.equals("4B")) out.println("checked"); %>> 4B</label>
                            <label class="radio-inline"><input type="radio" id="tg" name="tg" value="4C" <% if
                                    (tg.equals("4C")) out.println("checked"); %>> 4C</label>        
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="jk">Tunjangan Pangkat:</label>
                        <div class="col-sm-10">
                            <label class="radio-inline"><input type="radio" id="tp" name="tp" value="AA" <% if
                                    (tp.equals("AA")) out.println("checked"); %>> AA</label>
                            <label class="radio-inline"><input type="radio" id="tp" name="tp" value="L" <% if
                                    (tp.equals("L")) out.println("checked"); %>> L</label>
                            <label class="radio-inline"><input type="radio" id="tp" name="tp" value="LK" <% if
                                    (tp.equals("LK")) out.println("checked"); %>> LK</label>
                            <label class="radio-inline"><input type="radio" id="tp" name="tp" value="GB" <% if
                                    (tp.equals("GB")) out.println("checked"); %>> GB</label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="pengalaman">Pengalaman Kerja:</label>
                        <div class="col-sm-10">
                            <textarea class="form-control" rows="5" style="resize: none" id="pengalaman"
                                name="pengalaman"><%=pengalaman%>
                            </textarea>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-sm-2" for="gp">Gaji Pokok:</label>
                        <div class="col-sm-4">
                        <input type="text" class="form-control" id="gp" name="gp" value="<%=gp%>">
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-sm-offset-2 col-sm-10">
                            <button type="submit" class="btn btn-success" name="edit"><span class="glyphicon glyphicon-edit"></span> Edit</button>
                            <button type="reset" class="btn btn-warning"><span class="glyphicon glyphicon-repeat"></span> Reset</button>
                            <input type="hidden" name="nidn" value="<%=nidn%>">
                        </div>
                    </div>
            </div>
            </form>
            <div class="col-sm-10 col-sm-offset-1">
                <% 
                    if (request.getParameter("edit") !=null) {
                        nama = request.getParameter("nama");
                        tempat = request.getParameter("tempat");
                        lahir = request.getParameter("lahir");
                        telepon = request.getParameter("telepon");
                        pendidikan = request.getParameter("pendidikan");
                        jenis = request.getParameter("jk");
                        keahlian = "";
                        String ahli;
                        for (int i=1; i<=4; i++)
                        {
                            ahli = request.getParameter("ahli" + i);
                            if (ahli != null)
                            {
                                keahlian += ahli + ", ";
                            }
                        }
                        email = request.getParameter("email");
                        pswd = request.getParameter("pswd");
                        tg = request.getParameter("tg");
                        int tugol;
                        if (tg.equals("3A") || tg.equals("3B")){
                            tugol = 500000;
                        }
                        else if(tg.equals("3C")){
                            tugol = 750000;
                        }
                        else if(tg.equals("4A") || tg.equals("4B")){
                            tugol = 1000000;
                        }
                        else{
                            tugol = 1500000;
                        }
    
                        int tupang;
                        tp = request.getParameter("tp");
                        if (tp.equals("AA")){
                            tupang = 375000;
                        }
                        else if(tp.equals("L")){
                            tupang = 750000;
                        }
                        else if(tp.equals("LK")){
                            tupang = 1500000;
                        }
                        else{
                            tupang = 7500000;
                        }
                        pengalaman = request.getParameter("pengalaman");
                        
                        gp = Integer.parseInt(request.getParameter("gp"));
                        int total;
                        total = (gp + tugol + tupang);

                        java.text.DateFormat df = new java.text.SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
                        String tanggal = df.format(new java.util.Date());
                            boolean berhasil=true; 

                            String query = "UPDATE tabel_member SET nama='" + nama + "', tempat='" + tempat +"', lahir='" + lahir +"', telepon='" + telepon +"', pendidikan='" + pendidikan + "', jenis_kelamin='" + jenis + "', keahlian='" + keahlian + "', username='" + email + "', password='" + pswd + "', tunjangan_golongan='" + tg + "', tunjangan_pangkat='" + tp + "', pengalaman='" + pengalaman + "', gaji_pokok='" + gp + "', total='" + total + "' WHERE nidn='" + nidn + "'";
                            
                            try {
                                stm = koneksi.createStatement();
                                stm.executeUpdate(query);
                            }
                            catch (Exception ex) {
                                out.println(" Kesalahan " + ex);
                                berhasil = false;
                            }

                            if (berhasil) {
                                boolean finish = true;
                                String queryInsert="INSERT INTO log_data (nidn, nama, total, waktu, pengedit) VALUES('"+nidn+"','"+nama+"','"+total+"','"+tanggal+"','"+username+"')" ;
                                try {
                                    stm=koneksi.createStatement();
                                    stm.executeUpdate(queryInsert);
                                }
                                catch(Exception ex) {
                                    out.println("Kesalahan " + ex);
                                    finish = false;
                                }

                                if(finish){
                     %>
                
                     <script>
                        alert('Success! Data Anggota Berhasil Diedit');
                        document.location='input.jsp';
                     </script>
                <% 
                            } 
                            else { 
                %>
                <script>
                    alert('Failed! Tabel Log Tidak Terupdate');
                    document.location='input.jsp';
                 </script>
                    <%       
                            }
                            } 
                    else {
                        %>
                        <script>
                            alert('Failed! Data Anggota Gagal Diedit');
                            document.location='input.jsp';
                         </script>
                          <%
                        }
                            }
                      %>
                    </div>
            </div>
        </body>
        </html>