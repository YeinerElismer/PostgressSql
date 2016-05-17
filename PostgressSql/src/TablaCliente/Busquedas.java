package TablaCliente;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author Oliverco
 */
public class Busquedas extends Conexion.ConexionLogica{
    private Connection coneccion = null;
    private ResultSet rs = null;
    private Statement s = null;
    public void Clientes(){
        Coneccion();
        String sentencia = "SELECT tb_cliente_nombre FROM tb_cliente";
        Integer Id,DNI,Telefono,Fecha;
        String Nombre,ApPaterno,ApMaterno,Direccion;
        try {
            rs = s.executeQuery(sentencia);
        } catch (Exception e) {
            System.out.println("problemas uscando ");
        }
//        try {
//            while (rs.next()) {
//                System.out.println(rs.getRow());
//                
//            }
//        } catch (Exception e) {
//            System.out.println("problema imprimir");
//        }
    }
    
}
