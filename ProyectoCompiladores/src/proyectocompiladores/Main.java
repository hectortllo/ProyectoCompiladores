package proyectocompiladores;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.logging.Level;
import java.util.logging.Logger;
import herramientas.Lexico;
import java.io.IOException;

/**
 *
 * @author Héctor Tello, hectortllo@gmail.com
 */
public class Main {
    public static void main(String[] args) {
        Lexico lexico = null;
        try {
            FileInputStream stream = new FileInputStream("src" + File.separator +
                    "proyectocompiladores" + File.separator + "codigo.txt");
            Reader reader = new InputStreamReader(stream);
            lexico = new Lexico(reader);
            while(!lexico.zzAtEOF) {
                try {
                    lexico.yylex();
                } catch (IOException ex) {
                    Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
                }
            }
            
        } catch (FileNotFoundException ex) {
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}