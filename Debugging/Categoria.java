
public class Categoria {


    private int idCategoria;

    private String nombre;

    public Categoria() {
    }

    public Categoria(int idCategoria, String nombre) {

        this.idCategoria = idCategoria;

        this.nombre = nombre;

    }


  

    public int getIdCategoria() {
        return this.idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }


    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }




}
