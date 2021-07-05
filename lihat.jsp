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
        <div class="col-sm-10 col-sm-offset-1">
                <div class="table-responsive col-sm-10 col-sm-offset-1">
                    <div class="text-center">
                    <h2><b>Tabel Log</b></h2>
                    </div>
                    <table class="table table-striped ">
                        <thead>
                            <tr>
                                <th>NIDN</th>
                                <th>Nama Anggota</th>
                                <th>Gaji Saat Ini</th>
                                <th>Waktu Diedit</th>
                                <th>Pengedit</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% ResultSet hasil=null; 
                            Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost/member","root",""); 
                                Statement stm=koneksi.createStatement(); 
                                hasil=stm.executeQuery("SELECT COUNT(*) AS jum FROM log_data ORDER BY nama"); 
                                hasil.next(); 
                                int rowCount=hasil.getInt("jum"); 
                                if (rowCount==0) { 
                            %>
                                <tr>
                                    <td colspan="8" class="danger">Data Log Masih Kosong</td>
                                </tr>
                            <%  } 
                                else { 
                                    stm=koneksi.createStatement(); 
                                    hasil=stm.executeQuery("SELECT * FROM log_data ORDER BY nama"); 
                                    int i=0; 
                                    while (hasil.next()) { 
                                        i++; 
                                        String nidn=hasil.getString("nidn"); 
                                        String nama=hasil.getString("nama");
                                        String total=hasil.getString("total"); 
                                        String waktu=hasil.getString("waktu");
                                        String user=hasil.getString("pengedit");                                
                            %>
                                    <tr>
                                        <td>
                                            <%=nidn%>
                                        </td>
                                        <td>
                                            <%=nama%>
                                        </td>
                                        <td>
                                            <%=total%>
                                        </td>
                                        <td>
                                            <%=waktu%>
                                        </td>
                                        <td>
                                            <%=user%>
                                        </td>
                                    </tr>
                                    <% } 
                                } %>
                        </tbody>
                    </table>
                    <a href="input.jsp" class="btn btn-success"><span class="glyphicon glyphicon-arrow-left"> Kembali</a>
                </div>
                </div>
</body>
</html>