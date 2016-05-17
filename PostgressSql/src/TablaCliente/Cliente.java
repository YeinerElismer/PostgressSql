
package TablaCliente;

/**
 *
 * @author Oliverco
 */
public class Cliente {
    private String Id;
    private String Nombre;
    private String ApePaterno;
    private String ApMaterno;
    private String Direccion;
    private String DNI;
    private String FechaIngreso;

    public Cliente() {
    }

    
    
    public Cliente(String Id) {
        this.Id = Id;
    }

    public Cliente(String Id, String Nombre, String ApePaterno, String ApMaterno, String Direccion, String DNI, String FechaIngreso) {
        this.Id = Id;
        this.Nombre = Nombre;
        this.ApePaterno = ApePaterno;
        this.ApMaterno = ApMaterno;
        this.Direccion = Direccion;
        this.DNI = DNI;
        this.FechaIngreso = FechaIngreso;
    }

    public String getId() {
        return Id;
    }

    public void setId(String Id) {
        this.Id = Id;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApePaterno() {
        return ApePaterno;
    }

    public void setApePaterno(String ApePaterno) {
        this.ApePaterno = ApePaterno;
    }

    public String getApMaterno() {
        return ApMaterno;
    }

    public void setApMaterno(String ApMaterno) {
        this.ApMaterno = ApMaterno;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getDNI() {
        return DNI;
    }

    public void setDNI(String DNI) {
        this.DNI = DNI;
    }

    public String getFechaIngreso() {
        return FechaIngreso;
    }

    public void setFechaIngreso(String FechaIngreso) {
        this.FechaIngreso = FechaIngreso;
    }
    
    
    
    
}
