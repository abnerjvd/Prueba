package cr.ac.ucr.eii.ui.empresa;

import cr.ac.ucr.eii.data.IDato;
import cr.ac.ucr.eii.data.canton.Canton;
import cr.ac.ucr.eii.data.canton.CantonAdministrador;
import cr.ac.ucr.eii.data.distrito.Distrito;
import cr.ac.ucr.eii.data.distrito.DistritoAdministrador;
import cr.ac.ucr.eii.data.empresa.Empresa;
import cr.ac.ucr.eii.data.empresa.EmpresaAdministrador;
import cr.ac.ucr.eii.data.provincia.Provincia;
import cr.ac.ucr.eii.data.provincia.ProvinciaAdministrador;
import cr.ac.ucr.eii.ui.EstadoEdicion;
import cr.ac.ucr.eii.ui.IControlEditor;
import cr.ac.ucr.eii.ui_utils.ComboboxUtils;
import java.util.List;
import javax.swing.DefaultComboBoxModel;
import javax.swing.JOptionPane;

public class EmpresaEditor extends javax.swing.JFrame implements IControlEditor {

//    EmpresaControlEditor control;
    private Empresa empresa;
    private EstadoEdicion estado;
    private ProvinciaAdministrador provinciaAdmin;
    private CantonAdministrador cantonAdmin;
    private DistritoAdministrador distritoAdmin;

    /**
     * Creates new form ContactEditor
     */
    public EmpresaEditor() {
        initComponents();
        setLocationRelativeTo(null);
        provinciaAdmin = new ProvinciaAdministrador();
        cantonAdmin = new CantonAdministrador();
        distritoAdmin = new DistritoAdministrador();
//        control = new EmpresaControlEditor();
//        control.registrarVentana(this);

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtId = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        txtNombre = new javax.swing.JTextField();
        jLabel6 = new javax.swing.JLabel();
        txtTelefono = new javax.swing.JTextField();
        jLabel7 = new javax.swing.JLabel();
        txtCorreo = new javax.swing.JTextField();
        jLabel8 = new javax.swing.JLabel();
        cboProvincia = new javax.swing.JComboBox<>();
        cboCanton = new javax.swing.JComboBox<>();
        cboDistrito = new javax.swing.JComboBox<>();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        btnCancelar = new javax.swing.JButton();
        btnOk = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Detalle de proyecto");
        setMinimumSize(new java.awt.Dimension(800, 200));
        setSize(new java.awt.Dimension(800, 200));
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowActivated(java.awt.event.WindowEvent evt) {
                formWindowActivated(evt);
            }
            public void windowOpened(java.awt.event.WindowEvent evt) {
                formWindowOpened(evt);
            }
        });

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(" Datos del empresa "));

        jLabel1.setText("Identificación");

        jLabel5.setText("Nombre");

        jLabel6.setText("Teléfono");

        jLabel7.setText("Correo electrónico");

        jLabel8.setText("Provincia");

        cboProvincia.setModel(new DefaultComboBoxModel<Provincia>()
        );
        cboProvincia.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cboProvinciaItemStateChanged(evt);
            }
        });

        cboCanton.setModel(new DefaultComboBoxModel<Canton>());
        cboCanton.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                cboCantonItemStateChanged(evt);
            }
        });

        cboDistrito.setModel(new DefaultComboBoxModel<Distrito>());

        jLabel9.setText("Cantón");

        jLabel10.setText("Distrito");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jLabel1, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel5, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel6, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel7, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel8, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel9, javax.swing.GroupLayout.Alignment.TRAILING)
                    .addComponent(jLabel10, javax.swing.GroupLayout.Alignment.TRAILING))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtNombre, javax.swing.GroupLayout.DEFAULT_SIZE, 573, Short.MAX_VALUE)
                    .addComponent(txtId)
                    .addComponent(txtCorreo, javax.swing.GroupLayout.DEFAULT_SIZE, 573, Short.MAX_VALUE)
                    .addComponent(txtTelefono, javax.swing.GroupLayout.DEFAULT_SIZE, 573, Short.MAX_VALUE)
                    .addComponent(cboProvincia, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(cboCanton, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(cboDistrito, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addContainerGap())
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txtId, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtNombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5))
                .addGap(9, 9, 9)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtTelefono, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel6))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtCorreo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel7))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cboProvincia, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel8))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cboCanton, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel9))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(cboDistrito, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel10))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        btnCancelar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/cross32.png"))); // NOI18N
        btnCancelar.setText("Cancelar");
        btnCancelar.setHorizontalTextPosition(javax.swing.SwingConstants.LEADING);
        btnCancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnCancelarActionPerformed(evt);
            }
        });

        btnOk.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/check_mark32.png"))); // NOI18N
        btnOk.setText("OK");
        btnOk.setHorizontalTextPosition(javax.swing.SwingConstants.LEADING);
        btnOk.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnOkActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                        .addGap(0, 0, Short.MAX_VALUE)
                        .addComponent(btnOk)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(btnCancelar)))
                .addContainerGap())
        );

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {btnCancelar, btnOk});

        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, 266, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 26, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnCancelar)
                    .addComponent(btnOk))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    public void cargarDatos() {
        Integer valor;
        empresa.setNumeroIdentificacion(txtId.getText());
        empresa.setNombre(txtNombre.getText());
        empresa.setTelefonoPrincipal(txtTelefono.getText());
        empresa.setCorreoElectronicoPrincipal(txtCorreo.getText());
        Provincia provincia = (Provincia) cboProvincia.getSelectedItem();
        valor = provincia != null ? provincia.getId() : null;
        empresa.setProvincia(valor);
        Canton canton = (Canton) cboCanton.getSelectedItem();
        valor = canton != null ? canton.getId() : null;
        empresa.setCanton(valor);
        Distrito distrito = (Distrito) cboDistrito.getSelectedItem();
        valor = distrito != null ? distrito.getId() : null;
        empresa.setDistrito(valor);
    }


    private void btnOkActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnOkActionPerformed
        EmpresaAdministrador administrador = new EmpresaAdministrador();
        cargarDatos();
        String pregunta = null;
        String titulo = null;
        switch (estado) {
            case AGREGAR:
                pregunta = "¿Desea agregar una nueva empresa?";
                titulo = "Nuevo - Empresa";
                break;
            case MODIFICAR:
                pregunta = "¿Desea modificar una empresa?";
                titulo = "Modificar - Empresa";
                break;
            case ELIMINAR:
                pregunta = "¿Desea eliminar una empresa?";
                titulo = "Eliminar - Empresa";
                ;
                break;
        }
        Object[] options = {"SI",
            "NO"};
        int n = JOptionPane.showOptionDialog(this,
                pregunta,
                titulo,
                JOptionPane.YES_NO_OPTION,
                JOptionPane.QUESTION_MESSAGE,
                null,
                options,
                options[0]);
        if (n == 0) {
            switch (estado) {
                case AGREGAR:
                    administrador.registrar(empresa);
                    break;
                case MODIFICAR:
                    administrador.actualizar(empresa);
                    break;
                case ELIMINAR:
                    administrador.eliminar(empresa);
                    break;
            }
        }

        dispose();
    }//GEN-LAST:event_btnOkActionPerformed

    private void btnCancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnCancelarActionPerformed
        dispose();
    }//GEN-LAST:event_btnCancelarActionPerformed

    private void formWindowOpened(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowOpened
//        JOptionPane.showMessageDialog(null, "Opened");
        List<Provincia> provincia = provinciaAdmin.listarTodos();
        ((DefaultComboBoxModel) cboProvincia.getModel()).addAll(provincia);
        desplegar();
    }//GEN-LAST:event_formWindowOpened

    private void formWindowActivated(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowActivated

    }//GEN-LAST:event_formWindowActivated

    private void cboProvinciaItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cboProvinciaItemStateChanged
//        JOptionPane.showMessageDialog(this, cboProvincia.getSelectedItem());
        Provincia provincia = (Provincia) cboProvincia.getSelectedItem();
        List<Canton> cantones = cantonAdmin.buscar(provincia.getId(), null);
        ((DefaultComboBoxModel) cboCanton.getModel()).removeAllElements();
        ((DefaultComboBoxModel) cboCanton.getModel()).addAll(cantones);
    }//GEN-LAST:event_cboProvinciaItemStateChanged

    private void cboCantonItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_cboCantonItemStateChanged
        Canton canton = (Canton) cboCanton.getSelectedItem();
        List<Distrito> distritos = distritoAdmin.buscar(canton.getId(), null);
        ((DefaultComboBoxModel) cboDistrito.getModel()).removeAllElements();
        ((DefaultComboBoxModel) cboDistrito.getModel()).addAll(distritos);
    }//GEN-LAST:event_cboCantonItemStateChanged


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCancelar;
    private javax.swing.JButton btnOk;
    private javax.swing.JComboBox<Canton> cboCanton;
    private javax.swing.JComboBox<Distrito> cboDistrito;
    private javax.swing.JComboBox<Provincia> cboProvincia;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField txtCorreo;
    private javax.swing.JTextField txtId;
    private javax.swing.JTextField txtNombre;
    private javax.swing.JTextField txtTelefono;
    // End of variables declaration//GEN-END:variables

    @Override
    public void establecerEstado(EstadoEdicion estado) {
//        control.establecerEstado(estado);
        this.estado = estado;
    }

    @Override
    public EstadoEdicion obtenerEstado() {
//        return control.obtenerEstado();
        return estado;
    }

    @Override
    public void limpiarVentana() {
        txtId.setText("");
        txtNombre.setText("");
    }

    @Override
    public void bloquearEdicion(boolean bloqueado) {
        txtId.setEditable(!bloqueado);
        txtNombre.setEditable(!bloqueado);
    }

    @Override
    public void mostrarDato(IDato dato) {
        Empresa p = (Empresa) dato;
        txtId.setText(p.getNumeroIdentificacion());
        txtNombre.setText(p.getNombre());
        txtTelefono.setText(p.getTelefonoPrincipal());
        txtCorreo.setText(p.getCorreoElectronicoPrincipal());
    }

    @Override
    public void marcarCamposErroneos(boolean marcar) {

    }

    @Override
    public IDato leerDato() {
        return null;
    }

    public Empresa getDato() {
        return empresa;
    }
    
    public void desplegar() {
       
        if (empresa != null) {
            txtId.setText(empresa.getNumeroIdentificacion());
            txtNombre.setText(empresa.getNombre());
            txtTelefono.setText(empresa.getTelefonoPrincipal());
            txtCorreo.setText(empresa.getCorreoElectronicoPrincipal());
            ComboboxUtils.seleccionarItem(cboProvincia, empresa.getProvincia());
            ComboboxUtils.seleccionarItem(cboCanton, empresa.getCanton());
            ComboboxUtils.seleccionarItem(cboDistrito, empresa.getDistrito());
        } else {
            txtId.setText("");
            txtNombre.setText("");
            txtTelefono.setText("");
            txtCorreo.setText("");
        }
    }

    public void setDato(Empresa empresa) {
        this.empresa = empresa;
        if (empresa != null) {
            txtId.setText(empresa.getNumeroIdentificacion());
            txtNombre.setText(empresa.getNombre());
            txtTelefono.setText(empresa.getTelefonoPrincipal());
            txtCorreo.setText(empresa.getCorreoElectronicoPrincipal());
            ComboboxUtils.seleccionarItem(cboProvincia, empresa.getProvincia());
            ComboboxUtils.seleccionarItem(cboCanton, empresa.getCanton());
            ComboboxUtils.seleccionarItem(cboDistrito, empresa.getDistrito());
        } else {
            txtId.setText("");
            txtNombre.setText("");
            txtTelefono.setText("");
            txtCorreo.setText("");
        }
    }

}
