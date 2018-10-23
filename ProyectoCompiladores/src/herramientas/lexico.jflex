package herramientas;

%%
%class Lexico
%line
%column
%public
%standalone

TipoDeDato = cadena | numero | booleano
LineTerminator = \r|\n|\r\n
WhiteSpace = \s
Numeros = 0 | [1-9][0-9]*
Letras = [a-zA-Z]*

DeclaracionFunciones = funcion 
ParentesisAbre = \(
ParentesisCierre = \)
PuntoYComa = \;
DosPuntos = \:
GuionBajo = \_
identificador = {Letras} | {Letras}{Numeros}
Argumentos = {TipoDeDato}{WhiteSpace}{identificador}
Principal = {DeclaracionFunciones}{WhiteSpace}numero{WhiteSpace}principal{ParentesisAbre}{ParentesisCierre}{DosPuntos} |
            {DeclaracionFunciones}{WhiteSpace}numero{WhiteSpace}principal{ParentesisAbre}{Argumentos}
                {ParentesisCierre}{DosPuntos}
PalabrasClave = incluir | clase | propiedades | variables | codigo | metodos | retornar | escribir | abrir | 
                instanciar | propiedad | archivos

OperadorMatematico = \+ | \- | \* | \/ | \= | \^
OperadorLogico = AND | OR
%%
{Principal} {
    System.out.print("Función principal");
}
{TipoDeDato} {
    System.out.print("tipo de dato");
}
{PalabrasClave} {
    System.out.print("Palabra clave");
}
{Argumentos} {
    System.out.print("Argumento");
}
{OperadorLogico} {
    System.out.print("Lógico");
}
{Numeros} {
    System.out.print("Números");
}
{identificador} {
    System.out.print("Identificador");
}
{OperadorMatematico} {
    System.out.print("Matemático");
}
. { }