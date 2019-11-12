package cr.ac.ucr.eii.ui;

import javax.swing.JFrame;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public interface IDatoControlMenu {

    public void registrar(JFrame ventanaMenu, String nombre_elemento);

    public void agregar();
    public void procesarAgregar();

    public void modificar();
    public void procesarModificar();

    public void eliminar();
    public void procesarEliminar();

    public void salir();

}
