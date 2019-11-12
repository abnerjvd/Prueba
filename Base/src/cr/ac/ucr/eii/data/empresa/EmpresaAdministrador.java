package cr.ac.ucr.eii.data.empresa;

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
public class EmpresaAdministrador extends DatoAdministrador<Empresa> {

    @Override
    protected void cargarDatoDelResultSet(Empresa dato, ResultSet rs) throws Exception {
        dato.setNombre(rs.getString("nombre"));
        dato.setNumeroIdentificacion(rs.getString("numero_identificacion"));
        dato.setTelefonoPrincipal(rs.getString("telefono_principal"));
        dato.setCorreoElectronicoPrincipal(rs.getString("correo_electronico_principal"));
        dato.setProvincia(DBUtil.getInteger(rs, "provincia_id"));
        dato.setCanton(DBUtil.getInteger(rs, "canton_id"));
        dato.setDistrito(DBUtil.getInteger(rs, "distrito_id"));
    }

    @Override
    protected Empresa crearDato() {
        return new Empresa();
    }

    @Override
    protected String crearSQLCreacion() {
        return "insert into empresa (nombre, numero_identificacion, telefono_principal, correo_electronico_principal, provincia_id, canton_id, distrito_id) values (?, ?, ?, ?, ?, ?, ?)";
    }

    @Override
    protected void cargarParametrosSQLCreacion(PreparedStatement ps, Empresa dato) throws Exception {
        DBUtil.setString(ps, 1, dato.getNombre());
        DBUtil.setString(ps, 2, dato.getNumeroIdentificacion());
        DBUtil.setString(ps, 3, dato.getTelefonoPrincipal());
        DBUtil.setString(ps, 4, dato.getCorreoElectronicoPrincipal());
        DBUtil.setInteger(ps, 5, dato.getProvincia());
        DBUtil.setInteger(ps, 6, dato.getCanton());
        DBUtil.setInteger(ps, 7, dato.getDistrito());
    }

    @Override
    protected String crearSQLActualizacion() {
        return "update empresa set nombre = ?, numero_identificacion = ?, telefono_principal = ?, correo_electronico_principal = ?, provincia_id = ?, canton_id = ?, distrito_id = ? where empresa_id = ?";
    }

    @Override
    protected void cargarParametrosSQLActualizacion(PreparedStatement ps, Empresa dato) throws Exception {
        DBUtil.setString(ps, 1, dato.getNombre());
        DBUtil.setString(ps, 2, dato.getNumeroIdentificacion());
        DBUtil.setString(ps, 3, dato.getTelefonoPrincipal());
        DBUtil.setString(ps, 4, dato.getCorreoElectronicoPrincipal());
        DBUtil.setInteger(ps, 5, dato.getProvincia());
        DBUtil.setInteger(ps, 6, dato.getCanton());
        DBUtil.setInteger(ps, 7, dato.getDistrito());
        DBUtil.setInteger(ps, 8, dato.getId());
    }

    @Override
    public String getNombreTabla() {
        return "empresa";
    }

    public List<Empresa> buscar(Connection conn, String numeroIdentificacion, String nombre) {
        List<Empresa> lista = new ArrayList<>();
        numeroIdentificacion = numeroIdentificacion != null ? numeroIdentificacion : "";
        nombre = nombre != null ? nombre : "";
        String sql = "select * from " + getNombreTabla() + " where numero_identificacion like '%" + numeroIdentificacion + "%' and nombre like '%" + nombre + "%'";
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
    
    public List<Empresa> buscar(String numeroIdentificacion, String nombre) {
        Connection conn = DBUtil.crearConexion();
        List<Empresa> salida;
        salida = buscar(conn, numeroIdentificacion, nombre);
        DBUtil.cerrar(conn);
        return salida;
    }
}
