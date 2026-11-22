
public class LineaPedido {


    private int idLinea;

    private int cantidad;

    private double precio;

    public LineaPedido() {
    }

    public LineaPedido(int idLinea, int cantidad, double precio) {

        this.idLinea = idLinea;

        this.cantidad = cantidad;

        this.precio = precio;

    }


  

    public int getIdLinea() {
        return this.idLinea;
    }

    public void setIdLinea(int idLinea) {
        this.idLinea = idLinea;
    }


    public int getCantidad() {
        return this.cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }


    public double getPrecio() {
        return this.precio;
    }

    public void setPrecio(double precio) {
        this.precio = precio;
    }




    public double subtotal() {
        // ToDo

        return 0;

    }


}
