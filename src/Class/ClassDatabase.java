/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package Class;
import com.mysql.jdbc.Connection;
import java.sql.*;
import javax.swing.JOptionPane;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author riko
 */
public class ClassDatabase {
    public static String PathReport=System.getProperty("user.dir") + "/src/Laporan/";
    private static Connection koneksi;
    public static Connection getkoneksi() {
        if (koneksi==null) {
            try {
                String url=new String();
                String user=new String();
                String password=new String();
                url="jdbc:mysql://localhost:3306/koperasi";
                user="root";
                password="";
                DriverManager.registerDriver(new com.mysql.jdbc.Driver());
                koneksi=(Connection) DriverManager.getConnection(url,user,password);
            }catch (SQLException t) {
                System.out.println("Error membuat koneksi");
            }
        }
     return koneksi;
    }

    public static Object getKoneksi() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
