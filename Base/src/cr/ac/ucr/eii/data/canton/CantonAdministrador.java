package cr.ac.ucr.eii.data.canton;

import cr.ac.ucr.eii.data.DatoAdministrador;
import cr.ac.ucr.eii.db.DBUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public class CantonAdministrador extends DatoAdministrador<Canton> {

    @Override
    protected Canton crearDato() {
        return new Canton();
    }

    @Override
    protected void cargarDatoDelResultSet(Canton dato, ResultSet rs) throws Exception {
        dato.setProvincia(rs.getInt("provincia_id"));
        dato.setNombre(rs.getString("nombre"));
    }

    @Override
    protected String crearSQLCreacion() {
        return "insert into canton (provincia_id, nombre) values (?, ?)";
    }

    @Override
    protected void cargarParametrosSQLCreacion(PreparedStatement ps, Canton dato) throws Exception {
        DBUtil.setInteger(ps, 1, dato.getProvincia());
        DBUtil.setString(ps, 2, dato.getNombre());
    }

    @Override
    protected String crearSQLActualizacion() {
        return "update canton set provincia_id = ?, nombre = ? where canton_id = ?";
    }

    @Override
    public String getNombreTabla() {
        return "canton";
    }

    @Override
    protected void cargarParametrosSQLActualizacion(PreparedStatement ps, Canton dato) throws Exception {
        DBUtil.setInteger(ps, 1, dato.getProvincia());
        DBUtil.setString(ps, 2, dato.getNombre());
        DBUtil.setInteger(ps, 3, dato.getId());
    }

    public List<Canton> buscar(Integer provincia, String nombre) {
        Connection conn = DBUtil.crearConexion();
        List<Canton> salida = buscar(conn, provincia, nombre);
        DBUtil.cerrar(conn);
        return salida;
    }

    public List<Canton> buscar(Connection conn, Integer provincia, String nombre) {
        List<Canton> lista = new ArrayList<>();
        nombre = nombre != null ? nombre : "";
        String sql = "select * from " + getNombreTabla() + " where provincia_id = " + provincia + " and nombre like '%" + nombre + "%'";
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            ps = conn.prepareStatement(sql);
            rs = ps.executeQuery(sql);
            String pk = getNombreCampoPK();
            while (rs.next()) {
                lista.add(cargar(rs.getInt(pk), conn));
            }
        } catch (SQLException e) {
            System.out.println(e.getMessage());
        } finally {
            DBUtil.cerrar(rs);
            DBUtil.cerrar(ps);
        }
        return lista;
    }

}
