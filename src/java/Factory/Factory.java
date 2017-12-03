/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Factory;
import Procesos.*;
import Servlet.*;
import Entidades.*;


/**
 *
 * @author roban
 */
public class Factory {
    
    //Instancia de Procesos
    public BaseDatos baseDatos(){
        return new BaseDatos();
    }
    
    //Instancia de Entidades
    public Estudiante estudiante(String id_carnet, String nombre, int edad){
        return new Estudiante(id_carnet, nombre, edad);
    }
    
    public Restaurante restaurante(int id, String nombre, String tipoComida, String direccion, int telefono, String horarios, String propietarios, String coordenadas, Double clasificacion){
        return new Restaurante(id, nombre, tipoComida, direccion, telefono, horarios, propietarios, coordenadas, clasificacion);
    }
    
    
}
