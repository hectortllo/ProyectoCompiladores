package proyectocompiladores;
import proyectocompiladores.ArrayListTokens;
import java.util.ArrayList;
import java_cup.runtime.Symbol;

%%
%class Lexico
%line
%column
%cup
%public

%eofval{
  //System.out.println("Fin de archivo encontrado");
  return new Symbol(sym.EOF);
%eofval}
%eofclose

%init{
    this.tokens = new ArrayList<>();
%init}

%{
    public static ArrayList<ArrayListTokens> tokens;
    public static int contador = -1;
%}
TipoDeDato = cadena | numero | booleano
Tabulador = \t
Tabuladores = {Tabulador}*
LineTerminator = \r|\n|\r\n
WhiteSpace = \s
Numeros = 0 | [1-9][0-9]*
Letras = [a-zA-Z]*
LetrasIdentificador = [a-z]*
ArchivoLed = {identificador}{Punto}led
Mensaje = {Comillas}({WhiteSpace}*{Letras}*{WhiteSpace}*)*{Comillas}
Comentarios = {Diagonal}{Diagonal}({WhiteSpace}*{Letras}*{WhiteSpace}*)*{LineTerminator}

Diagonal = \/
ParentesisAbre = \(
ParentesisCierre = \)
CorcheteAbre = \[
CorcheteCierre = \]
Comillas = \"
PuntoYComa = \;
DosPuntos = \:
Coma = \,
GuionBajo = \_
Punto = \.
Igual = \=
Diferente = \!
CondicionMayor = \>
CondicionMenor = \<
Suma = \+
Resta = \-
CondicionIgual = {Igual}{Igual}
CondicionDiferente = {Diferente}{Igual}

ArchivoSuma = {Punto}suma
ArchivoResta = {Punto}resta
ArchivoPromedio = {Punto}promedio
ArchivoModa = {Punto}moda
ArchivoMedia = {Punto}media
ArchivoMayor = {Punto}mayor
ArchivoMenor = {Punto}menor

identificador = {LetrasIdentificador}{Letras} | {LetrasIdentificador}{Letras}{Numeros} | 
                {LetrasIdentificador}{GuionBajo}{Letras}{Numeros}*
ArchivoExcel = {identificador}{Punto}xslx | {identificador}{Punto}ods
AccediendoPropiedad = {Tabuladores}{PalClavPropiedad}{Punto}{identificador}
PalClavIterar = iterar
PalClavEn = en
PalClavInc = incrementar
PalClavDec = decrementar
PalClavDesde = desde
PalClavMientras = mientras
PalClavParacada = paracada
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
PalClavSi = si
PalClavSiNo = sino
PalClavEntonces = entonces

OperadorMatematico = {Suma} | {Resta} | \* | \/ | \^ | \% | {Suma}{Suma} | {Resta}{Resta}
OperadorLogico = AND | OR
%%
{Tabulador} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Tabulador");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.TAB, new Tokens(yycolumn, yyline, yytext()));
}
{Tabuladores} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Tabuladores");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.TABS, new Tokens(yycolumn, yyline, yytext()));
}
{LineTerminator} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Espacio en blanco");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.FINLINEA, new Tokens(yycolumn, yyline, yytext()));
}
{WhiteSpace} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Espacio en blanco");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.ESPBLANCO, new Tokens(yycolumn, yyline, yytext()));
}
{Mensaje} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Mensaje");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.MENSAJE, new Tokens(yycolumn, yyline, yytext()));
}
{Comentarios} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Comentarios");
    tokens.get(contador).setNombre(yytext());
}
{PalClavPrincipal} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVPRINCIPAL, new Tokens(yycolumn, yyline, yytext()));
}
{TipoDeDato} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Tipo de Dato");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.TIPODEDATO, new Tokens(yycolumn, yyline, yytext()));
    //System.out.print(" tipo de dato ");
}
{ArchivoExcel} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Archivo");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.ARCHIVOEXCEL, new Tokens(yycolumn, yyline, yytext()));  
    //System.out.print(" Archivo excel ");
}
{ArchivoSuma} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Operación con archivo");
    tokens.get(contador).setNombre(yytext());
}
{ArchivoResta} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Operación con archivo");
    tokens.get(contador).setNombre(yytext());
}
{ArchivoPromedio} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Operación con archivo");
    tokens.get(contador).setNombre(yytext());
}
{ArchivoModa} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Operación con archivo");
    tokens.get(contador).setNombre(yytext());
}
{ArchivoMedia} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Operación con archivo");
    tokens.get(contador).setNombre(yytext());
}
{ArchivoMayor} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Operación con archivo");
    tokens.get(contador).setNombre(yytext());
}
{ArchivoMenor} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Operación con archivo");
    tokens.get(contador).setNombre(yytext());
}
{DosPuntos} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.DOSPUNTOS, new Tokens(yycolumn, yyline, yytext()));
}
{ParentesisAbre} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PARENABRE, new Tokens(yycolumn, yyline, yytext()));
}
{ParentesisCierre} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PARENCIERRA, new Tokens(yycolumn, yyline, yytext()));
}
{CorcheteAbre} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.CORCHABRE, new Tokens(yycolumn, yyline, yytext()));
}
{CorcheteCierre} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.CORCHCIERRA, new Tokens(yycolumn, yyline, yytext()));
}
{Comillas} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.COMILLAS, new Tokens(yycolumn, yyline, yytext()));
}
{Punto} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PUNTO, new Tokens(yycolumn, yyline, yytext()));
}
{Coma} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Elemento individual");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.COMA, new Tokens(yycolumn, yyline, yytext()));
}
{ArchivoLed} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Archivo a incluir");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.ARCHIVOLED, new Tokens(yycolumn, yyline, yytext()));
}
{AccediendoPropiedad} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Propiedad con identificador");
    tokens.get(contador).setNombre(yytext());
    System.out.println("Propiedad id");
    return new Symbol(sym.PROPIEDADID, new Tokens(yycolumn, yyline, yytext()));
}
{PalClavEn} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra clave");
    tokens.get(contador).setNombre(yytext());
}
{PalClavSi} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVSI, new Tokens(yycolumn, yyline, yytext()));
}
{PalClavEntonces} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVENTONCES, new Tokens(yycolumn, yyline, yytext()));
}
{PalClavSiNo} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVSINO, new Tokens(yycolumn, yyline, yytext()));
}
{PalClavFuncion} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVFUNCION, new Tokens(yycolumn, yyline, yytext()));
    //System.out.print(" Palabra clave ");
}
{PalClavIncluir} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVINCLUIR, new Tokens(yycolumn, yyline, yytext()));
    //System.out.print(" Palabra clave ");
}
{PalClavClase} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    //System.out.print(" Palabra clave ");
    return new Symbol(sym.PALCLAVCLASE, new Tokens(yycolumn, yyline, yytext() ));
    
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
    return new Symbol(sym.PALCLAVPROPIEDADES, new Tokens(yycolumn, yyline, yytext() ));
    //System.out.print(" Palabra clave ");
}
{PalClavVariables} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVVARIABLES, new Tokens(yycolumn, yyline, yytext() ));
    //System.out.print(" Palabra clave ");
}
{PalClavCodigo} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVCODIGO, new Tokens(yycolumn, yyline, yytext() ));
    //System.out.print(" Palabra clave ");
}
{PalClavMetodos} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVMETODOS, new Tokens(yycolumn, yyline, yytext() ));
    //System.out.print(" Palabra clave ");
}
{PalClavRetornar} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVRETORNAR, new Tokens(yycolumn, yyline, yytext() ));
    //System.out.print(" Palabra clave ");
}
{PalClavEscribir} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVESCRIBIR, new Tokens(yycolumn, yyline, yytext() ));
    //System.out.print(" Palabra clave ");
}
{PalClavAbrir} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVABRIR, new Tokens(yycolumn, yyline, yytext() ));
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
    //return new Symbol(sym.PALCLAVPROPIEDAD, new Tokens(yycolumn, yyline, yytext() ));
    //System.out.print(" Palabra clave ");
}
{PalClavArchivos} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PALCLAVARCHIVOS, new Tokens(yycolumn, yyline, yytext() ));
    //System.out.print(" Palabra clave ");
}
{PalClavDesde} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra clave");
    tokens.get(contador).setNombre(yytext());
}
{PalClavMientras} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra clave");
    tokens.get(contador).setNombre(yytext());
}
{PalClavInc} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra clave");
    tokens.get(contador).setNombre(yytext());
}
{PalClavDec} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra clave");
    tokens.get(contador).setNombre(yytext());
}
{PalClavIterar} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra clave");
    tokens.get(contador).setNombre(yytext());
}
{PalClavParacada} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra clave");
    tokens.get(contador).setNombre(yytext());
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
    return new Symbol(sym.NUMERO, new Tokens(yycolumn, yyline, yytext()));
    //System.out.print(" Números ");
}
{identificador} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Identificador");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.IDENTIFICADOR, new Tokens(yycolumn, yyline, yytext()));
    //System.out.print(" Identificador ");
}
{OperadorMatematico} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Operador matemático");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.OPMATEMATICO, new Tokens(yycolumn, yyline, yytext()));
    //System.out.print(" Matemático ");
}
{PuntoYComa} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Fin de línea");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.PCOMA, new Tokens(yycolumn, yyline, yytext()));
    //System.out.print(" Fin de línea ");
}
{Igual} {
    tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Igual");
    tokens.get(contador).setNombre(yytext());
    return new Symbol(sym.IGUAL, new Tokens(yycolumn, yyline, yytext() ));
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
    //return new Symbol(sym.IGUAL, new Tokens(yycolumn, yyline, yytext() ));
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
