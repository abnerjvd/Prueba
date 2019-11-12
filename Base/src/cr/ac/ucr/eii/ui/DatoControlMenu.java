package cr.ac.ucr.eii.ui;

import javax.swing.JFrame;
import javax.swing.JOptionPane;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public abstract class DatoControlMenu implements IDatoControlMenu {

    private JFrame ventana;
    private String nombreElmento;

    @Override
    public void agregar() {
        Object[] options = {"SI",
            "NO"};
        int n = JOptionPane.showOptionDialog(getVentana(),
                "¿Desea agregar un nuevo " + getNombreElmento() + "?",
                "Nuevo - " + getNombreElmento(),
                JOptionPane.YES_NO_OPTION,
                JOptionPane.QUESTION_MESSAGE,
                null, //do not use a custom Icon
                options, //the titles of buttons
                options[0]); //default button title
        if (n == 0) {
            procesarAgregar();
        }
    }

    @Override
    public void modificar() {
        Object[] options = {"SI",
            "NO"};
        int n = JOptionPane.showOptionDialog(getVentana(),
                "¿Desea modificar un " + getNombreElmento() + "?",
                "Modificar - " + getNombreElmento(),
                JOptionPane.YES_NO_OPTION,
                JOptionPane.QUESTION_MESSAGE,
                null, //do not use a custom Icon
                options, //the titles of buttons
                options[0]); //default button title
        if (n == 0) {
            procesarModificar();
        }
    }

    @Override
    public void eliminar() {
        Object[] options = {"SI",
            "NO"};
        int n = JOptionPane.showOptionDialog(getVentana(),
                "¿Desea eliminar un " + getNombreElmento() + "?",
                "Eliminar - " + getNombreElmento(),
                JOptionPane.YES_NO_OPTION,
                JOptionPane.QUESTION_MESSAGE,
                null, //do not use a custom Icon
                options, //the titles of buttons
                options[0]); //default button title
        if (n == 0) {
            procesarEliminar();
        }
    }

    @Override
    public void salir() {
        Object[] options = {"SI",
            "NO"};
        int n = JOptionPane.showOptionDialog(getVentana(),
                "¿Desea salir?",
                "Salir",
                JOptionPane.YES_NO_OPTION,
                JOptionPane.QUESTION_MESSAGE,
                null, //do not use a custom Icon
                options, //the titles of buttons
                options[0]); //default button title
        if (n == 0) {
            ventana.dispose();
        }
    }

    /**
     * @return the ventana
     */
    public JFrame getVentana() {
        return ventana;
    }

    /**
     * @param ventana the ventana to set
     */
    public void setVentana(JFrame ventana) {
        this.ventana = ventana;
    }

    @Override
    public void registrar(JFrame ventanaMenu, String nombre_elemento) {
        setVentana(ventanaMenu);
        setNombreElmento(nombre_elemento);
        getVentana().setTitle(getNombreElmento().toUpperCase());
        getVentana().setDefaultCloseOperation(JFrame.DO_NOTHING_ON_CLOSE);
    }

    /**
     * @return the nombreElmento
     */
    public String getNombreElmento() {
        return nombreElmento;
    }

    /**
     * @param nombreElmento the nombreElmento to set
     */
    public void setNombreElmento(String nombreElmento) {
        this.nombreElmento = nombreElmento;
    }

}
