package herramientas;
import proyectocompiladores.ArrayListTokens;
import java.util.ArrayList;

%%
%class Lexico
%line
%column
%public

%standalone
%init{
    this.tokens = new ArrayList<>();
%init}

%{
    public static ArrayList<ArrayListTokens> tokens;
    public static int contador = -1;
%}
TipoDeDato = cadena | numero | booleano
LineTerminator = \r|\n|\r\n
WhiteSpace = \s
Numeros = 0 | [1-9][0-9]*
Letras = [a-zA-Z]*
LetrasIdentificador = [a-z]*

ParentesisAbre = \(
ParentesisCierre = \)
PuntoYComa = \;
DosPuntos = \:
GuionBajo = \_
Punto = \.
Igual = \=
Diferente = \!
CondicionMayor = \>
CondicionMenor = \<
CondicionIgual = {Igual}{Igual}
CondicionDiferente = {Diferente}{Igual}

identificador = {LetrasIdentificador}{Letras} | {LetrasIdentificador}{Letras}{Numeros}
Argumentos = {ParentesisAbre}{TipoDeDato}{WhiteSpace}{identificador}{ParentesisCierre}

DeclaracionPrincipal = {PalClavFuncion}{WhiteSpace}numero{WhiteSpace}{PalClavPrincipal}{ParentesisAbre}{ParentesisCierre}{DosPuntos} |
            {PalClavFuncion}{WhiteSpace}numero{WhiteSpace}{PalClavPrincipal}{Argumentos}{DosPuntos}
DeclaracionClase = {PalClavClase}{WhiteSpace}{identificador}{DosPuntos}
ArchivoExcel = {identificador}{Punto}xslx

PalClavIterar = iterar
PalClavIncDec = incrementar | decrementar
PalClavDesde = desde
PalClavMientras = mientras
PalClavPrincipal = principal
PalClavFuncion = funcion
PalClavIncluir = incluir
PalClavClase = clase
PalClavPropiedades = propiedades
PalClavVariables = variables
PalClavCodigo = codigo
PalClavMetodos = metodos
PalClavRetornar = retornar
PalClavEscribir = escribir
PalClavAbrir = abrir
PalClavInstanciar = instanciar
PalClavPropiedad = propiedad
PalClavArchivos = archivos

OperadorMatematico = \+ | \- | \* | \/ | \= | \^ | \%
OperadorLogico = AND | OR
%%
{DeclaracionPrincipal} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Función Principal");
    //System.out.print(" Función principal ");
}
/*{DeclaracionClase} {
    System.out.print(" Declaración clase ");
}*/
{TipoDeDato} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" tipo de dato ");
}
{ArchivoExcel} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Archivo");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Archivo excel ");
}
{PalClavFuncion} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
}
{PalClavIncluir} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
}
{PalClavClase} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
    /*for(int i=0; i<=contador; i++){
        System.out.println("Tipo de token: " + tokens.get(i).getTipo_token());
        System.out.println("Tipo de token: " + tokens.get(i).getNombre());
    }*/
    //    System.out.println("Clase");
}
{PalClavPropiedades} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
}
{PalClavVariables} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
}
{PalClavCodigo} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
}
{PalClavMetodos} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
}
{PalClavRetornar} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
}
{PalClavEscribir} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
}
{PalClavAbrir} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
}
{PalClavInstanciar} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
}
{PalClavPropiedad} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
}
{PalClavArchivos} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
}
/*{Argumentos} {
    System.out.print(" Argumento ");
}*/
{OperadorLogico} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Operador Lógico");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Lógico ");
}
{Numeros} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Números");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Números ");
}
{identificador} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Identificador");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Identificador ");
}
{OperadorMatematico} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Operador matemático");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Matemático ");
}
{PuntoYComa} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Fin de línea");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Fin de línea ");
}
{CondicionMayor} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Condiciones");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Mayor que ");
}
{CondicionMenor} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Condiciones");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Menor que ");
}
{CondicionIgual} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Condiciones");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Igual que ");
}
{CondicionDiferente} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Condiciones");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Diferente que ");
    for(int i=0; i<=contador; i++){
        System.out.print("Tipo de token: " + tokens.get(i).getTipo_token());
        System.out.println("    Nombre: " + tokens.get(i).getNombre());
    }
}
. { }
