<%@ include file="cekSession.jsp" %>
<%@ include file="koneksi.jsp" %>

<%
    Connection koneksi = DriverManager.getConnection("jdbc:mysql://localhost/member","root","");
    String nidn = request.getParameter("nidn");
    boolean berhasil = true;
    String query = "DELETE FROM tabel_member WHERE nidn='" + nidn + "'";
    try{
        Statement stm = koneksi.createStatement();
        stm.executeUpdate(query);
    }
    catch (Exception ex)
    {
        out.println("Kesalahan " + ex);
        berhasil = false;
    }

    if (berhasil) {
    %>
    <script>
        alert('Success! Data Anggota Berhasil Dihapus');
        document.location='input.jsp';
     </script>
	<%
    }
    else {
    %>
    <script>
        alert('Failed! Data Anggota Gagal Dihapus');
        document.location='input.jsp';
     </script>
	<%
    }
%>