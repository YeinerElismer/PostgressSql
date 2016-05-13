
package Conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class ConexionLogica {
    private Connection coneccion = null;
    private ResultSet rs = null;
    private Statement s = null;
    
    public void Coneccion(){
        if (coneccion != null) {
            return;
        }
        String URL  = "jdbc:postgresql://localhost:5432/Tienda";
        String Usuario = "postgres";
        String Contraseña = "postgress";
        
        try {
            Class.forName("org.postgresql.Driver");
            coneccion = DriverManager.getConnection(URL,Usuario,Contraseña);
            if (coneccion!=null) {
                System.out.println("CONEXIÓN EXITOSA.");
            }
            
        } catch (Exception e) {
            JOptionPane.showMessageDialog(null,"PROBLEMAS EN LA CONECCIÓN.");
            
        }
        
    }
    public boolean IngresarLogin(String Usuario,String Contraseña){
        Coneccion();
        boolean referencia = false;
        try {
            s = coneccion.createStatement();
            rs = s.executeQuery("SELECT tb_login.tb_login_usuario,tb_login.tb_login_contraseña FROM tb_login WHERE tb_login_usuario = '"+Usuario+"'AND tb_login_contraseña = '"+Contraseña+"';");
        } catch (Exception e) {
            System.out.println("problema buscando usuario y contraseña");
        }
        try {
            while (rs.next()) {
                System.out.println(rs.getRow());
                if (rs.getRow()!=0) {
                    referencia=true;
                    //break;
                }
            }
        } catch (Exception e) {
            System.out.println("problema al imprimir");
        }
        
        return referencia;
    }
}
