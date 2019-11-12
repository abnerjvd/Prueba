package cr.ac.ucr.eii.data;

/**
 *
 * @author  Mauricio Andrés Zamora Hernández
 */
public class Dato implements IDato {

    private Integer id;
    
    @Override
    public Integer getId() {
        return id;
    }

    @Override
    public void setId(Integer id) {
        this.id = id;
    }
    
}
