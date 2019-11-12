package cr.ac.ucr.eii.data.pais;

import cr.ac.ucr.eii.data.Dato;

/**
 *sdf asdf asdff
 * @author Mauricio Andrés Zamora Hernández
 */
public class Pais extends Dato {

    private String codigo;
    private String nombre;

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    @Override
    public String toString() {
        return getCodigo() + " " + getNombre();
    }

    /**
     * @return the codigo
     */
    public String getCodigo() {
        return codigo;
    }

    /**
     * @param codigo the codigo to set
     */
    public void setCodigo(String codigo) {
        this.codigo = codigo;
    }

}
