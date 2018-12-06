package Modelo;
// Generated 06-dic-2018 13:08:09 by Hibernate Tools 4.3.1


import java.util.HashSet;
import java.util.Set;

/**
 * Clientes generated by hbm2java
 */
public class Clientes  implements java.io.Serializable {


     private int idclientes;
     private Credenciales credenciales;
     private TipoUsuario tipoUsuario;
     private String nombre;
     private String primerApellido;
     private String segundoApellido;
     private Set<Poliza> polizas = new HashSet<Poliza>(0);

    public Clientes() {
    }

	
    public Clientes(int idclientes, Credenciales credenciales, TipoUsuario tipoUsuario, String nombre) {
        this.idclientes = idclientes;
        this.credenciales = credenciales;
        this.tipoUsuario = tipoUsuario;
        this.nombre = nombre;
    }
    public Clientes(int idclientes, Credenciales credenciales, TipoUsuario tipoUsuario, String nombre, String primerApellido, String segundoApellido, Set<Poliza> polizas) {
       this.idclientes = idclientes;
       this.credenciales = credenciales;
       this.tipoUsuario = tipoUsuario;
       this.nombre = nombre;
       this.primerApellido = primerApellido;
       this.segundoApellido = segundoApellido;
       this.polizas = polizas;
    }
   
    public int getIdclientes() {
        return this.idclientes;
    }
    
    public void setIdclientes(int idclientes) {
        this.idclientes = idclientes;
    }
    public Credenciales getCredenciales() {
        return this.credenciales;
    }
    
    public void setCredenciales(Credenciales credenciales) {
        this.credenciales = credenciales;
    }
    public TipoUsuario getTipoUsuario() {
        return this.tipoUsuario;
    }
    
    public void setTipoUsuario(TipoUsuario tipoUsuario) {
        this.tipoUsuario = tipoUsuario;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public String getPrimerApellido() {
        return this.primerApellido;
    }
    
    public void setPrimerApellido(String primerApellido) {
        this.primerApellido = primerApellido;
    }
    public String getSegundoApellido() {
        return this.segundoApellido;
    }
    
    public void setSegundoApellido(String segundoApellido) {
        this.segundoApellido = segundoApellido;
    }
    public Set<Poliza> getPolizas() {
        return this.polizas;
    }
    
    public void setPolizas(Set<Poliza> polizas) {
        this.polizas = polizas;
    }




}


