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
Comillas = \"
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
{WhiteSpace} {
}
{PalClavPrincipal} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Función principal ");
}
{TipoDeDato} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Tipo de Dato");
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
{DosPuntos} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
}
{ParentesisAbre} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
}
{ParentesisCierre} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
}
{Comillas} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
}
{Punto} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
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
}
. { }
