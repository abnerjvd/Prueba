package cr.ac.ucr.eii.data.persona;

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
public class PersonaAdministrador extends DatoAdministrador<Persona> {

    @Override
    protected void cargarDatoDelResultSet(Persona dato, ResultSet rs) throws Exception {
        dato.setNumeroIdentificacion(rs.getString("numero_identificacion"));
        dato.setNombre(rs.getString("nombre"));
        dato.setPrimerApellido(rs.getString("primer_apellido"));
        dato.setSegundoApellido(rs.getString("segundo_apellido"));
        dato.setActivo(rs.getBoolean("activo"));
    }

    @Override
    protected Persona crearDato() {
        return new Persona();
    }

    @Override
    protected String crearSQLCreacion() {
        return "insert into persona (numero_identificacion, nombre, primer_apellido, segundo_apellido, activo) values (?, ?, ?, ?, ?)";
    }

    @Override
    protected void cargarParametrosSQLCreacion(PreparedStatement ps, Persona dato) throws Exception {
        DBUtil.setString(ps, 1, dato.getNumeroIdentificacion());
        DBUtil.setString(ps, 2, dato.getNombre());
        DBUtil.setString(ps, 3, dato.getPrimerApellido());
        DBUtil.setString(ps, 4, dato.getSegundoApellido());
        DBUtil.setBoolean(ps, 5, dato.isActivo());
    }

    @Override
    protected String crearSQLActualizacion() {
        return "update persona set numero_identificacion = ?, nombre = ?, primer_apellido = ?, segundo_apellido = ?, activo = ? where persona_id = ?";
    }

    @Override
    protected void cargarParametrosSQLActualizacion(PreparedStatement ps, Persona dato) throws Exception {
        DBUtil.setString(ps, 1, dato.getNumeroIdentificacion());
        DBUtil.setString(ps, 2, dato.getNombre());
        DBUtil.setString(ps, 3, dato.getPrimerApellido());
        DBUtil.setString(ps, 4, dato.getSegundoApellido());
        DBUtil.setBoolean(ps, 5, dato.isActivo());
        DBUtil.setInteger(ps, 6, dato.getId());
    }

    @Override
    public String getNombreTabla() {
        return "persona";
    }

    public List<Persona> buscar(String nombre) {
        Connection conn = DBUtil.crearConexion();
        List<Persona> salida = buscar(conn, nombre);
        DBUtil.cerrar(conn);
        return salida;
    }

    public List<Persona> buscar(Connection conn, String nombre) {
        List<Persona> lista = new ArrayList<>();
        nombre = nombre != null ? nombre : "";
        String sql = "select * from " + getNombreTabla() + " where nombre like '%" + nombre + "%'";
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

    public List<Persona> buscarProfesores() {
        Connection conn = DBUtil.crearConexion();
        List<Persona> salida = buscarProfesores(conn);
        DBUtil.cerrar(conn);
        return salida;
    }

    public List<Persona> buscarProfesores(Connection conn) {
        List<Persona> lista = new ArrayList<>();
        String sql = "select\n"
                + "	per.*\n"
                + " from\n"
                + "	persona per\n"
                + " join\n"
                + "	profesor pro\n"
                + "    on per.persona_id = pro.persona_id\n"
                + " join\n"
                + "	proyecto_comision pco\n"
                + "    on pco.profesor_id = pro.profesor_id\n"
                + " where\n"
                + "	pro.activo = true\n"
                + "    and\n"
                + "    pco.role_proyecto_id = 100";
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
