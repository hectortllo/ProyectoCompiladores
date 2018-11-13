/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package herramientas;

import java.io.File;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Héctor Tello, hectortllo@gmail.com
 */
public class GeneradorSintactico {
    public static void main(String[] args) {
        String opciones[] = new String[5];
        opciones[0] = "-destdir";
        opciones[1] = "src" + File.separator + "proyectocompiladores";
        opciones[2] = "-parser";
        opciones[3] = "AnalisisSintactico";
        opciones[4] = "src" + File.separator + "herramientas"
                + File.separator + "sintactico.cup";
        try {
            java_cup.Main.main(opciones);
        } catch (IOException ex) {
            Logger.getLogger(GeneradorSintactico.class.getName()).log(Level.SEVERE, null, ex);
        } catch (Exception ex) {
            Logger.getLogger(GeneradorSintactico.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}