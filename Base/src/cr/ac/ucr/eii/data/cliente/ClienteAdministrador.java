/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cr.ac.ucr.eii.data.cliente;

import cr.ac.ucr.eii.data.cliente.Cliente;
import cr.ac.ucr.eii.data.DatoAdministrador;
import cr.ac.ucr.eii.db.DBUtil;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author jirb4
 */
public class ClienteAdministrador  extends DatoAdministrador<Cliente> {

    @Override
    protected void cargarDatoDelResultSet(Cliente dato, ResultSet rs) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    protected Cliente crearDato() {
        return new Cliente();
    }

    @Override
    protected String crearSQLCreacion() {
        return "insert into clientes (nombre,lead_time,contacto,cedula,telefono,correo,direccion) values(?,?,?,?,?,?,?)";
     }

    @Override
    protected void cargarParametrosSQLCreacion(PreparedStatement ps, Cliente dato) throws Exception {
        DBUtil.setString(ps, 2, dato.getNombre());
        DBUtil.setInteger(ps, 1, dato.getLead_time());
        DBUtil.setString(ps, 2, dato.getContacto());
        DBUtil.setString(ps, 2, dato.getCedula());
        DBUtil.setString(ps, 2, dato.getTelefono());
        DBUtil.setString(ps, 2, dato.getCorreo());
        DBUtil.setString(ps, 2, dato.getDireccion());
    }

    @Override
    protected String crearSQLActualizacion() {
        return "update clientes set nombre = ?, lead_time = ?, contacto = ?, cedula = ?, telefono = ?, correo = ?, direccion = ? where id_cliente = ?";
         }

    @Override
    protected void cargarParametrosSQLActualizacion(PreparedStatement ps, Cliente dato) throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public String getNombreTabla() {
        return "cliente";
    }
    
}
