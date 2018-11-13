/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Main;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.util.logging.Level;
import java.util.logging.Logger;
import proyectocompiladores.AnalisisSintactico;
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
        } catch (FileNotFoundException ex) {
            Logger.getLogger(Principal.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
