package herramientas;

%%
%class Lexico
%line
%column
%public
%standalone

FinDeLinea = \r|\n|\r\n
Numero = 0 | [1-9][0-9]*
%%

{FinDeLinea} {
    System.out.println("Fin de línea");
}
. { }