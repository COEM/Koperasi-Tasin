
package Class;

import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author ASPIRE4752G
 */
public class pinjaman {
    
    String sql;
    PreparedStatement p;
    ResultSet result;
    public Integer sisaPinjaman(String noPinjam){
        Integer sisa = 0;
        try {
            Connection c=ClassDatabase.getkoneksi();
            Statement s= c.createStatement();
            if (this.statusAngsur(noPinjam)) {
                sql = "select Jumlah - (select sum(Angsuran) from angsuran where NoPinjam = ?) as sisa from pinjaman where NoPinjam = ?";
                
                p=(PreparedStatement) c.prepareStatement(sql);
                p.setString(1, noPinjam);
                p.setString(2, noPinjam);
                result=p.executeQuery();
            } else {
                sql = "select Jumlah as sisa from pinjaman where NoPinjam = ?"; 
                p=(PreparedStatement) c.prepareStatement(sql);
                p.setString(1, noPinjam);
//                p.setString(2, noPinjam);
                result=p.executeQuery();
            }
            if (result.next()) {
                sisa = result.getInt("sisa");
            }
            }catch(SQLException e){
                System.out.println(e.getLocalizedMessage().toString());        
        }
        return sisa;
    }
    
    public Boolean statusAngsur(String noPinjam){
        Boolean status = false;
        Integer ke = 0;
        try {
            Connection c=ClassDatabase.getkoneksi();
            Statement s= c.createStatement();
            sql = "select count(Angsuran) as ke from angsuran where NoPinjam = ?";
            p=(PreparedStatement) c.prepareStatement(sql);
            p.setString(1, noPinjam);
            result=p.executeQuery();
            if (result.next()) {
                ke = result.getInt("ke");
            }
        }catch(SQLException e){
            System.out.println(e.getLocalizedMessage().toString());        
        }
        
        if(ke > 0){
            status = true;
        }
        return status;
    }
    
    public Integer AngsurKe(String noPinjam){
        Integer ke = 0;
        try {
            Connection c=ClassDatabase.getkoneksi();
            Statement s= c.createStatement();
            sql = "select count(Angsuran) as ke from angsuran where NoPinjam = ?";
            p=(PreparedStatement) c.prepareStatement(sql);
            p.setString(1, noPinjam);
            result=p.executeQuery();
            if (result.next()) {
                ke = result.getInt("ke");
            }
        }catch(SQLException e){
            System.out.println(e.getLocalizedMessage().toString());        
        }
        return ke + 1;
    }
    
    public Integer jasa(Integer sisa){
        Double x = sisa * 0.06;
        return x.intValue();
    }
    
    public ResultSet getData(String noPinjam){
        ResultSet data = null;
        try {
            Connection c=ClassDatabase.getkoneksi();
            Statement s= c.createStatement();
            sql = "select * from pinjaman,anggota where pinjaman.NoAnggota = anggota.NoAnggota and NoPinjam = ?";
            p=(PreparedStatement) c.prepareStatement(sql);
            p.setString(1, noPinjam);
            result=p.executeQuery();
            if (result.next()) {
                data = result;
            }
        } catch (Exception e) {
        }
        return data;
    }
    
    public void test(){
        System.out.println("test");
    }
    
    
    
    public static void main(String[] args) {
        pinjaman pinjam = new pinjaman();
        pinjam.test();
    }
}
