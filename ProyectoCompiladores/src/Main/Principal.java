/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Collections;
import java.util.logging.Level;
import java.util.logging.Logger;
import proyectocompiladores.AnalisisSintactico;
import proyectocompiladores.Archivo;
import proyectocompiladores.ArrayListTokens;
import proyectocompiladores.Lexico;

/**
 *
 * @author Héctor Tello, hectortllo@gmail.com
 */
public class Principal {
    public static void main(String[] args) {
        try {
            Lexico lexico = new Lexico(new FileReader("src/Main/codigo.txt"));
            AnalisisSintactico sintactico = new AnalisisSintactico(lexico);
            try {
                sintactico.parse();
            } catch (Exception ex) {
                Logger.getLogger(Principal.class.getName()).log(Level.SEVERE, null, ex);
            }
            ArrayList<ArrayListTokens> tokens = Lexico.tokens;
            for(int i = 0; i <=tokens.size()-1; i++){
                System.out.print("Tipo de token: " + tokens.get(i).getTipo_token());
                System.out.println(" - Nombre: " + tokens.get(i).getNombre());
            }
            Collections.sort(tokens);
            Archivo miArchivo = new Archivo();
            miArchivo.escribirArchivo(tokens);
        } catch (FileNotFoundException ex) {
            Logger.getLogger(Principal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
