
public class Empleado extends Persona {


    private int idEmpleado;

    private double sueldo;

    public Empleado() {
    }

    public Empleado(int idPersona, String nombre, String email, int idEmpleado, double sueldo) {

        super(idPersona, nombre, email);

        this.idEmpleado = idEmpleado;

        this.sueldo = sueldo;

    }


  

    public int getIdEmpleado() {
        return this.idEmpleado;
    }

    public void setIdEmpleado(int idEmpleado) {
        this.idEmpleado = idEmpleado;
    }


    public double getSueldo() {
        return this.sueldo;
    }

    public void setSueldo(double sueldo) {
        this.sueldo = sueldo;
    }




    public boolean calcularNomina(int mes, double total) {
        // ToDo

        return false;

    }


}
