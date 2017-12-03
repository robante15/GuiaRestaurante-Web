/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

/**
 *
 * @author roban
 */
public class Restaurante {
    private int id;
    private String nombre;
    private String tipoComida;
    private String direccion;
    private int telefono; 
    private String horarios;
    private String propietarios;
    private String coordenadas;
    private Double clasificacion;

    public Restaurante(int id, String nombre, String tipoComida, String direccion, int telefono, String horarios, String propietarios, String coordenadas, Double clasificacion) {
        this.id = id;
        this.nombre = nombre;
        this.tipoComida = tipoComida;
        this.direccion = direccion;
        this.telefono = telefono;
        this.horarios = horarios;
        this.propietarios = propietarios;
        this.coordenadas = coordenadas;
        this.clasificacion = clasificacion;
    }

    public Double getClasificacion() {
        return clasificacion;
    }

    public void setClasificacion(Double clasificacion) {
        this.clasificacion = clasificacion;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getTipoComida() {
        return tipoComida;
    }

    public void setTipoComida(String tipoComida) {
        this.tipoComida = tipoComida;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public String getHorarios() {
        return horarios;
    }

    public void setHorarios(String horarios) {
        this.horarios = horarios;
    }

    public String getPropietarios() {
        return propietarios;
    }

    public void setPropietarios(String propietarios) {
        this.propietarios = propietarios;
    }

    public String getCoordenadas() {
        return coordenadas;
    }

    public void setCoordenadas(String coordenadas) {
        this.coordenadas = coordenadas;
    }
    
    
}

