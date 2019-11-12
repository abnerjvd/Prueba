package cr.ac.ucr.eii.data.role_acceso;

import cr.ac.ucr.eii.data.Dato;

/**
 *
 * @author Mauricio Andrés Zamora Hernández
 */
public class RoleAcceso extends Dato {

    private Integer roleId;
    private Integer roleElementoId;
    private String acceso;

    public String getTipoAcceso() {
        return acceso;
    }

    public void setTipoAcceso(String acceso) {
        this.acceso = acceso;
    }

    public Integer getRoleId() {
        return roleId;
    }

    public void setRoleId(Integer roleId) {
        this.roleId = roleId;
    }

    public Integer getRoleElementoId() {
        return roleElementoId;
    }

    public void setRoleElementoId(Integer roleElementoId) {
        this.roleElementoId = roleElementoId;
    }

}
