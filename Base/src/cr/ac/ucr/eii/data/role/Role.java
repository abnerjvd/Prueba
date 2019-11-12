package cr.ac.ucr.eii.data.role;

import cr.ac.ucr.eii.data.Dato;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public class Role extends Dato {
   private String nombre;

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
   
}
