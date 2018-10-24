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
    System.out.print(" Función principal ");
}
/*{DeclaracionClase} {
    System.out.print(" Declaración clase ");
}*/
{TipoDeDato} {
    System.out.print(" tipo de dato ");
}
{ArchivoExcel} {
    System.out.print(" Archivo excel ");
}
{PalClavFuncion} {
    System.out.print(" Palabra clave ");
}
{PalClavIncluir} {
    System.out.print(" Palabra clave ");
}
{PalClavClase} {
    System.out.print(" Palabra clave ");
}
{PalClavPropiedades} {
    System.out.print(" Palabra clave ");
}
{PalClavVariables} {
    System.out.print(" Palabra clave ");
}
{PalClavCodigo} {
    System.out.print(" Palabra clave ");
}
{PalClavMetodos} {
    System.out.print(" Palabra clave ");
}
{PalClavRetornar} {
    System.out.print(" Palabra clave ");
}
{PalClavEscribir} {
    System.out.print(" Palabra clave ");
}
{PalClavAbrir} {
    System.out.print(" Palabra clave ");
}
{PalClavInstanciar} {
    System.out.print(" Palabra clave ");
}
{PalClavPropiedad} {
    System.out.print(" Palabra clave ");
}
{PalClavArchivos} {
    System.out.print(" Palabra clave ");
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