package cr.ac.ucr.eii.ui;

import cr.ac.ucr.eii.data.IDato;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public abstract class DatoControlEditor<T extends IDato> implements IDatoControlEditor<T> {

    private T datoActual;
    private EstadoEdicion estadoActual;
    private List<String> errores = null;
    private IControlEditor ventana;

    public DatoControlEditor() {
        errores = new ArrayList<>();
    }

    @Override
    public void establecerEstado(EstadoEdicion estado) {
        estadoActual = estado;
        switch(estadoActual) {
            case SIN_ESTADO:
                break;
            case AGREGAR:
                agregar();
                break;
            case MODIFICAR:
                modificar();
                break;
            case ELIMINAR:
                eliminar();
                break;
            default:
                ;
        }
    }

    @Override
    public void establecerDato(T dato) {
        this.datoActual = dato;
    }

    @Override
    public T obtenerDatoActual() {
        return datoActual;
    }

    @Override
    public EstadoEdicion obtenerEstado() {
        return estadoActual;
    }

    /**
     * @return the errores
     */
    public List<String> getErrores() {
        return errores;
    }

    /**
     * @param errores the errores to set
     */
    public void setErrores(List<String> errores) {
        this.errores = errores;
    }

    @Override
    public void verificarCondicionDeError(boolean condicion, String mensaje) {
        if (condicion) {
            getErrores().add(mensaje);
        }
    }

    @Override
    public void limpiarCondicionesDeError() {
        getErrores().clear();
    }

    @Override
    public boolean existenErrores() {
        return getErrores().size() > 0;
    }

    @Override
    public void registrarVentana(IControlEditor ventana) {
        this.ventana = ventana;
    }

    @Override
    public IControlEditor obtenerVentana() {
        return ventana;
    }

    @Override
    public boolean limpiarVentana() {
        obtenerVentana().limpiarVentana();
        return true;
    }
    
    

    @Override
    public void procesar() {
        switch (estadoActual) {
            case SIN_ESTADO:
                limpiarVentana();
                break;
            case AGREGAR:
                procesarAgregar();
                break;
            case MODIFICAR:
                procesarModificar();
                break;
            case ELIMINAR:
                procesarEliminar();
                break;
            default:
               
        }
    }

    @Override
    public boolean procesarAgregar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean procesarModificar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean procesarEliminar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean agregar() {
        T datoNuevo = crearDatoNuevo();
        establecerDato(datoNuevo);
        limpiarVentana();
        obtenerVentana().bloquearEdicion(false);
        obtenerVentana().mostrarDato(datoNuevo);
        return true;
    }

    @Override
    public boolean modificar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }



    
}
