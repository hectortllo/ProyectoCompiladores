/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package herramientas;

import java.io.File;

/**
 *
 * @author Héctor Tello, hectortllo@gmail.com
 */
public class GeneradorLexico {
    public static void main(String[] args) {
        jflex.Main.generate(new File(
                "src" + File.separator + "herramientas" + File.separator 
                + "lexico.jflex"
        ));
    }
}
