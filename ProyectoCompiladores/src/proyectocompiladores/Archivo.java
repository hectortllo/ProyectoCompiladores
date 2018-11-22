/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package proyectocompiladores;

import java.io.DataOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import GUI.Principal;

/**
 *
 * @author Oswaldo Alvarez <mynoswaldo@gmail.com>
 */
public class Archivo {

    public void escribirArchivo(ArrayList<ArrayListTokens> token) {
        try {
            verificar();
            FileOutputStream archivo = new FileOutputStream("Tokens.txt");
            DataOutputStream stream = new DataOutputStream(archivo);
            for (int i = 0; i <= token.size() - 1; i++) {
                stream.writeChars("Tipo de token: "+token.get(i).getTipo_token()+". Nombre: "+token.get(i).getNombre());
                stream.writeChar(10);
            }
            stream.close();
            archivo.close();
        } catch (FileNotFoundException ex) {
            Logger.getLogger(Archivo.class.getName()).log(Level.SEVERE, null, ex);
        } catch (IOException ex) {
            Logger.getLogger(Archivo.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    private void verificar(){
    File f = new File("Tokens.txt");
    if(f.exists()){
        f.delete();
        }
    }
}
