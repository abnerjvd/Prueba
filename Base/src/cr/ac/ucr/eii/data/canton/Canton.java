package cr.ac.ucr.eii.data.canton;

import cr.ac.ucr.eii.data.Dato;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public class Canton extends Dato {

    private Integer provincia;
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
    public Integer getProvincia() {
        return provincia;
    }

    /**
     * @param provincia the codigo to set
     */
    public void setProvincia(Integer provincia) {
        this.provincia = provincia;
    }

}
