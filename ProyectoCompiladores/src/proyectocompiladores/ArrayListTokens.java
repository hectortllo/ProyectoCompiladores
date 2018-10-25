/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectocompiladores;

/**
 *
 * @author Héctor Tello, hectortllo@gmail.com
 */
public class ArrayListTokens implements Comparable<ArrayListTokens>{

    public String getTipo_token() {
        return tipo_token;
    }

    public void setTipo_token(String tipo_token) {
        this.tipo_token = tipo_token;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    private String tipo_token;
    private String nombre;

    @Override
    public int compareTo(ArrayListTokens o) {
        return tipo_token.compareTo(o.tipo_token);
    }
}