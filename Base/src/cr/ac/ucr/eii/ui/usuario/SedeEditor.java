package cr.ac.ucr.eii.ui.usuario;

import cr.ac.ucr.eii.ui.pais.*;
import cr.ac.ucr.eii.data.IDato;
import cr.ac.ucr.eii.data.pais.Pais;
import cr.ac.ucr.eii.data.pais.PaisAdministrador;
import cr.ac.ucr.eii.ui.EstadoEdicion;
import cr.ac.ucr.eii.ui.IControlEditor;
import javax.swing.JOptionPane;

public class SedeEditor extends javax.swing.JFrame implements IControlEditor {

//    PaisControlEditor control;
    private Pais pais;
    EstadoEdicion estado;

    /**
     * Creates new form ContactEditor
     */
    public SedeEditor() {
        initComponents();
        setLocationRelativeTo(null);
//        control = new PaisControlEditor();
//        control.registrarVentana(this);

    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        buttonGroup1 = new javax.swing.ButtonGroup();
        jPanel1 = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        txtCodigo = new javax.swing.JTextField();
        jLabel5 = new javax.swing.JLabel();
        txtNombre = new javax.swing.JTextField();
        btnCancelar = new javax.swing.JButton();
        btnOk = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Detalle de proyecto");
        setMinimumSize(new java.awt.Dimension(800, 200));
        setSize(new java.awt.Dimension(800, 200));

        jPanel1.setBorder(javax.swing.BorderFactory.createTitledBorder(" Datos del país "));

        jLabel1.setText("Código");

        jLabel5.setText("Nombre");

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addGap(19, 19, 19)
                        .addComponent(jLabel1))
                    .addGroup(jPanel1Layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(jLabel5)))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(txtNombre, javax.swing.GroupLayout.DEFAULT_SIZE, 650, Short.MAX_VALUE)
                    .addComponent(txtCodigo))
                .addGap(6, 6, 6))
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(jPanel1Layout.createSequentialGroup()
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txtCodigo, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(txtNombre, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel5))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        btnCancelar.setIcon(new javax.swing.ImageIcon(getClass().getResource("/img/cross32.png"))); // NOI18N
        btnCancelar.setText("Cancelar");
        btnCancelar.setHorizontalTextPosition(javax.swing.SwingConstants.LEADING);

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
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnCancelar)
                    .addComponent(btnOk))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    public void cargarDatos() {
        pais.setCodigo(txtCodigo.getText());
        pais.setNombre(txtNombre.getText());
    }


    private void btnOkActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnOkActionPerformed
        PaisAdministrador administrador = new PaisAdministrador();
        cargarDatos();
        String pregunta = null;
        String titulo = null;
        switch (estado) {
            case AGREGAR:
                pregunta = "¿Desea agregar un nuevo país?";
                titulo = "Nuevo - País";
                break;
            case MODIFICAR:
                pregunta = "¿Desea modificar un país?";
                titulo = "Modificar - País";
                break;
            case ELIMINAR:
                pregunta = "¿Desea Eliminar un país?";
                titulo = "Eliminar - País";;
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
                    administrador.registrar(pais);
                    break;
                case MODIFICAR:
                    administrador.actualizar(pais);
                    break;
                case ELIMINAR:
                    administrador.eliminar(pais);
                    break;
            }
        }

        dispose();
    }//GEN-LAST:event_btnOkActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnCancelar;
    private javax.swing.JButton btnOk;
    private javax.swing.ButtonGroup buttonGroup1;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JTextField txtCodigo;
    private javax.swing.JTextField txtNombre;
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
        txtCodigo.setText("");
        txtNombre.setText("");
    }

    @Override
    public void bloquearEdicion(boolean bloqueado) {
        txtCodigo.setEditable(!bloqueado);
        txtNombre.setEditable(!bloqueado);
    }

    @Override
    public void mostrarDato(IDato dato) {
        Pais p = (Pais) dato;
        txtCodigo.setText(p.getCodigo());
        txtNombre.setText(p.getNombre());
    }

    @Override
    public void marcarCamposErroneos(boolean marcar) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public IDato leerDato() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public Pais getPais() {
        return pais;
    }

    public void setPais(Pais pais) {
        this.pais = pais;
        if (pais != null) {
            txtCodigo.setText(pais.getCodigo());
            txtNombre.setText(pais.getNombre());
        } else {
            txtCodigo.setText("");
            txtNombre.setText("");
        }
    }

}
