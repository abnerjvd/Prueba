package cr.ac.ucr.eii.ui_utils;

import cr.ac.ucr.eii.data.IDato;
import javax.swing.JComboBox;

/**
 *
 * @author Mauricio Zamora Hernández
 */
public class ComboboxUtils {
    public static void seleccionarItem(JComboBox cbo, Integer valor) {
        if (valor == null) return;
        IDato dato = null;
        for (int i = 0; i < cbo.getModel().getSize(); i++) {
            dato = (IDato) cbo.getModel().getElementAt(i);
            if ( dato.getId().equals(valor) ) {
                cbo.getModel().setSelectedItem(dato);
                break;
            }
        }
    }
}
