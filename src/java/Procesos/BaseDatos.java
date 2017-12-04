/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Procesos;
import Entidades.*;
import java.sql.*;
import java.util.*;
import javax.swing.*;
import Factory.Factory;
import java.io.PrintWriter;
/**
 *
 * @author roban
 */
public class BaseDatos {
    private static Factory factory;
    Connection conn = null;
    PreparedStatement st = null;
    ResultSet rs = null;
    
    String url = "jdbc:postgresql://190.87.217.209:5432/RestorantApp";
    String username = "postgres";
    String password = "0000";
    
    public boolean insertarRestaurante(int id, String nombre, String tipoComida, String direccion, int telefono, String horarios, String propietarios, String coordenadas, Double clasificacion){
        boolean exitoso = false;
        factory = new Factory();
        try {
            conn = DriverManager.getConnection(url, username, password);
            String SQLQuery = "INSERT INTO public.restaurantes (nombre, tipo_comida, direccion, telefono, horarios, propietario, coordenadas, clasificacion) VALUES (?,?,?,?,?,?,?, null)";
            st = conn.prepareStatement(SQLQuery);
            Restaurante restaurante = factory.restaurante(id, nombre, tipoComida, direccion, telefono, horarios, propietarios, coordenadas, clasificacion);
            //El setString sirve para saber que tipo de valor le va a pasar; el # sirve para saber de que posicion es, y lo otro es el valor que le va a pasar
            
            st.setString(1, restaurante.getNombre());
            st.setString(2, restaurante.getTipoComida());
            st.setString(3, restaurante.getDireccion());
            st.setInt(4, restaurante.getTelefono());
            st.setString(5, restaurante.getHorarios());
            st.setString(6, restaurante.getPropietarios());
            st.setString(7, restaurante.getCoordenadas());
            st.executeUpdate();
            
            exitoso = true;
            
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            exitoso = false;
        }
        finally{
            try {
                st.close();
            } catch (SQLException ex) {
                exitoso = false;
                ex.printStackTrace();
            }
        }
    return exitoso;
    }
    
    public boolean modificarRestaurante(int id, String nombre, String tipoComida, String direccion, int telefono, String horarios, String propietarios, String coordenadas, Double clasificacion){
        boolean exitoso = false;
        factory = new Factory();
        try {
            conn = DriverManager.getConnection(url, username, password);
            String SQLQuery = "UPDATE public.restaurantes "
                    + "SET nombre='"+nombre+"', tipo_comida='"+tipoComida+"', direccion='"+direccion+"', telefono="+telefono+", "
                    + "horarios='"+horarios+"', propietario='"+propietarios+"', coordenadas ='"+coordenadas+"' "
                    + "WHERE id_restaurante="+id+"";
            st = conn.prepareStatement(SQLQuery);
            st.executeUpdate();
            
            exitoso = true;
            
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            exitoso = false;
        }
        finally{
            try {
                st.close();
            } catch (SQLException ex) {
                exitoso = false;
                ex.printStackTrace();
            }
        }
    return exitoso;
    }
    
    public boolean eliminarRestaurante(int id){
        boolean exitoso = false;
        factory = new Factory();

        try {
            conn = DriverManager.getConnection(url, username, password);
            String SQLQuery = "DELETE FROM public.restaurantes WHERE id_restaurante="+id+"";
            st = conn.prepareStatement(SQLQuery);
            st.executeUpdate();
            
            exitoso = true;
            
            
            
        } catch (SQLException ex) {
            ex.printStackTrace();
            exitoso = false;
        }
        finally{
            try {
                st.close();
            } catch (SQLException ex) {
                exitoso = false;
                ex.printStackTrace();
            }
        }
    return exitoso;

    }

    public Restaurante restauranteByID(int idBusqueda){
        factory = new Factory();
        Restaurante restorant = null;
        
        try {
            conn = DriverManager.getConnection(url, username, password);
            String SQLQuery = "SELECT *  FROM public.restaurantes WHERE id_restaurante="+idBusqueda+"";
            st = conn.prepareStatement(SQLQuery);
            rs = st.executeQuery();
            
            while(rs.next()){
            int id = rs.getInt("id_restaurante");
            String nombre = rs.getString("nombre");
            String tipoComida = rs.getString("tipo_comida");
            String direccion = rs.getString("direccion");
            int telefono = rs.getInt("telefono"); 
            String horarios = rs.getString("horarios");
            String propietarios = rs.getString("propietario");
            String coordenadas = rs.getString("coordenadas");
            Double clasificacion = rs.getDouble("clasificacion");                         
            restorant = factory.restaurante(id, nombre, tipoComida, direccion, telefono, horarios, propietarios, coordenadas, clasificacion);
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        finally{
            try {
                st.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return restorant;
    }
    
    public ArrayList<Restaurante> obtenerRestaurantes(){
        factory = new Factory();
        ArrayList<Restaurante> listaRestaurantesBD = new ArrayList<Restaurante>();
        try {
            conn = DriverManager.getConnection(url, username, password);
            String SQLQuery = "SELECT * FROM public.restaurantes ORDER BY \"nombre\" ASC ";
            st = conn.prepareStatement(SQLQuery);
            rs = st.executeQuery();
            
            while(rs.next()){
                
                int id = rs.getInt("id_restaurante");
                String nombre = rs.getString("nombre");
                String tipoComida = rs.getString("tipo_comida");
                String direccion = rs.getString("direccion");
                int telefono = rs.getInt("telefono"); 
                String horarios = rs.getString("horarios");
                String propietarios = rs.getString("propietario");
                String coordenadas = rs.getString("coordenadas");
                Double clasificacion = rs.getDouble("clasificacion");
                         
                Restaurante restorant = factory.restaurante(id, nombre, tipoComida, direccion, telefono, horarios, propietarios, coordenadas, clasificacion);
                listaRestaurantesBD.add(restorant);
            }
            
        } catch (SQLException ex) {
            ex.printStackTrace();
        }
        finally{
            try {
                st.close();
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        }
        return listaRestaurantesBD;
    }
    
}
