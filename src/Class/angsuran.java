/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Class;

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.Date;
//import javax.swing.JOptionPane;

/**
 *
 * @author ASPIRE4752G
 */
public class angsuran {
    public String noBukti,noPinjam;
    public Date tglBukti;
    public Integer jasa,angsuran,totalAngsuran,sisa,ke;
    //komentar
    public void tambah(){
        try {
            Connection c=ClassDatabase.getkoneksi();
            String sql = "Insert into angsuran values (?,?,?,?,?,?,?,?)";
            PreparedStatement p=(PreparedStatement) c.prepareStatement(sql);
            p.setString(1, noBukti);
            p.setDate(2, new java.sql.Date(tglBukti.getTime()));
            p.setString(3, noPinjam);  
            p.setInt(4, jasa);
            p.setInt(5, angsuran);
            p.setInt(6, totalAngsuran);
            p.setInt(7, sisa);  
            p.setInt(8, ke);
            p.executeUpdate();
            p.close();
        }catch(SQLException e){
            System.out.println(e.getLocalizedMessage().toString());
        }
    }
    
}
