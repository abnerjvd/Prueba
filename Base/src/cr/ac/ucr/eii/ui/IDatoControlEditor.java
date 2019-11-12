package cr.ac.ucr.eii.ui;

import cr.ac.ucr.eii.data.IDato;
import javax.swing.JFrame;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public interface IDatoControlEditor<T extends IDato> {
    public void registrarVentana(IControlEditor ventana);
    public IControlEditor obtenerVentana();
    public void establecerEstado(EstadoEdicion estado);
    public EstadoEdicion obtenerEstado();
    public void establecerDato(T dato);
    public T obtenerDatoActual();
    /**
     * Este método verifica si se cumple una condición de error,
     * por ejemplo se busca evitar que algo sea null, si se encuentra un valor
     * null e.g. x == null, entonces la condición se cumple y agregar un mensaje
     * de error a lista, con el texto que se indica que luego será mostrar al
     * usuario
     * @param condicion
     * @param mensaje 
     */
    public void verificarCondicionDeError(boolean condicion, String mensaje);
    public void limpiarCondicionesDeError();
    public boolean existenErrores();
    public T crearDatoNuevo();
    public void procesar();
    public boolean agregar();
    public boolean procesarAgregar();
    public boolean modificar();
    public boolean procesarModificar();
    public boolean eliminar();
    public boolean procesarEliminar();
    public boolean limpiarVentana();
    public boolean mostrarDato();
}
