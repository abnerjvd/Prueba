package cr.ac.ucr.eii.data.distrito;

import cr.ac.ucr.eii.data.Dato;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public class Distrito extends Dato {

    private Integer canton;
    private String nombre;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return getNombre();
    }

    /**
     * @return the codigo
     */
    public Integer getCanton() {
        return canton;
    }

    /**
     * @param canton the codigo to set
     */
    public void setCanton(Integer canton) {
        this.canton = canton;
    }

}
