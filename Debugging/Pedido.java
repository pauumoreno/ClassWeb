
import java.util.Date;

public class Pedido {


    private int idPedido;

    private Date fecha;

    private double total;

    public Pedido() {
    }

    public Pedido(int idPedido, Date fecha, double total) {

        this.idPedido = idPedido;

        this.fecha = fecha;

        this.total = total;

    }


  

    public int getIdPedido() {
        return this.idPedido;
    }

    public void setIdPedido(int idPedido) {
        this.idPedido = idPedido;
    }


    public Date getFecha() {
        return this.fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }


    public double getTotal() {
        return this.total;
    }

    public void setTotal(double total) {
        this.total = total;
    }




    public double aplicarDescuento(double porcentaje) {
        // ToDo

        return 0;

    }


}
