
public class Cliente extends Persona {


    private int idCliente;

    private int puntos;

    public Cliente() {
    }

    public Cliente(int idPersona, String nombre, String email, int idCliente, int puntos) {

        super(idPersona, nombre, email);

        this.idCliente = idCliente;

        this.puntos = puntos;

    }


  

    public int getIdCliente() {
        return this.idCliente;
    }

    public void setIdCliente(int idCliente) {
        this.idCliente = idCliente;
    }


    public int getPuntos() {
        return this.puntos;
    }

    public void setPuntos(int puntos) {
        this.puntos = puntos;
    }




    public int sumarPuntos(int cantidad) {
        // ToDo

        return 0;

    }


}
