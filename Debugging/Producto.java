
public class Producto {


    private int idProducto;

    private String nombre;

    private double precio;

    private boolean activo;

    public Producto() {
    }

    public Producto(int idProducto, String nombre, double precio, boolean activo) {

        this.idProducto = idProducto;

        this.nombre = nombre;

        this.precio = precio;

        this.activo = activo;

    }


  

    public int getIdProducto() {
        return this.idProducto;
    }

    public void setIdProducto(int idProducto) {
        this.idProducto = idProducto;
    }


    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }


    public double getPrecio() {
        return this.precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }


    public boolean getActivo() {
        return this.activo;
    }

    public void setActivo(boolean activo) {
        this.activo = activo;
    }




    public boolean hayStock() {
        // ToDo

        return false;

    }


}
