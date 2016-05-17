
package TablaCliente;

import java.util.ArrayList;
import java.util.List;
import javax.swing.table.AbstractTableModel;

/**
 *
 * @author Oliverco
 */
public class Modelo extends AbstractTableModel{

    private String[] columnas = {"Id","Nombre","A. Paterno","A. Materno","Dirección","DNI","Fecha de Ingreso"};
    private List<Cliente> datos = new ArrayList<Cliente>();
    
    public Modelo(List<Cliente> datos){
        this.datos = datos;
    }
    
    
    @Override
    public int getRowCount() {
        return datos.size();
    }

    @Override
    public int getColumnCount() {
        return 7;
    }

    @Override
    public Object getValueAt(int fila, int columna) {
        String resultado;
        
        if (columna ==0) {
            resultado=datos.get(fila).getId();
        } else if(columna ==1){
            resultado=datos.get(fila).getNombre();
        }else if(columna ==2){
            resultado=datos.get(fila).getApePaterno();
        }else if(columna ==3){
            resultado=datos.get(fila).getApMaterno();
        }else if(columna ==4){
            resultado=datos.get(fila).getDireccion();
        }else if(columna ==5){
            resultado=datos.get(fila).getDNI();
        }else {
            resultado=datos.get(fila).getFechaIngreso();
        }
        return resultado;
    }

    @Override
    public String getColumnName(int columna) {
        return columnas[columna];
    }
    
}
