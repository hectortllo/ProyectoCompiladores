/* The following code was generated by JFlex 1.6.1 */

package herramientas;
import proyectocompiladores.ArrayListTokens;
import java.util.ArrayList;


/**
 * This class is a scanner generated by 
 * <a href="http://www.jflex.de/">JFlex</a> 1.6.1
 * from the specification file <tt>src/herramientas/lexico.jflex</tt>
 */
public class Lexico {

  /** This character denotes the end of file */
  public static final int YYEOF = -1;

  /** initial size of the lookahead buffer */
  private static final int ZZ_BUFFERSIZE = 16384;

  /** lexical states */
  public static final int YYINITIAL = 0;

  /**
   * ZZ_LEXSTATE[l] is the state in the DFA for the lexical state l
   * ZZ_LEXSTATE[l+1] is the state in the DFA for the lexical state l
   *                  at the beginning of a line
   * l is of the form l = 2*k, k a non negative integer
   */
  private static final int ZZ_LEXSTATE[] = { 
     0, 0
  };

  /** 
   * Translates characters to character classes
   */
  private static final String ZZ_CMAP_PACKED = 
    "\11\0\1\15\1\14\1\14\1\14\1\14\22\0\1\15\1\27\3\0"+
    "\1\43\2\0\1\21\1\22\1\43\1\43\1\0\1\43\1\25\1\43"+
    "\1\16\11\17\1\24\1\23\1\31\1\26\1\30\2\0\1\44\2\20"+
    "\1\46\11\20\1\45\1\47\2\20\1\50\10\20\3\0\1\43\1\0"+
    "\1\0\1\2\1\12\1\1\1\3\1\4\1\37\1\41\1\42\1\34"+
    "\2\20\1\13\1\7\1\5\1\11\1\36\1\20\1\10\1\33\1\35"+
    "\1\6\1\40\1\20\1\32\2\20\12\0\1\14\32\0\1\15\u15df\0"+
    "\1\15\u097f\0\13\15\35\0\1\14\1\14\5\0\1\15\57\0\1\15"+
    "\u0fa0\0\1\15\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\uffff\0\ud00f\0";

  /** 
   * Translates characters to character classes
   */
  private static final char [] ZZ_CMAP = zzUnpackCMap(ZZ_CMAP_PACKED);

  /** 
   * Translates DFA states to action switch labels.
   */
  private static final int [] ZZ_ACTION = zzUnpackAction();

  private static final String ZZ_ACTION_PACKED_0 =
    "\1\1\1\2\10\1\1\3\2\4\1\2\1\5\1\2"+
    "\1\6\1\2\1\7\1\10\4\1\1\6\7\1\1\0"+
    "\7\1\4\0\1\11\1\12\5\1\1\13\12\1\4\0"+
    "\17\1\4\0\7\1\1\14\1\1\1\15\5\1\3\0"+
    "\1\16\4\1\1\17\3\1\3\0\4\1\2\0\2\1"+
    "\1\15\1\1\1\0\1\1\3\0\1\20\1\15\30\0"+
    "\1\21\16\0";

  private static int [] zzUnpackAction() {
    int [] result = new int[171];
    int offset = 0;
    offset = zzUnpackAction(ZZ_ACTION_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAction(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /** 
   * Translates a state to a row index in the transition table
   */
  private static final int [] ZZ_ROWMAP = zzUnpackRowMap();

  private static final String ZZ_ROWMAP_PACKED_0 =
    "\0\0\0\51\0\122\0\173\0\244\0\315\0\366\0\u011f"+
    "\0\u0148\0\u0171\0\51\0\u019a\0\u01c3\0\u01ec\0\51\0\u0215"+
    "\0\u023e\0\u0267\0\51\0\51\0\u0290\0\u02b9\0\u02e2\0\u030b"+
    "\0\51\0\u0334\0\u035d\0\u0386\0\u03af\0\u03d8\0\u019a\0\u0401"+
    "\0\u0215\0\u042a\0\u0453\0\u047c\0\u04a5\0\u04ce\0\u04f7\0\u0520"+
    "\0\u0549\0\u0572\0\u059b\0\u05c4\0\51\0\51\0\u05ed\0\u0616"+
    "\0\u063f\0\u0668\0\u0691\0\244\0\u06ba\0\u06e3\0\u070c\0\u0735"+
    "\0\u075e\0\u0787\0\u07b0\0\u07d9\0\u0802\0\u082b\0\u0854\0\u087d"+
    "\0\u08a6\0\u08cf\0\u08f8\0\u0921\0\u094a\0\u0973\0\u099c\0\u09c5"+
    "\0\u09ee\0\u0a17\0\u0a40\0\u0a69\0\u0a92\0\u0abb\0\u0ae4\0\u0b0d"+
    "\0\u0b36\0\u0b5f\0\u0b88\0\u0bb1\0\u0bda\0\u0c03\0\u0c2c\0\u0c55"+
    "\0\u0c7e\0\u0ca7\0\u0cd0\0\u0cf9\0\244\0\u0d22\0\244\0\u0d4b"+
    "\0\u0d74\0\u0d9d\0\u0dc6\0\u0def\0\u0e18\0\u0e41\0\u0e6a\0\51"+
    "\0\u0e93\0\u0ebc\0\u0ee5\0\u0f0e\0\244\0\u0f37\0\u0f60\0\u0f89"+
    "\0\u0fb2\0\u0fdb\0\u1004\0\u102d\0\u1056\0\u107f\0\u10a8\0\u10d1"+
    "\0\u10fa\0\u1123\0\u114c\0\u1175\0\u119e\0\u11c7\0\u11f0\0\u1219"+
    "\0\u1242\0\u126b\0\51\0\u119e\0\u1294\0\u12bd\0\u12e6\0\u130f"+
    "\0\u1338\0\u1361\0\u138a\0\u13b3\0\u13dc\0\u1405\0\u142e\0\u1457"+
    "\0\u1480\0\u14a9\0\u14d2\0\u14fb\0\u1524\0\u154d\0\u1576\0\u159f"+
    "\0\u15c8\0\u15f1\0\u161a\0\u1643\0\51\0\u166c\0\u1695\0\u16be"+
    "\0\u16e7\0\u1710\0\u1739\0\u1762\0\u178b\0\u17b4\0\u17dd\0\u1806"+
    "\0\u182f\0\u1858\0\u1881";

  private static int [] zzUnpackRowMap() {
    int [] result = new int[171];
    int offset = 0;
    offset = zzUnpackRowMap(ZZ_ROWMAP_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackRowMap(String packed, int offset, int [] result) {
    int i = 0;  /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int high = packed.charAt(i++) << 16;
      result[j++] = high | packed.charAt(i++);
    }
    return j;
  }

  /** 
   * The transition table of the DFA
   */
  private static final int [] ZZ_TRANS = zzUnpackTrans();

  private static final String ZZ_TRANS_PACKED_0 =
    "\1\2\1\3\1\4\1\5\1\6\1\7\1\5\1\10"+
    "\1\11\1\5\1\12\1\5\1\13\1\2\1\14\1\15"+
    "\1\5\1\16\1\2\1\17\1\2\1\20\1\21\1\22"+
    "\1\23\1\24\2\5\1\25\1\5\1\26\1\27\1\30"+
    "\2\5\1\31\1\32\2\5\1\33\1\5\52\0\1\5"+
    "\1\34\6\5\1\35\1\5\1\36\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\7\5\1\42\1\5\1\43\1\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\13\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\1\0\13\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\1\5\1\44\7\5\1\0"+
    "\5\5\1\0\5\5\1\45\5\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\3\5\1\46\7\5\2\0\1\37\1\40\1\5\4\0"+
    "\1\41\4\0\11\5\1\0\5\5\1\0\3\5\1\47"+
    "\7\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\1\0\10\5\1\50\2\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\11\5\1\0"+
    "\5\5\25\0\1\41\41\0\2\15\5\0\1\41\24\0"+
    "\1\51\3\0\1\52\4\0\1\53\70\0\1\54\44\0"+
    "\1\55\50\0\1\56\23\0\4\5\1\57\6\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\11\5\1\0"+
    "\5\5\1\0\7\5\1\60\3\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\5\5\1\61\5\5\2\0\1\37\1\40\1\5\4\0"+
    "\1\41\4\0\11\5\1\0\5\5\1\0\1\5\1\62"+
    "\11\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\1\0\13\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\1\5\1\63"+
    "\3\5\1\0\13\5\2\0\1\37\1\40\1\5\4\0"+
    "\1\41\4\0\11\5\1\0\4\5\1\64\1\0\2\5"+
    "\1\65\10\5\2\0\1\37\1\40\1\5\4\0\1\41"+
    "\4\0\11\5\1\0\5\5\1\0\2\5\1\66\10\5"+
    "\2\0\1\37\1\40\1\5\4\0\1\41\4\0\11\5"+
    "\1\0\5\5\1\0\1\5\1\67\11\5\2\0\1\37"+
    "\1\40\1\5\4\0\1\41\4\0\11\5\1\0\5\5"+
    "\16\0\2\40\5\0\1\41\24\0\1\70\12\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\11\5\1\0"+
    "\5\5\1\0\7\5\1\71\3\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\1\72\12\5\2\0\1\37\1\40\1\5\4\0\1\41"+
    "\4\0\11\5\1\0\5\5\1\0\6\5\1\73\4\5"+
    "\2\0\1\37\1\40\1\5\4\0\1\41\4\0\11\5"+
    "\1\0\5\5\1\0\13\5\2\0\1\37\1\40\1\5"+
    "\4\0\1\41\4\0\3\5\1\74\5\5\1\0\5\5"+
    "\1\0\13\5\2\0\1\37\1\40\1\5\4\0\1\41"+
    "\4\0\3\5\1\75\5\5\1\0\5\5\1\0\10\5"+
    "\1\76\2\5\2\0\1\37\1\40\1\5\4\0\1\41"+
    "\4\0\11\5\1\0\5\5\2\0\1\77\54\0\1\100"+
    "\53\0\1\101\72\0\1\102\16\0\1\103\12\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\1\5\1\104"+
    "\7\5\1\0\5\5\1\0\10\5\1\105\2\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\11\5\1\0"+
    "\5\5\1\0\4\5\1\106\6\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\7\5\1\107\3\5\2\0\1\37\1\40\1\5\4\0"+
    "\1\41\4\0\11\5\1\0\5\5\1\0\13\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\11\5\1\0"+
    "\2\5\1\64\2\5\1\0\3\5\1\110\7\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\11\5\1\0"+
    "\5\5\1\0\13\5\2\0\1\37\1\40\1\5\4\0"+
    "\1\41\4\0\2\5\1\111\6\5\1\0\5\5\1\0"+
    "\13\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\1\5\1\112\7\5\1\0\5\5\1\0\13\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\10\5\1\113"+
    "\1\0\5\5\1\0\13\5\2\0\1\37\1\40\1\5"+
    "\4\0\1\41\4\0\2\5\1\114\6\5\1\0\5\5"+
    "\1\0\7\5\1\115\3\5\2\0\1\37\1\40\1\5"+
    "\4\0\1\41\4\0\11\5\1\0\5\5\1\0\3\5"+
    "\1\116\7\5\2\0\1\37\1\40\1\5\4\0\1\41"+
    "\4\0\11\5\1\0\5\5\1\0\10\5\1\117\2\5"+
    "\2\0\1\37\1\40\1\5\4\0\1\41\4\0\11\5"+
    "\1\0\5\5\1\0\10\5\1\120\2\5\2\0\1\37"+
    "\1\40\1\5\4\0\1\41\4\0\11\5\1\0\5\5"+
    "\1\0\12\5\1\121\2\0\1\37\1\40\1\5\4\0"+
    "\1\41\4\0\11\5\1\0\5\5\3\0\1\122\54\0"+
    "\1\123\52\0\1\124\52\0\1\125\36\0\12\5\1\126"+
    "\2\0\1\37\1\40\1\5\4\0\1\41\4\0\11\5"+
    "\1\0\5\5\1\0\13\5\2\0\1\37\1\40\1\5"+
    "\4\0\1\41\4\0\3\5\1\127\5\5\1\0\5\5"+
    "\1\0\13\5\2\0\1\37\1\40\1\5\4\0\1\41"+
    "\4\0\4\5\1\130\4\5\1\0\5\5\1\0\1\131"+
    "\12\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\1\0\13\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\2\5\1\132\6\5\1\0"+
    "\5\5\1\0\4\5\1\133\6\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\13\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\7\5\1\134\1\5\1\0\5\5\1\0\3\5\1\135"+
    "\7\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\1\0\13\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\2\5\1\136\6\5\1\0"+
    "\5\5\1\0\7\5\1\137\3\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\13\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\2\5\1\140\6\5\1\0\5\5\1\0\7\5\1\141"+
    "\3\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\1\0\2\5\1\142\10\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\11\5\1\0"+
    "\5\5\1\0\7\5\1\143\3\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\3\5\1\144\7\5\2\0\1\37\1\40\1\5\4\0"+
    "\1\41\4\0\11\5\1\0\5\5\4\0\1\145\50\0"+
    "\1\146\57\0\1\147\67\0\1\150\17\0\5\5\1\71"+
    "\5\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\1\0\1\5\1\151\11\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\11\5\1\0"+
    "\5\5\1\0\13\5\2\0\1\37\1\40\1\5\4\0"+
    "\1\41\4\0\2\5\1\152\6\5\1\0\5\5\1\0"+
    "\13\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\2\5\1\153\6\5\1\0\5\5\1\0\1\5\1\154"+
    "\11\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\1\0\1\5\1\155\11\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\11\5\1\0"+
    "\5\5\1\0\10\5\1\137\2\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\13\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\6\5\1\142\2\5\1\0\5\5\1\0\11\5\1\71"+
    "\1\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\1\0\10\5\1\155\2\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\11\5\1\0"+
    "\5\5\1\0\10\5\1\156\2\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\4\5\1\157\6\5\2\0\1\37\1\40\1\5\4\0"+
    "\1\41\4\0\11\5\1\0\5\5\1\0\1\5\1\160"+
    "\11\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\5\0\1\161\53\0\1\162\44\0"+
    "\1\163\45\0\4\5\1\164\6\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\3\5\1\165\7\5\2\0\1\37\1\40\1\5\4\0"+
    "\1\41\4\0\11\5\1\0\5\5\1\0\10\5\1\166"+
    "\2\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\1\0\11\5\1\167\1\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\11\5\1\0"+
    "\5\5\1\0\13\5\2\0\1\37\1\40\1\5\4\0"+
    "\1\41\4\0\1\5\1\137\7\5\1\0\5\5\1\0"+
    "\1\5\1\114\11\5\2\0\1\37\1\40\1\5\4\0"+
    "\1\41\4\0\11\5\1\0\5\5\1\0\4\5\1\141"+
    "\6\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\2\0\1\170\57\0\1\170\41\0"+
    "\1\171\47\0\1\172\12\5\2\0\1\37\1\40\1\5"+
    "\4\0\1\41\4\0\11\5\1\0\5\5\1\0\2\5"+
    "\1\173\10\5\2\0\1\37\1\40\1\5\4\0\1\41"+
    "\4\0\11\5\1\0\5\5\1\0\4\5\1\174\6\5"+
    "\2\0\1\37\1\40\1\5\4\0\1\41\4\0\11\5"+
    "\1\0\5\5\1\0\12\5\1\175\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\14\0"+
    "\2\176\40\0\1\162\44\0\13\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\2\5\1\157\6\5\1\0"+
    "\5\5\1\0\1\5\1\177\11\5\2\0\1\37\1\40"+
    "\1\5\4\0\1\41\4\0\11\5\1\0\5\5\1\0"+
    "\13\5\2\200\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\1\0\3\5\1\156\7\5\2\0"+
    "\1\37\1\40\1\5\4\0\1\41\4\0\11\5\1\0"+
    "\5\5\1\0\13\176\2\0\1\201\1\202\1\176\1\0"+
    "\1\203\7\0\11\176\1\0\5\176\1\0\2\5\1\204"+
    "\10\5\2\0\1\37\1\40\1\5\4\0\1\41\4\0"+
    "\11\5\1\0\5\5\5\0\1\205\65\0\1\203\44\0"+
    "\2\202\2\0\1\203\34\0\1\206\51\0\1\207\45\0"+
    "\1\210\54\0\1\211\51\0\1\212\53\0\2\213\71\0"+
    "\1\214\22\0\1\215\74\0\1\216\21\0\1\217\44\0"+
    "\1\220\103\0\1\221\52\0\1\222\14\0\1\223\61\0"+
    "\1\224\56\0\1\225\30\0\1\226\3\0\1\227\4\0"+
    "\1\230\7\0\1\231\30\0\1\232\54\0\1\233\53\0"+
    "\1\234\63\0\1\235\27\0\1\236\54\0\1\237\52\0"+
    "\1\240\43\0\1\241\50\0\1\242\57\0\1\243\42\0"+
    "\1\244\53\0\1\245\44\0\1\246\46\0\1\247\57\0"+
    "\1\247\41\0\1\250\62\0\2\251\40\0\1\245\44\0"+
    "\13\251\2\0\1\252\1\253\1\251\1\0\1\231\7\0"+
    "\11\251\1\0\5\251\22\0\1\231\44\0\2\253\2\0"+
    "\1\231\26\0";

  private static int [] zzUnpackTrans() {
    int [] result = new int[6314];
    int offset = 0;
    offset = zzUnpackTrans(ZZ_TRANS_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackTrans(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      value--;
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }


  /* error codes */
  private static final int ZZ_UNKNOWN_ERROR = 0;
  private static final int ZZ_NO_MATCH = 1;
  private static final int ZZ_PUSHBACK_2BIG = 2;

  /* error messages for the codes above */
  private static final String ZZ_ERROR_MSG[] = {
    "Unknown internal scanner error",
    "Error: could not match input",
    "Error: pushback value was too large"
  };

  /**
   * ZZ_ATTRIBUTE[aState] contains the attributes of state <code>aState</code>
   */
  private static final int [] ZZ_ATTRIBUTE = zzUnpackAttribute();

  private static final String ZZ_ATTRIBUTE_PACKED_0 =
    "\1\1\1\11\10\1\1\11\3\1\1\11\3\1\2\11"+
    "\4\1\1\11\7\1\1\0\7\1\4\0\2\11\20\1"+
    "\4\0\17\1\4\0\17\1\3\0\1\11\10\1\3\0"+
    "\4\1\2\0\4\1\1\0\1\1\3\0\1\11\1\1"+
    "\30\0\1\11\16\0";

  private static int [] zzUnpackAttribute() {
    int [] result = new int[171];
    int offset = 0;
    offset = zzUnpackAttribute(ZZ_ATTRIBUTE_PACKED_0, offset, result);
    return result;
  }

  private static int zzUnpackAttribute(String packed, int offset, int [] result) {
    int i = 0;       /* index in packed string  */
    int j = offset;  /* index in unpacked array */
    int l = packed.length();
    while (i < l) {
      int count = packed.charAt(i++);
      int value = packed.charAt(i++);
      do result[j++] = value; while (--count > 0);
    }
    return j;
  }

  /** the input device */
  private java.io.Reader zzReader;

  /** the current state of the DFA */
  private int zzState;

  /** the current lexical state */
  private int zzLexicalState = YYINITIAL;

  /** this buffer contains the current text to be matched and is
      the source of the yytext() string */
  private char zzBuffer[] = new char[ZZ_BUFFERSIZE];

  /** the textposition at the last accepting state */
  private int zzMarkedPos;

  /** the current text position in the buffer */
  private int zzCurrentPos;

  /** startRead marks the beginning of the yytext() string in the buffer */
  private int zzStartRead;

  /** endRead marks the last character in the buffer, that has been read
      from input */
  private int zzEndRead;

  /** number of newlines encountered up to the start of the matched text */
  private int yyline;

  /** the number of characters up to the start of the matched text */
  private int yychar;

  /**
   * the number of characters from the last newline up to the start of the 
   * matched text
   */
  private int yycolumn;

  /** 
   * zzAtBOL == true <=> the scanner is currently at the beginning of a line
   */
  private boolean zzAtBOL = true;

  /** zzAtEOF == true <=> the scanner is at the EOF */
  public boolean zzAtEOF;

  /** denotes if the user-EOF-code has already been executed */
  private boolean zzEOFDone;
  
  /** 
   * The number of occupied positions in zzBuffer beyond zzEndRead.
   * When a lead/high surrogate has been read from the input stream
   * into the final zzBuffer position, this will have a value of 1;
   * otherwise, it will have a value of 0.
   */
  private int zzFinalHighSurrogate = 0;

  /* user code: */
    public static ArrayList<ArrayListTokens> tokens;
    public static int contador = -1;


  /**
   * Creates a new scanner
   *
   * @param   in  the java.io.Reader to read input from.
   */
  public Lexico(java.io.Reader in) {
      this.tokens = new ArrayList<>();
    this.zzReader = in;
  }


  /** 
   * Unpacks the compressed character translation table.
   *
   * @param packed   the packed character translation table
   * @return         the unpacked character translation table
   */
  private static char [] zzUnpackCMap(String packed) {
    char [] map = new char[0x110000];
    int i = 0;  /* index in packed string  */
    int j = 0;  /* index in unpacked array */
    while (i < 198) {
      int  count = packed.charAt(i++);
      char value = packed.charAt(i++);
      do map[j++] = value; while (--count > 0);
    }
    return map;
  }


  /**
   * Refills the input buffer.
   *
   * @return      <code>false</code>, iff there was new input.
   * 
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  private boolean zzRefill() throws java.io.IOException {

    /* first: make room (if you can) */
    if (zzStartRead > 0) {
      zzEndRead += zzFinalHighSurrogate;
      zzFinalHighSurrogate = 0;
      System.arraycopy(zzBuffer, zzStartRead,
                       zzBuffer, 0,
                       zzEndRead-zzStartRead);

      /* translate stored positions */
      zzEndRead-= zzStartRead;
      zzCurrentPos-= zzStartRead;
      zzMarkedPos-= zzStartRead;
      zzStartRead = 0;
    }

    /* is the buffer big enough? */
    if (zzCurrentPos >= zzBuffer.length - zzFinalHighSurrogate) {
      /* if not: blow it up */
      char newBuffer[] = new char[zzBuffer.length*2];
      System.arraycopy(zzBuffer, 0, newBuffer, 0, zzBuffer.length);
      zzBuffer = newBuffer;
      zzEndRead += zzFinalHighSurrogate;
      zzFinalHighSurrogate = 0;
    }

    /* fill the buffer with new input */
    int requested = zzBuffer.length - zzEndRead;
    int numRead = zzReader.read(zzBuffer, zzEndRead, requested);

    /* not supposed to occur according to specification of java.io.Reader */
    if (numRead == 0) {
      throw new java.io.IOException("Reader returned 0 characters. See JFlex examples for workaround.");
    }
    if (numRead > 0) {
      zzEndRead += numRead;
      /* If numRead == requested, we might have requested to few chars to
         encode a full Unicode character. We assume that a Reader would
         otherwise never return half characters. */
      if (numRead == requested) {
        if (Character.isHighSurrogate(zzBuffer[zzEndRead - 1])) {
          --zzEndRead;
          zzFinalHighSurrogate = 1;
        }
      }
      /* potentially more input available */
      return false;
    }

    /* numRead < 0 ==> end of stream */
    return true;
  }

    
  /**
   * Closes the input stream.
   */
  public final void yyclose() throws java.io.IOException {
    zzAtEOF = true;            /* indicate end of file */
    zzEndRead = zzStartRead;  /* invalidate buffer    */

    if (zzReader != null)
      zzReader.close();
  }


  /**
   * Resets the scanner to read from a new input stream.
   * Does not close the old reader.
   *
   * All internal variables are reset, the old input stream 
   * <b>cannot</b> be reused (internal buffer is discarded and lost).
   * Lexical state is set to <tt>ZZ_INITIAL</tt>.
   *
   * Internal scan buffer is resized down to its initial length, if it has grown.
   *
   * @param reader   the new input stream 
   */
  public final void yyreset(java.io.Reader reader) {
    zzReader = reader;
    zzAtBOL  = true;
    zzAtEOF  = false;
    zzEOFDone = false;
    zzEndRead = zzStartRead = 0;
    zzCurrentPos = zzMarkedPos = 0;
    zzFinalHighSurrogate = 0;
    yyline = yychar = yycolumn = 0;
    zzLexicalState = YYINITIAL;
    if (zzBuffer.length > ZZ_BUFFERSIZE)
      zzBuffer = new char[ZZ_BUFFERSIZE];
  }


  /**
   * Returns the current lexical state.
   */
  public final int yystate() {
    return zzLexicalState;
  }


  /**
   * Enters a new lexical state
   *
   * @param newState the new lexical state
   */
  public final void yybegin(int newState) {
    zzLexicalState = newState;
  }


  /**
   * Returns the text matched by the current regular expression.
   */
  public final String yytext() {
    return new String( zzBuffer, zzStartRead, zzMarkedPos-zzStartRead );
  }


  /**
   * Returns the character at position <tt>pos</tt> from the 
   * matched text. 
   * 
   * It is equivalent to yytext().charAt(pos), but faster
   *
   * @param pos the position of the character to fetch. 
   *            A value from 0 to yylength()-1.
   *
   * @return the character at position pos
   */
  public final char yycharat(int pos) {
    return zzBuffer[zzStartRead+pos];
  }


  /**
   * Returns the length of the matched text region.
   */
  public final int yylength() {
    return zzMarkedPos-zzStartRead;
  }


  /**
   * Reports an error that occured while scanning.
   *
   * In a wellformed scanner (no or only correct usage of 
   * yypushback(int) and a match-all fallback rule) this method 
   * will only be called with things that "Can't Possibly Happen".
   * If this method is called, something is seriously wrong
   * (e.g. a JFlex bug producing a faulty scanner etc.).
   *
   * Usual syntax/scanner level error handling should be done
   * in error fallback rules.
   *
   * @param   errorCode  the code of the errormessage to display
   */
  private void zzScanError(int errorCode) {
    String message;
    try {
      message = ZZ_ERROR_MSG[errorCode];
    }
    catch (ArrayIndexOutOfBoundsException e) {
      message = ZZ_ERROR_MSG[ZZ_UNKNOWN_ERROR];
    }

    throw new Error(message);
  } 


  /**
   * Pushes the specified amount of characters back into the input stream.
   *
   * They will be read again by then next call of the scanning method
   *
   * @param number  the number of characters to be read again.
   *                This number must not be greater than yylength()!
   */
  public void yypushback(int number)  {
    if ( number > yylength() )
      zzScanError(ZZ_PUSHBACK_2BIG);

    zzMarkedPos -= number;
  }


  /**
   * Resumes scanning until the next regular expression is matched,
   * the end of input is encountered or an I/O-Error occurs.
   *
   * @return      the next token
   * @exception   java.io.IOException  if any I/O-Error occurs
   */
  public int yylex() throws java.io.IOException {
    int zzInput;
    int zzAction;

    // cached fields:
    int zzCurrentPosL;
    int zzMarkedPosL;
    int zzEndReadL = zzEndRead;
    char [] zzBufferL = zzBuffer;
    char [] zzCMapL = ZZ_CMAP;

    int [] zzTransL = ZZ_TRANS;
    int [] zzRowMapL = ZZ_ROWMAP;
    int [] zzAttrL = ZZ_ATTRIBUTE;

    while (true) {
      zzMarkedPosL = zzMarkedPos;

      boolean zzR = false;
      int zzCh;
      int zzCharCount;
      for (zzCurrentPosL = zzStartRead  ;
           zzCurrentPosL < zzMarkedPosL ;
           zzCurrentPosL += zzCharCount ) {
        zzCh = Character.codePointAt(zzBufferL, zzCurrentPosL, zzMarkedPosL);
        zzCharCount = Character.charCount(zzCh);
        switch (zzCh) {
        case '\u000B':
        case '\u000C':
        case '\u0085':
        case '\u2028':
        case '\u2029':
          yyline++;
          yycolumn = 0;
          zzR = false;
          break;
        case '\r':
          yyline++;
          yycolumn = 0;
          zzR = true;
          break;
        case '\n':
          if (zzR)
            zzR = false;
          else {
            yyline++;
            yycolumn = 0;
          }
          break;
        default:
          zzR = false;
          yycolumn += zzCharCount;
        }
      }

      if (zzR) {
        // peek one character ahead if it is \n (if we have counted one line too much)
        boolean zzPeek;
        if (zzMarkedPosL < zzEndReadL)
          zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        else if (zzAtEOF)
          zzPeek = false;
        else {
          boolean eof = zzRefill();
          zzEndReadL = zzEndRead;
          zzMarkedPosL = zzMarkedPos;
          zzBufferL = zzBuffer;
          if (eof) 
            zzPeek = false;
          else 
            zzPeek = zzBufferL[zzMarkedPosL] == '\n';
        }
        if (zzPeek) yyline--;
      }
      zzAction = -1;

      zzCurrentPosL = zzCurrentPos = zzStartRead = zzMarkedPosL;
  
      zzState = ZZ_LEXSTATE[zzLexicalState];

      // set up zzAction for empty match case:
      int zzAttributes = zzAttrL[zzState];
      if ( (zzAttributes & 1) == 1 ) {
        zzAction = zzState;
      }


      zzForAction: {
        while (true) {
    
          if (zzCurrentPosL < zzEndReadL) {
            zzInput = Character.codePointAt(zzBufferL, zzCurrentPosL, zzEndReadL);
            zzCurrentPosL += Character.charCount(zzInput);
          }
          else if (zzAtEOF) {
            zzInput = YYEOF;
            break zzForAction;
          }
          else {
            // store back cached positions
            zzCurrentPos  = zzCurrentPosL;
            zzMarkedPos   = zzMarkedPosL;
            boolean eof = zzRefill();
            // get translated positions and possibly new buffer
            zzCurrentPosL  = zzCurrentPos;
            zzMarkedPosL   = zzMarkedPos;
            zzBufferL      = zzBuffer;
            zzEndReadL     = zzEndRead;
            if (eof) {
              zzInput = YYEOF;
              break zzForAction;
            }
            else {
              zzInput = Character.codePointAt(zzBufferL, zzCurrentPosL, zzEndReadL);
              zzCurrentPosL += Character.charCount(zzInput);
            }
          }
          int zzNext = zzTransL[ zzRowMapL[zzState] + zzCMapL[zzInput] ];
          if (zzNext == -1) break zzForAction;
          zzState = zzNext;

          zzAttributes = zzAttrL[zzState];
          if ( (zzAttributes & 1) == 1 ) {
            zzAction = zzState;
            zzMarkedPosL = zzCurrentPosL;
            if ( (zzAttributes & 8) == 8 ) break zzForAction;
          }

        }
      }

      // store back cached position
      zzMarkedPos = zzMarkedPosL;

      if (zzInput == YYEOF && zzStartRead == zzCurrentPos) {
        zzAtEOF = true;
        return YYEOF;
      }
      else {
        switch (zzAction < 0 ? zzAction : ZZ_ACTION[zzAction]) {
          case 1: 
            { System.out.print(" Identificador ");
            }
          case 18: break;
          case 2: 
            { 
            }
          case 19: break;
          case 3: 
            { System.out.print(yytext());
            }
          case 20: break;
          case 4: 
            { System.out.print(" Números ");
            }
          case 21: break;
          case 5: 
            { System.out.print(" Fin de línea ");
            }
          case 22: break;
          case 6: 
            { System.out.print(" Matemático ");
            }
          case 23: break;
          case 7: 
            { System.out.print(" Mayor que ");
            }
          case 24: break;
          case 8: 
            { System.out.print(" Menor que ");
            }
          case 25: break;
          case 9: 
            { System.out.print(" Igual que ");
            }
          case 26: break;
          case 10: 
            { System.out.print(" Diferente que ");
            }
          case 27: break;
          case 11: 
            { System.out.print(" Lógico ");
            }
          case 28: break;
          case 12: 
            { tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("clase");
    //System.out.print(" Palabra clave ");
    for(int i=0; i<=contador; i++){
        System.out.println("Tipo de token: " + tokens.get(i).getTipo_token());
        System.out.println("Tipo de token: " + tokens.get(i).getNombre());
    }
    //    System.out.println("Clase");
            }
          case 29: break;
          case 13: 
            { System.out.print(" Palabra clave ");
            }
          case 30: break;
          case 14: 
            { System.out.print(" Archivo excel ");
            }
          case 31: break;
          case 15: 
            { System.out.print(" tipo de dato ");
            }
          case 32: break;
          case 16: 
            { System.out.print(" Argumento ");
            }
          case 33: break;
          case 17: 
            { tokens.add(new ArrayListTokens());
    contador++;
    tokens.get(contador).setTipo_token("Palabra Clave");
    tokens.get(contador).setNombre("Función Principal");
    //System.out.print(" Función principal ");
            }
          case 34: break;
          default:
            zzScanError(ZZ_NO_MATCH);
        }
      }
    }
  }

  /**
   * Runs the scanner on input files.
   *
   * This is a standalone scanner, it will print any unmatched
   * text to System.out unchanged.
   *
   * @param argv   the command line, contains the filenames to run
   *               the scanner on.
   */
  public static void main(String argv[]) {
    if (argv.length == 0) {
      System.out.println("Usage : java Lexico [ --encoding <name> ] <inputfile(s)>");
    }
    else {
      int firstFilePos = 0;
      String encodingName = "UTF-8";
      if (argv[0].equals("--encoding")) {
        firstFilePos = 2;
        encodingName = argv[1];
        try {
          java.nio.charset.Charset.forName(encodingName); // Side-effect: is encodingName valid? 
        } catch (Exception e) {
          System.out.println("Invalid encoding '" + encodingName + "'");
          return;
        }
      }
      for (int i = firstFilePos; i < argv.length; i++) {
        Lexico scanner = null;
        try {
          java.io.FileInputStream stream = new java.io.FileInputStream(argv[i]);
          java.io.Reader reader = new java.io.InputStreamReader(stream, encodingName);
          scanner = new Lexico(reader);
          while ( !scanner.zzAtEOF ) scanner.yylex();
        }
        catch (java.io.FileNotFoundException e) {
          System.out.println("File not found : \""+argv[i]+"\"");
        }
        catch (java.io.IOException e) {
          System.out.println("IO error scanning file \""+argv[i]+"\"");
          System.out.println(e);
        }
        catch (Exception e) {
          System.out.println("Unexpected exception:");
          e.printStackTrace();
        }
      }
    }
  }


}
