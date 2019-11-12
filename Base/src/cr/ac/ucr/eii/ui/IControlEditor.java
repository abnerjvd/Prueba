package cr.ac.ucr.eii.ui;

import cr.ac.ucr.eii.data.IDato;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public interface IControlEditor {
    public void establecerEstado(EstadoEdicion estado);
    public EstadoEdicion obtenerEstado();
    
    public void limpiarVentana();
    public void bloquearEdicion(boolean bloqueado);
    public void mostrarDato(IDato dato);
    public IDato leerDato();
    public void marcarCamposErroneos(boolean marcar);
    
}
