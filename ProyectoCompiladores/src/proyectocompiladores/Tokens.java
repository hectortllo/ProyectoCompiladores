package proyectocompiladores;

/**
 *
 * @author Héctor Tello, hectortllo@gmail.com
 */
public class Tokens {
    private int col;
    private int row;
    private String lexema;

    public Tokens(int columna, int fila, String lexema) {
        this.col = columna;
        this.row = fila;
        this.lexema = lexema;
    }

    public int getCol() {
        return col;
    }

    public void setCol(int columna) {
        this.col = columna;
    }

    public int getRow() {
        return row;
    }

    public void setRow(int fila) {
        this.row = fila;
    }

    public String getLexema() {
        return lexema;
    }

    public void setLexema(String lexema) {
        this.lexema = lexema;
    }
}
