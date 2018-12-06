package Modelo;
// Generated 02-dic-2018 13:44:00 by Hibernate Tools 4.3.1



/**
 * Persona generated by hbm2java
 */
public class Persona  implements java.io.Serializable {


     private int id;
     private Telefono telefono;
     private String nombre;

    public Persona() {
    }

	
    public Persona(int id) {
        this.id = id;
    }
    public Persona(int id, Telefono telefono, String nombre) {
       this.id = id;
       this.telefono = telefono;
       this.nombre = nombre;
    }
   
    public int getId() {
        return this.id;
    }
    
    public void setId(int id) {
        this.id = id;
    }
    public Telefono getTelefono() {
        return this.telefono;
    }
    
    public void setTelefono(Telefono telefono) {
        this.telefono = telefono;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }




}


