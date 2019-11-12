/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.ucr.eii.ui;

import cr.ac.ucr.eii.data.IDato;

/**
 *
 * @author mauricio
 */
public interface ReceptorBusqueda {
    public void recibirResultadoBusqueda(IDato dato, String mensaje);
}
