<%@ include file="cekSession.jsp" %>
<%@ include file="koneksi.jsp" %>

<%
Connection koneksi=DriverManager.getConnection("jdbc:mysql://localhost/member","root",""); 
  
String nidn = request.getParameter("nidn");
String nama = request.getParameter("nama");
String tempat = request.getParameter("tempat");
String lahir = request.getParameter("lahir");
String telepon = request.getParameter("telepon");
String pendidikan = request.getParameter("pendidikan");
String jk = request.getParameter("jk");
String keahlian = "";
String ahli;
for (int i=1; i<=4; i++)
{
    ahli = request.getParameter("ahli" + i);
    if (ahli != null)
    {
        keahlian += ahli + ", ";
    }
}
String email = request.getParameter("email");
String pswd = request.getParameter("pswd");
String tg = request.getParameter("tg");
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
String tp = request.getParameter("tp");
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
String pengalaman = request.getParameter("pengalaman");
int gp;
gp = Integer.parseInt(request.getParameter("gp"));
int total;
total = (gp + tugol + tupang);
    boolean berhasil=true; 

    String query="INSERT INTO tabel_member (nidn, nama, tempat, lahir, telepon, pendidikan, jenis_kelamin, keahlian, username, password, tunjangan_golongan, tunjangan_pangkat, pengalaman, gaji_pokok, total) VALUES('" + nidn + "','" + nama + "','" + tempat + "','" + lahir + "','" + telepon + "','" + pendidikan + "','" + jk + "','" + keahlian + "','" + email + "','" + pswd + "','" + tg + "','" + tp + "','" + pengalaman + "','" + gp + "','" + total + "')" ; 
    
    try { 
        Statement stm=koneksi.createStatement(); 
        stm.executeUpdate(query); 
    }
    catch (Exception ex) { 
        out.println("Kesalahan " + ex);
        berhasil = false;
    }

  if (berhasil){
  %>
  
  <script>
    alert('Success! Data Anggota Berhasil Diinput');
    document.location='input.jsp';
 </script>
	<%
  }
  else {
  %>
  <script>
    alert('Failed! Data Anggota Gagal Diinput');
    document.location='input.jsp';
 </script>
	<%
  }

%>