
public abstract class Persona {


    private int idPersona;

    private String nombre;

    private String email;

    public Persona() {
    }

    public Persona(int idPersona, String nombre, String email) {

        this.idPersona = idPersona;

        this.nombre = nombre;

        this.email = email;

    }


  

    public int getIdPersona() {
        return this.idPersona;
    }

    public void setIdPersona(int idPersona) {
        this.idPersona = idPersona;
    }


    public String getNombre() {
        return this.nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }


    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }




    public boolean validarEmail(String email) {
        // ToDo

        return false;

    }


}
