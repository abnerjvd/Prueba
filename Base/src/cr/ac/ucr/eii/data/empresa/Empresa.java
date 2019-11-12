package cr.ac.ucr.eii.data.empresa;

import cr.ac.ucr.eii.data.Dato;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public class Empresa extends Dato {
        private String nombre;
        private String numeroIdentificacion;
        private String telefonoPrincipal;
        private String correoElectronicoPrincipal;
        private Integer provincia;
        private Integer canton;
        private Integer distrito;
        
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

    /**
     * @return the numeroIdentificacion
     */
    public String getNumeroIdentificacion() {
        return numeroIdentificacion;
    }

    /**
     * @param numeroIdentificacion the numeroIdentificacion to set
     */
    public void setNumeroIdentificacion(String numeroIdentificacion) {
        this.numeroIdentificacion = numeroIdentificacion;
    }

    /**
     * @return the telefonoPrincipal
     */
    public String getTelefonoPrincipal() {
        return telefonoPrincipal;
    }

    /**
     * @param telefonoPrincipal the telefonoPrincipal to set
     */
    public void setTelefonoPrincipal(String telefonoPrincipal) {
        this.telefonoPrincipal = telefonoPrincipal;
    }

    /**
     * @return the correoElectronicoPrincipal
     */
    public String getCorreoElectronicoPrincipal() {
        return correoElectronicoPrincipal;
    }

    /**
     * @param correoElectronicoPrincipal the correoElectronicoPrincipal to set
     */
    public void setCorreoElectronicoPrincipal(String correoElectronicoPrincipal) {
        this.correoElectronicoPrincipal = correoElectronicoPrincipal;
    }
    
    @Override
    public String toString() {
        return getNumeroIdentificacion() + " " + getNombre();
    }

    /**
     * @return the provincia
     */
    public Integer getProvincia() {
        return provincia;
    }

    /**
     * @param provincia the provincia to set
     */
    public void setProvincia(Integer provincia) {
        this.provincia = provincia;
    }

    /**
     * @return the canton
     */
    public Integer getCanton() {
        return canton;
    }

    /**
     * @param canton the canton to set
     */
    public void setCanton(Integer canton) {
        this.canton = canton;
    }

    /**
     * @return the distrito
     */
    public Integer getDistrito() {
        return distrito;
    }

    /**
     * @param distrito the distrito to set
     */
    public void setDistrito(Integer distrito) {
        this.distrito = distrito;
    }
}
