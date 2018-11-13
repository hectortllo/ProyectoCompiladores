package herramientas;

import java.io.File;
import java.util.logging.Level;
import java.util.logging.Logger;
import jflex.SilentExit;

/**
 *
 * @author Héctor Tello, hectortllo@gmail.com
 */
public class GeneradorLexico {
    public static void main(String[] args) {

            String opciones[] = new String[3];
            opciones[0] = "-d";
            opciones[1] = "src" + File.separator + "proyectocompiladores";
            opciones[2] = "src" + File.separator + "herramientas" + File.separator
                    + "lexico.jflex";
        try {
            jflex.Main.generate(opciones);
        } catch (SilentExit ex) {
            Logger.getLogger(GeneradorLexico.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
