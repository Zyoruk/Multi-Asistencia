package Modelo;
// Generated 06-dic-2018 10:03:00 by Hibernate Tools 4.3.1



/**
 * Cliente generated by hbm2java
 */
public class Cliente  implements java.io.Serializable {


     private String idcli;
     private Telefonos telefonos;
     private String nombre;
     private Integer edad;
     private Character sexo;

    public Cliente() {
    }

	
    public Cliente(String idcli) {
        this.idcli = idcli;
    }
    public Cliente(String idcli, Telefonos telefonos, String nombre, Integer edad, Character sexo) {
       this.idcli = idcli;
       this.telefonos = telefonos;
       this.nombre = nombre;
       this.edad = edad;
       this.sexo = sexo;
    }
   
    public String getIdcli() {
        return this.idcli;
    }
    
    public void setIdcli(String idcli) {
        this.idcli = idcli;
    }
    public Telefonos getTelefonos() {
        return this.telefonos;
    }
    
    public void setTelefonos(Telefonos telefonos) {
        this.telefonos = telefonos;
    }
    public String getNombre() {
        return this.nombre;
    }
    
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    public Integer getEdad() {
        return this.edad;
    }
    
    public void setEdad(Integer edad) {
        this.edad = edad;
    }
    public Character getSexo() {
        return this.sexo;
    }
    
    public void setSexo(Character sexo) {
        this.sexo = sexo;
    }




}

