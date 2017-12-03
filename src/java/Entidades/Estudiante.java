/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Entidades;

/**
 *
 * @author robante15
 */
public class Estudiante {
    private String nombre;
    private int edad;
    private String carnet;

    public Estudiante(String nombre, String carnet, int edad) {
        this.nombre = nombre;
        this.edad = edad;
        this.carnet = carnet;
    }

    /**
     * @return the nombre
     */
    public String getNombre() {
        return nombre;
    }

    /**
     * @param nombre the nombre to set
     */
    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    /**
     * @return the apellido
     */
    public int getEdad() {
        return edad;
    }

    /**
     * @param edad the apellido to set
     */
    public void setEdad(int edad) {
        this.edad = edad;
    }

    /**
     * @return the carnet
     */
    public String getCarnet() {
        return carnet;
    }

    /**
     * @param carnet the carnet to set
     */
    public void setCarnet(String carnet) {
        this.carnet = carnet;
    }
}
