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
import java.util.ArrayList;
import java.util.Collections;

/**
 *
 * @author Héctor Tello, hectortllo@gmail.com
 */
public class Main {

    public static void main(String[] args) {
        Lexico lexico = null;
        try {
            FileInputStream stream = new FileInputStream("src" + File.separator
                    + "proyectocompiladores" + File.separator + "codigo.txt");
            Reader reader = new InputStreamReader(stream);
            lexico = new Lexico(reader);
            while (!lexico.zzAtEOF) {
                try {
                    lexico.yylex();
                } catch (IOException ex) {
                    Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
                }
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
            Logger.getLogger(Main.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}