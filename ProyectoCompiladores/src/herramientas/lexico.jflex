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
    tokens.get(contador).setNombre("Tipo de dato");
    //System.out.print(" tipo de dato ");
}
{ArchivoExcel} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Archivo");
    tokens.get(contador).setNombre("Archivo excel");
    //System.out.print(" Archivo excel ");
}
{PalClavFuncion} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Función");
    //System.out.print(" Palabra clave ");
}
{PalClavIncluir} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Incluir");
    //System.out.print(" Palabra clave ");
}
{PalClavClase} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("clase");
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
    tokens.get(contador).setNombre("Propiedades");
    //System.out.print(" Palabra clave ");
}
{PalClavVariables} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Variables");
    //System.out.print(" Palabra clave ");
}
{PalClavCodigo} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Código");
    //System.out.print(" Palabra clave ");
}
{PalClavMetodos} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Métodos");
    //System.out.print(" Palabra clave ");
}
{PalClavRetornar} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Retornar");
    //System.out.print(" Palabra clave ");
}
{PalClavEscribir} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Escribir");
    //System.out.print(" Palabra clave ");
}
{PalClavAbrir} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Abrir");
    //System.out.print(" Palabra clave ");
}
{PalClavInstanciar} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Instanciar");
    //System.out.print(" Palabra clave ");
}
{PalClavPropiedad} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Propiedad");
    //System.out.print(" Palabra clave ");
}
{PalClavArchivos} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Archivos");
    //System.out.print(" Palabra clave ");
}
{Argumentos} {
    System.out.print(" Argumento ");
}
{OperadorLogico} {
    System.out.print(" Lógico ");
}
{Numeros} {
    System.out.print(" Números ");
}
{identificador} {
    System.out.print(" Identificador ");
}
{OperadorMatematico} {
    System.out.print(" Matemático ");
}
{PuntoYComa} {
    System.out.print(" Fin de línea ");
}
{CondicionMayor} {
    System.out.print(" Mayor que ");
}
{CondicionMenor} {
    System.out.print(" Menor que ");
}
{CondicionIgual} {
    System.out.print(" Igual que ");
}
{CondicionDiferente} {
    System.out.print(" Diferente que ");
}
. { }
