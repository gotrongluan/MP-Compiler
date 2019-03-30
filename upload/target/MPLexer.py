# Generated from main/mp/parser/MP.g4 by ANTLR 4.7.1
from antlr4 import *
from io import StringIO
from typing.io import TextIO
import sys


from lexererr import *


def serializedATN():
    with StringIO() as buf:
        buf.write("\3\u608b\ua72a\u8133\ub9ed\u417c\u3be7\u7786\u5964\2>")
        buf.write("\u0241\b\1\4\2\t\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7")
        buf.write("\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13\t\13\4\f\t\f\4\r\t\r")
        buf.write("\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22\4\23")
        buf.write("\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30")
        buf.write("\4\31\t\31\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36")
        buf.write("\t\36\4\37\t\37\4 \t \4!\t!\4\"\t\"\4#\t#\4$\t$\4%\t%")
        buf.write("\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4,\t,\4-\t-\4.")
        buf.write("\t.\4/\t/\4\60\t\60\4\61\t\61\4\62\t\62\4\63\t\63\4\64")
        buf.write("\t\64\4\65\t\65\4\66\t\66\4\67\t\67\48\t8\49\t9\4:\t:")
        buf.write("\4;\t;\4<\t<\4=\t=\4>\t>\4?\t?\4@\t@\4A\tA\4B\tB\4C\t")
        buf.write("C\4D\tD\4E\tE\4F\tF\4G\tG\4H\tH\4I\tI\4J\tJ\4K\tK\4L\t")
        buf.write("L\4M\tM\4N\tN\4O\tO\4P\tP\4Q\tQ\4R\tR\4S\tS\4T\tT\4U\t")
        buf.write("U\4V\tV\4W\tW\4X\tX\4Y\tY\4Z\tZ\3\2\3\2\3\2\3\2\7\2\u00ba")
        buf.write("\n\2\f\2\16\2\u00bd\13\2\3\2\3\2\3\2\3\2\3\2\3\3\3\3\7")
        buf.write("\3\u00c6\n\3\f\3\16\3\u00c9\13\3\3\3\3\3\3\3\3\3\3\4\3")
        buf.write("\4\3\4\3\4\7\4\u00d3\n\4\f\4\16\4\u00d6\13\4\3\4\3\4\3")
        buf.write("\5\3\5\3\6\3\6\3\7\3\7\3\b\3\b\3\t\3\t\3\n\3\n\3\13\3")
        buf.write("\13\3\f\3\f\3\r\3\r\3\16\3\16\3\17\3\17\3\20\3\20\3\21")
        buf.write("\3\21\3\22\3\22\3\23\3\23\3\24\3\24\3\25\3\25\3\26\3\26")
        buf.write("\3\27\3\27\3\30\3\30\3\31\3\31\3\32\3\32\3\33\3\33\3\34")
        buf.write("\3\34\3\35\3\35\3\36\3\36\3\37\3\37\3\37\3\37\3\37\3\37")
        buf.write("\3 \3 \3 \3 \3 \3 \3 \3 \3 \3!\3!\3!\3!\3\"\3\"\3\"\3")
        buf.write("#\3#\3#\3#\3#\3#\3#\3$\3$\3$\3%\3%\3%\3&\3&\3&\3&\3&\3")
        buf.write("\'\3\'\3\'\3\'\3\'\3(\3(\3(\3(\3(\3(\3(\3)\3)\3)\3)\3")
        buf.write(")\3)\3*\3*\3*\3*\3*\3*\3+\3+\3+\3+\3,\3,\3,\3,\3,\3-\3")
        buf.write("-\3-\3-\3-\3-\3-\3-\3-\3.\3.\3.\3.\3.\3.\3.\3.\3.\3.\3")
        buf.write("/\3/\3/\3/\3\60\3\60\3\60\3\60\3\60\3\61\3\61\3\61\3\61")
        buf.write("\3\61\3\61\3\62\3\62\3\62\3\62\3\62\3\62\3\63\3\63\3\63")
        buf.write("\3\64\3\64\3\64\3\64\3\64\3\65\3\65\3\65\3\65\3\65\3\65")
        buf.write("\3\65\3\65\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\66\3\67")
        buf.write("\3\67\3\67\3\67\3\67\3\67\3\67\38\38\38\38\39\39\39\3")
        buf.write("9\3:\3:\3:\3;\3;\3;\3;\3<\3<\3<\3<\3=\3=\3>\3>\3?\3?\3")
        buf.write("@\3@\3A\3A\3A\3B\3B\3C\3C\3D\3D\3E\3E\3E\3F\3F\3F\3G\3")
        buf.write("G\3H\3H\3I\3I\3I\3J\3J\3K\3K\3L\3L\3M\3M\3N\3N\3O\6O\u01da")
        buf.write("\nO\rO\16O\u01db\3P\3P\5P\u01e0\nP\3P\6P\u01e3\nP\rP\16")
        buf.write("P\u01e4\3Q\3Q\6Q\u01e9\nQ\rQ\16Q\u01ea\3R\6R\u01ee\nR")
        buf.write("\rR\16R\u01ef\3R\3R\6R\u01f4\nR\rR\16R\u01f5\3R\3R\7R")
        buf.write("\u01fa\nR\fR\16R\u01fd\13R\3R\5R\u0200\nR\3R\3R\5R\u0204")
        buf.write("\nR\5R\u0206\nR\3S\3S\3S\3T\3T\3T\7T\u020e\nT\fT\16T\u0211")
        buf.write("\13T\3T\3T\3T\3U\3U\3U\3V\3V\7V\u021b\nV\fV\16V\u021e")
        buf.write("\13V\3W\6W\u0221\nW\rW\16W\u0222\3W\3W\3X\3X\3X\7X\u022a")
        buf.write("\nX\fX\16X\u022d\13X\3X\3X\3Y\3Y\3Y\7Y\u0234\nY\fY\16")
        buf.write("Y\u0237\13Y\3Y\3Y\5Y\u023b\nY\3Y\3Y\3Z\3Z\3Z\4\u00bb\u00c7")
        buf.write("\2[\3\3\5\4\7\5\t\2\13\2\r\2\17\2\21\2\23\2\25\2\27\2")
        buf.write("\31\2\33\2\35\2\37\2!\2#\2%\2\'\2)\2+\2-\2/\2\61\2\63")
        buf.write("\2\65\2\67\29\2;\2=\6?\7A\bC\tE\nG\13I\fK\rM\16O\17Q\20")
        buf.write("S\21U\22W\23Y\24[\25]\26_\27a\30c\31e\32g\33i\34k\35m")
        buf.write("\36o\37q s!u\"w#y${%}&\177\'\u0081(\u0083)\u0085*\u0087")
        buf.write("+\u0089,\u008b-\u008d.\u008f/\u0091\60\u0093\61\u0095")
        buf.write("\62\u0097\63\u0099\64\u009b\65\u009d\66\u009f\2\u00a1")
        buf.write("\2\u00a3\67\u00a5\2\u00a78\u00a99\u00ab:\u00ad;\u00af")
        buf.write("<\u00b1=\u00b3>\3\2$\4\2\f\f\17\17\4\2CCcc\4\2DDdd\4\2")
        buf.write("EEee\4\2FFff\4\2GGgg\4\2HHhh\4\2IIii\4\2JJjj\4\2KKkk\4")
        buf.write("\2LLll\4\2MMmm\4\2NNnn\4\2OOoo\4\2PPpp\4\2QQqq\4\2RRr")
        buf.write("r\4\2SSss\4\2TTtt\4\2UUuu\4\2VVvv\4\2WWww\4\2XXxx\4\2")
        buf.write("YYyy\4\2ZZzz\4\2[[{{\4\2\\\\||\3\2\62;\n\2$$))^^ddhhp")
        buf.write("pttvv\7\2\n\f\16\17$$))^^\5\2C\\aac|\6\2\62;C\\aac|\5")
        buf.write("\2\n\f\16\17\"\"\7\2ddhhppttvv\2\u023a\2\3\3\2\2\2\2\5")
        buf.write("\3\2\2\2\2\7\3\2\2\2\2=\3\2\2\2\2?\3\2\2\2\2A\3\2\2\2")
        buf.write("\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2\2\2I\3\2\2\2\2K\3\2\2")
        buf.write("\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\2U\3\2")
        buf.write("\2\2\2W\3\2\2\2\2Y\3\2\2\2\2[\3\2\2\2\2]\3\2\2\2\2_\3")
        buf.write("\2\2\2\2a\3\2\2\2\2c\3\2\2\2\2e\3\2\2\2\2g\3\2\2\2\2i")
        buf.write("\3\2\2\2\2k\3\2\2\2\2m\3\2\2\2\2o\3\2\2\2\2q\3\2\2\2\2")
        buf.write("s\3\2\2\2\2u\3\2\2\2\2w\3\2\2\2\2y\3\2\2\2\2{\3\2\2\2")
        buf.write("\2}\3\2\2\2\2\177\3\2\2\2\2\u0081\3\2\2\2\2\u0083\3\2")
        buf.write("\2\2\2\u0085\3\2\2\2\2\u0087\3\2\2\2\2\u0089\3\2\2\2\2")
        buf.write("\u008b\3\2\2\2\2\u008d\3\2\2\2\2\u008f\3\2\2\2\2\u0091")
        buf.write("\3\2\2\2\2\u0093\3\2\2\2\2\u0095\3\2\2\2\2\u0097\3\2\2")
        buf.write("\2\2\u0099\3\2\2\2\2\u009b\3\2\2\2\2\u009d\3\2\2\2\2\u00a3")
        buf.write("\3\2\2\2\2\u00a7\3\2\2\2\2\u00a9\3\2\2\2\2\u00ab\3\2\2")
        buf.write("\2\2\u00ad\3\2\2\2\2\u00af\3\2\2\2\2\u00b1\3\2\2\2\2\u00b3")
        buf.write("\3\2\2\2\3\u00b5\3\2\2\2\5\u00c3\3\2\2\2\7\u00ce\3\2\2")
        buf.write("\2\t\u00d9\3\2\2\2\13\u00db\3\2\2\2\r\u00dd\3\2\2\2\17")
        buf.write("\u00df\3\2\2\2\21\u00e1\3\2\2\2\23\u00e3\3\2\2\2\25\u00e5")
        buf.write("\3\2\2\2\27\u00e7\3\2\2\2\31\u00e9\3\2\2\2\33\u00eb\3")
        buf.write("\2\2\2\35\u00ed\3\2\2\2\37\u00ef\3\2\2\2!\u00f1\3\2\2")
        buf.write("\2#\u00f3\3\2\2\2%\u00f5\3\2\2\2\'\u00f7\3\2\2\2)\u00f9")
        buf.write("\3\2\2\2+\u00fb\3\2\2\2-\u00fd\3\2\2\2/\u00ff\3\2\2\2")
        buf.write("\61\u0101\3\2\2\2\63\u0103\3\2\2\2\65\u0105\3\2\2\2\67")
        buf.write("\u0107\3\2\2\29\u0109\3\2\2\2;\u010b\3\2\2\2=\u010d\3")
        buf.write("\2\2\2?\u0113\3\2\2\2A\u011c\3\2\2\2C\u0120\3\2\2\2E\u0123")
        buf.write("\3\2\2\2G\u012a\3\2\2\2I\u012d\3\2\2\2K\u0130\3\2\2\2")
        buf.write("M\u0135\3\2\2\2O\u013a\3\2\2\2Q\u0141\3\2\2\2S\u0147\3")
        buf.write("\2\2\2U\u014d\3\2\2\2W\u0151\3\2\2\2Y\u0156\3\2\2\2[\u015f")
        buf.write("\3\2\2\2]\u0169\3\2\2\2_\u016d\3\2\2\2a\u0172\3\2\2\2")
        buf.write("c\u0178\3\2\2\2e\u017e\3\2\2\2g\u0181\3\2\2\2i\u0186\3")
        buf.write("\2\2\2k\u018e\3\2\2\2m\u0196\3\2\2\2o\u019d\3\2\2\2q\u01a1")
        buf.write("\3\2\2\2s\u01a5\3\2\2\2u\u01a8\3\2\2\2w\u01ac\3\2\2\2")
        buf.write("y\u01b0\3\2\2\2{\u01b2\3\2\2\2}\u01b4\3\2\2\2\177\u01b6")
        buf.write("\3\2\2\2\u0081\u01b8\3\2\2\2\u0083\u01bb\3\2\2\2\u0085")
        buf.write("\u01bd\3\2\2\2\u0087\u01bf\3\2\2\2\u0089\u01c1\3\2\2\2")
        buf.write("\u008b\u01c4\3\2\2\2\u008d\u01c7\3\2\2\2\u008f\u01c9\3")
        buf.write("\2\2\2\u0091\u01cb\3\2\2\2\u0093\u01ce\3\2\2\2\u0095\u01d0")
        buf.write("\3\2\2\2\u0097\u01d2\3\2\2\2\u0099\u01d4\3\2\2\2\u009b")
        buf.write("\u01d6\3\2\2\2\u009d\u01d9\3\2\2\2\u009f\u01dd\3\2\2\2")
        buf.write("\u00a1\u01e6\3\2\2\2\u00a3\u0205\3\2\2\2\u00a5\u0207\3")
        buf.write("\2\2\2\u00a7\u020a\3\2\2\2\u00a9\u0215\3\2\2\2\u00ab\u0218")
        buf.write("\3\2\2\2\u00ad\u0220\3\2\2\2\u00af\u0226\3\2\2\2\u00b1")
        buf.write("\u0230\3\2\2\2\u00b3\u023e\3\2\2\2\u00b5\u00b6\7*\2\2")
        buf.write("\u00b6\u00b7\7,\2\2\u00b7\u00bb\3\2\2\2\u00b8\u00ba\13")
        buf.write("\2\2\2\u00b9\u00b8\3\2\2\2\u00ba\u00bd\3\2\2\2\u00bb\u00bc")
        buf.write("\3\2\2\2\u00bb\u00b9\3\2\2\2\u00bc\u00be\3\2\2\2\u00bd")
        buf.write("\u00bb\3\2\2\2\u00be\u00bf\7,\2\2\u00bf\u00c0\7+\2\2\u00c0")
        buf.write("\u00c1\3\2\2\2\u00c1\u00c2\b\2\2\2\u00c2\4\3\2\2\2\u00c3")
        buf.write("\u00c7\7}\2\2\u00c4\u00c6\13\2\2\2\u00c5\u00c4\3\2\2\2")
        buf.write("\u00c6\u00c9\3\2\2\2\u00c7\u00c8\3\2\2\2\u00c7\u00c5\3")
        buf.write("\2\2\2\u00c8\u00ca\3\2\2\2\u00c9\u00c7\3\2\2\2\u00ca\u00cb")
        buf.write("\7\177\2\2\u00cb\u00cc\3\2\2\2\u00cc\u00cd\b\3\2\2\u00cd")
        buf.write("\6\3\2\2\2\u00ce\u00cf\7\61\2\2\u00cf\u00d0\7\61\2\2\u00d0")
        buf.write("\u00d4\3\2\2\2\u00d1\u00d3\n\2\2\2\u00d2\u00d1\3\2\2\2")
        buf.write("\u00d3\u00d6\3\2\2\2\u00d4\u00d2\3\2\2\2\u00d4\u00d5\3")
        buf.write("\2\2\2\u00d5\u00d7\3\2\2\2\u00d6\u00d4\3\2\2\2\u00d7\u00d8")
        buf.write("\b\4\2\2\u00d8\b\3\2\2\2\u00d9\u00da\t\3\2\2\u00da\n\3")
        buf.write("\2\2\2\u00db\u00dc\t\4\2\2\u00dc\f\3\2\2\2\u00dd\u00de")
        buf.write("\t\5\2\2\u00de\16\3\2\2\2\u00df\u00e0\t\6\2\2\u00e0\20")
        buf.write("\3\2\2\2\u00e1\u00e2\t\7\2\2\u00e2\22\3\2\2\2\u00e3\u00e4")
        buf.write("\t\b\2\2\u00e4\24\3\2\2\2\u00e5\u00e6\t\t\2\2\u00e6\26")
        buf.write("\3\2\2\2\u00e7\u00e8\t\n\2\2\u00e8\30\3\2\2\2\u00e9\u00ea")
        buf.write("\t\13\2\2\u00ea\32\3\2\2\2\u00eb\u00ec\t\f\2\2\u00ec\34")
        buf.write("\3\2\2\2\u00ed\u00ee\t\r\2\2\u00ee\36\3\2\2\2\u00ef\u00f0")
        buf.write("\t\16\2\2\u00f0 \3\2\2\2\u00f1\u00f2\t\17\2\2\u00f2\"")
        buf.write("\3\2\2\2\u00f3\u00f4\t\20\2\2\u00f4$\3\2\2\2\u00f5\u00f6")
        buf.write("\t\21\2\2\u00f6&\3\2\2\2\u00f7\u00f8\t\22\2\2\u00f8(\3")
        buf.write("\2\2\2\u00f9\u00fa\t\23\2\2\u00fa*\3\2\2\2\u00fb\u00fc")
        buf.write("\t\24\2\2\u00fc,\3\2\2\2\u00fd\u00fe\t\25\2\2\u00fe.\3")
        buf.write("\2\2\2\u00ff\u0100\t\26\2\2\u0100\60\3\2\2\2\u0101\u0102")
        buf.write("\t\27\2\2\u0102\62\3\2\2\2\u0103\u0104\t\30\2\2\u0104")
        buf.write("\64\3\2\2\2\u0105\u0106\t\31\2\2\u0106\66\3\2\2\2\u0107")
        buf.write("\u0108\t\32\2\2\u01088\3\2\2\2\u0109\u010a\t\33\2\2\u010a")
        buf.write(":\3\2\2\2\u010b\u010c\t\34\2\2\u010c<\3\2\2\2\u010d\u010e")
        buf.write("\5\13\6\2\u010e\u010f\5+\26\2\u010f\u0110\5\21\t\2\u0110")
        buf.write("\u0111\5\t\5\2\u0111\u0112\5\35\17\2\u0112>\3\2\2\2\u0113")
        buf.write("\u0114\5\r\7\2\u0114\u0115\5%\23\2\u0115\u0116\5#\22\2")
        buf.write("\u0116\u0117\5/\30\2\u0117\u0118\5\31\r\2\u0118\u0119")
        buf.write("\5#\22\2\u0119\u011a\5\61\31\2\u011a\u011b\5\21\t\2\u011b")
        buf.write("@\3\2\2\2\u011c\u011d\5\23\n\2\u011d\u011e\5%\23\2\u011e")
        buf.write("\u011f\5+\26\2\u011fB\3\2\2\2\u0120\u0121\5/\30\2\u0121")
        buf.write("\u0122\5%\23\2\u0122D\3\2\2\2\u0123\u0124\5\17\b\2\u0124")
        buf.write("\u0125\5%\23\2\u0125\u0126\5\65\33\2\u0126\u0127\5#\22")
        buf.write("\2\u0127\u0128\5/\30\2\u0128\u0129\5%\23\2\u0129F\3\2")
        buf.write("\2\2\u012a\u012b\5\17\b\2\u012b\u012c\5%\23\2\u012cH\3")
        buf.write("\2\2\2\u012d\u012e\5\31\r\2\u012e\u012f\5\23\n\2\u012f")
        buf.write("J\3\2\2\2\u0130\u0131\5/\30\2\u0131\u0132\5\27\f\2\u0132")
        buf.write("\u0133\5\21\t\2\u0133\u0134\5#\22\2\u0134L\3\2\2\2\u0135")
        buf.write("\u0136\5\21\t\2\u0136\u0137\5\37\20\2\u0137\u0138\5-\27")
        buf.write("\2\u0138\u0139\5\21\t\2\u0139N\3\2\2\2\u013a\u013b\5+")
        buf.write("\26\2\u013b\u013c\5\21\t\2\u013c\u013d\5/\30\2\u013d\u013e")
        buf.write("\5\61\31\2\u013e\u013f\5+\26\2\u013f\u0140\5#\22\2\u0140")
        buf.write("P\3\2\2\2\u0141\u0142\5\65\33\2\u0142\u0143\5\27\f\2\u0143")
        buf.write("\u0144\5\31\r\2\u0144\u0145\5\37\20\2\u0145\u0146\5\21")
        buf.write("\t\2\u0146R\3\2\2\2\u0147\u0148\5\13\6\2\u0148\u0149\5")
        buf.write("\21\t\2\u0149\u014a\5\25\13\2\u014a\u014b\5\31\r\2\u014b")
        buf.write("\u014c\5#\22\2\u014cT\3\2\2\2\u014d\u014e\5\21\t\2\u014e")
        buf.write("\u014f\5#\22\2\u014f\u0150\5\17\b\2\u0150V\3\2\2\2\u0151")
        buf.write("\u0152\5\65\33\2\u0152\u0153\5\31\r\2\u0153\u0154\5/\30")
        buf.write("\2\u0154\u0155\5\27\f\2\u0155X\3\2\2\2\u0156\u0157\5\23")
        buf.write("\n\2\u0157\u0158\5\61\31\2\u0158\u0159\5#\22\2\u0159\u015a")
        buf.write("\5\r\7\2\u015a\u015b\5/\30\2\u015b\u015c\5\31\r\2\u015c")
        buf.write("\u015d\5%\23\2\u015d\u015e\5#\22\2\u015eZ\3\2\2\2\u015f")
        buf.write("\u0160\5\'\24\2\u0160\u0161\5+\26\2\u0161\u0162\5%\23")
        buf.write("\2\u0162\u0163\5\r\7\2\u0163\u0164\5\21\t\2\u0164\u0165")
        buf.write("\5\17\b\2\u0165\u0166\5\61\31\2\u0166\u0167\5+\26\2\u0167")
        buf.write("\u0168\5\21\t\2\u0168\\\3\2\2\2\u0169\u016a\5\63\32\2")
        buf.write("\u016a\u016b\5\t\5\2\u016b\u016c\5+\26\2\u016c^\3\2\2")
        buf.write("\2\u016d\u016e\5/\30\2\u016e\u016f\5+\26\2\u016f\u0170")
        buf.write("\5\61\31\2\u0170\u0171\5\21\t\2\u0171`\3\2\2\2\u0172\u0173")
        buf.write("\5\23\n\2\u0173\u0174\5\t\5\2\u0174\u0175\5\37\20\2\u0175")
        buf.write("\u0176\5-\27\2\u0176\u0177\5\21\t\2\u0177b\3\2\2\2\u0178")
        buf.write("\u0179\5\t\5\2\u0179\u017a\5+\26\2\u017a\u017b\5+\26\2")
        buf.write("\u017b\u017c\5\t\5\2\u017c\u017d\59\35\2\u017dd\3\2\2")
        buf.write("\2\u017e\u017f\5%\23\2\u017f\u0180\5\23\n\2\u0180f\3\2")
        buf.write("\2\2\u0181\u0182\5+\26\2\u0182\u0183\5\21\t\2\u0183\u0184")
        buf.write("\5\t\5\2\u0184\u0185\5\37\20\2\u0185h\3\2\2\2\u0186\u0187")
        buf.write("\5\13\6\2\u0187\u0188\5%\23\2\u0188\u0189\5%\23\2\u0189")
        buf.write("\u018a\5\37\20\2\u018a\u018b\5\21\t\2\u018b\u018c\5\t")
        buf.write("\5\2\u018c\u018d\5#\22\2\u018dj\3\2\2\2\u018e\u018f\5")
        buf.write("\31\r\2\u018f\u0190\5#\22\2\u0190\u0191\5/\30\2\u0191")
        buf.write("\u0192\5\21\t\2\u0192\u0193\5\25\13\2\u0193\u0194\5\21")
        buf.write("\t\2\u0194\u0195\5+\26\2\u0195l\3\2\2\2\u0196\u0197\5")
        buf.write("-\27\2\u0197\u0198\5/\30\2\u0198\u0199\5+\26\2\u0199\u019a")
        buf.write("\5\31\r\2\u019a\u019b\5#\22\2\u019b\u019c\5\25\13\2\u019c")
        buf.write("n\3\2\2\2\u019d\u019e\5#\22\2\u019e\u019f\5%\23\2\u019f")
        buf.write("\u01a0\5/\30\2\u01a0p\3\2\2\2\u01a1\u01a2\5\t\5\2\u01a2")
        buf.write("\u01a3\5#\22\2\u01a3\u01a4\5\17\b\2\u01a4r\3\2\2\2\u01a5")
        buf.write("\u01a6\5%\23\2\u01a6\u01a7\5+\26\2\u01a7t\3\2\2\2\u01a8")
        buf.write("\u01a9\5\17\b\2\u01a9\u01aa\5\31\r\2\u01aa\u01ab\5\63")
        buf.write("\32\2\u01abv\3\2\2\2\u01ac\u01ad\5!\21\2\u01ad\u01ae\5")
        buf.write("%\23\2\u01ae\u01af\5\17\b\2\u01afx\3\2\2\2\u01b0\u01b1")
        buf.write("\7-\2\2\u01b1z\3\2\2\2\u01b2\u01b3\7/\2\2\u01b3|\3\2\2")
        buf.write("\2\u01b4\u01b5\7,\2\2\u01b5~\3\2\2\2\u01b6\u01b7\7\61")
        buf.write("\2\2\u01b7\u0080\3\2\2\2\u01b8\u01b9\7>\2\2\u01b9\u01ba")
        buf.write("\7@\2\2\u01ba\u0082\3\2\2\2\u01bb\u01bc\7?\2\2\u01bc\u0084")
        buf.write("\3\2\2\2\u01bd\u01be\7>\2\2\u01be\u0086\3\2\2\2\u01bf")
        buf.write("\u01c0\7@\2\2\u01c0\u0088\3\2\2\2\u01c1\u01c2\7>\2\2\u01c2")
        buf.write("\u01c3\7?\2\2\u01c3\u008a\3\2\2\2\u01c4\u01c5\7@\2\2\u01c5")
        buf.write("\u01c6\7?\2\2\u01c6\u008c\3\2\2\2\u01c7\u01c8\7]\2\2\u01c8")
        buf.write("\u008e\3\2\2\2\u01c9\u01ca\7_\2\2\u01ca\u0090\3\2\2\2")
        buf.write("\u01cb\u01cc\7\60\2\2\u01cc\u01cd\7\60\2\2\u01cd\u0092")
        buf.write("\3\2\2\2\u01ce\u01cf\7.\2\2\u01cf\u0094\3\2\2\2\u01d0")
        buf.write("\u01d1\7<\2\2\u01d1\u0096\3\2\2\2\u01d2\u01d3\7=\2\2\u01d3")
        buf.write("\u0098\3\2\2\2\u01d4\u01d5\7*\2\2\u01d5\u009a\3\2\2\2")
        buf.write("\u01d6\u01d7\7+\2\2\u01d7\u009c\3\2\2\2\u01d8\u01da\t")
        buf.write("\35\2\2\u01d9\u01d8\3\2\2\2\u01da\u01db\3\2\2\2\u01db")
        buf.write("\u01d9\3\2\2\2\u01db\u01dc\3\2\2\2\u01dc\u009e\3\2\2\2")
        buf.write("\u01dd\u01df\t\7\2\2\u01de\u01e0\7/\2\2\u01df\u01de\3")
        buf.write("\2\2\2\u01df\u01e0\3\2\2\2\u01e0\u01e2\3\2\2\2\u01e1\u01e3")
        buf.write("\t\35\2\2\u01e2\u01e1\3\2\2\2\u01e3\u01e4\3\2\2\2\u01e4")
        buf.write("\u01e2\3\2\2\2\u01e4\u01e5\3\2\2\2\u01e5\u00a0\3\2\2\2")
        buf.write("\u01e6\u01e8\7\60\2\2\u01e7\u01e9\t\35\2\2\u01e8\u01e7")
        buf.write("\3\2\2\2\u01e9\u01ea\3\2\2\2\u01ea\u01e8\3\2\2\2\u01ea")
        buf.write("\u01eb\3\2\2\2\u01eb\u00a2\3\2\2\2\u01ec\u01ee\t\35\2")
        buf.write("\2\u01ed\u01ec\3\2\2\2\u01ee\u01ef\3\2\2\2\u01ef\u01ed")
        buf.write("\3\2\2\2\u01ef\u01f0\3\2\2\2\u01f0\u01f1\3\2\2\2\u01f1")
        buf.write("\u0206\5\u009fP\2\u01f2\u01f4\t\35\2\2\u01f3\u01f2\3\2")
        buf.write("\2\2\u01f4\u01f5\3\2\2\2\u01f5\u01f3\3\2\2\2\u01f5\u01f6")
        buf.write("\3\2\2\2\u01f6\u01f7\3\2\2\2\u01f7\u01fb\7\60\2\2\u01f8")
        buf.write("\u01fa\t\35\2\2\u01f9\u01f8\3\2\2\2\u01fa\u01fd\3\2\2")
        buf.write("\2\u01fb\u01f9\3\2\2\2\u01fb\u01fc\3\2\2\2\u01fc\u01ff")
        buf.write("\3\2\2\2\u01fd\u01fb\3\2\2\2\u01fe\u0200\5\u009fP\2\u01ff")
        buf.write("\u01fe\3\2\2\2\u01ff\u0200\3\2\2\2\u0200\u0206\3\2\2\2")
        buf.write("\u0201\u0203\5\u00a1Q\2\u0202\u0204\5\u009fP\2\u0203\u0202")
        buf.write("\3\2\2\2\u0203\u0204\3\2\2\2\u0204\u0206\3\2\2\2\u0205")
        buf.write("\u01ed\3\2\2\2\u0205\u01f3\3\2\2\2\u0205\u0201\3\2\2\2")
        buf.write("\u0206\u00a4\3\2\2\2\u0207\u0208\7^\2\2\u0208\u0209\t")
        buf.write("\36\2\2\u0209\u00a6\3\2\2\2\u020a\u020f\7$\2\2\u020b\u020e")
        buf.write("\5\u00a5S\2\u020c\u020e\n\37\2\2\u020d\u020b\3\2\2\2\u020d")
        buf.write("\u020c\3\2\2\2\u020e\u0211\3\2\2\2\u020f\u020d\3\2\2\2")
        buf.write("\u020f\u0210\3\2\2\2\u0210\u0212\3\2\2\2\u0211\u020f\3")
        buf.write("\2\2\2\u0212\u0213\7$\2\2\u0213\u0214\bT\3\2\u0214\u00a8")
        buf.write("\3\2\2\2\u0215\u0216\7<\2\2\u0216\u0217\7?\2\2\u0217\u00aa")
        buf.write("\3\2\2\2\u0218\u021c\t \2\2\u0219\u021b\t!\2\2\u021a\u0219")
        buf.write("\3\2\2\2\u021b\u021e\3\2\2\2\u021c\u021a\3\2\2\2\u021c")
        buf.write("\u021d\3\2\2\2\u021d\u00ac\3\2\2\2\u021e\u021c\3\2\2\2")
        buf.write("\u021f\u0221\t\"\2\2\u0220\u021f\3\2\2\2\u0221\u0222\3")
        buf.write("\2\2\2\u0222\u0220\3\2\2\2\u0222\u0223\3\2\2\2\u0223\u0224")
        buf.write("\3\2\2\2\u0224\u0225\bW\2\2\u0225\u00ae\3\2\2\2\u0226")
        buf.write("\u022b\7$\2\2\u0227\u022a\5\u00a5S\2\u0228\u022a\n\37")
        buf.write("\2\2\u0229\u0227\3\2\2\2\u0229\u0228\3\2\2\2\u022a\u022d")
        buf.write("\3\2\2\2\u022b\u0229\3\2\2\2\u022b\u022c\3\2\2\2\u022c")
        buf.write("\u022e\3\2\2\2\u022d\u022b\3\2\2\2\u022e\u022f\bX\4\2")
        buf.write("\u022f\u00b0\3\2\2\2\u0230\u0235\7$\2\2\u0231\u0234\5")
        buf.write("\u00a5S\2\u0232\u0234\n\37\2\2\u0233\u0231\3\2\2\2\u0233")
        buf.write("\u0232\3\2\2\2\u0234\u0237\3\2\2\2\u0235\u0233\3\2\2\2")
        buf.write("\u0235\u0236\3\2\2\2\u0236\u0238\3\2\2\2\u0237\u0235\3")
        buf.write("\2\2\2\u0238\u023a\7^\2\2\u0239\u023b\n#\2\2\u023a\u0239")
        buf.write("\3\2\2\2\u023a\u023b\3\2\2\2\u023b\u023c\3\2\2\2\u023c")
        buf.write("\u023d\bY\5\2\u023d\u00b2\3\2\2\2\u023e\u023f\13\2\2\2")
        buf.write("\u023f\u0240\bZ\6\2\u0240\u00b4\3\2\2\2\31\2\u00bb\u00c7")
        buf.write("\u00d4\u01db\u01df\u01e4\u01ea\u01ef\u01f5\u01fb\u01ff")
        buf.write("\u0203\u0205\u020d\u020f\u021c\u0222\u0229\u022b\u0233")
        buf.write("\u0235\u023a\7\b\2\2\3T\2\3X\3\3Y\4\3Z\5")
        return buf.getvalue()


class MPLexer(Lexer):

    atn = ATNDeserializer().deserialize(serializedATN())

    decisionsToDFA = [ DFA(ds, i) for i, ds in enumerate(atn.decisionToState) ]

    TRADICOMMENT = 1
    BLOCKCOMMENT = 2
    LINECOMMENT = 3
    BREAK = 4
    CONTINUE = 5
    FOR = 6
    TO = 7
    DOWNTO = 8
    DO = 9
    IF = 10
    THEN = 11
    ELSE = 12
    RETURN = 13
    WHILE = 14
    BEGIN = 15
    END = 16
    WITH = 17
    FUNCTION = 18
    PROCEDURE = 19
    VAR = 20
    TRUE = 21
    FALSE = 22
    ARRAY = 23
    OF = 24
    REAL = 25
    BOOLEAN = 26
    INTEGER = 27
    STRING = 28
    NOT = 29
    AND = 30
    OR = 31
    DIV = 32
    MOD = 33
    ADD = 34
    SUB = 35
    MUL = 36
    DIVREAL = 37
    NEQ = 38
    EQ = 39
    LT = 40
    GT = 41
    LTE = 42
    GTE = 43
    LSQ = 44
    RSQ = 45
    DD = 46
    CM = 47
    CL = 48
    SM = 49
    LB = 50
    RB = 51
    INTLIT = 52
    REALLIT = 53
    STRINGLIT = 54
    ASSIGN = 55
    IDEN = 56
    RC = 57
    UNCLOSE_STRING = 58
    ILLEGAL_ESCAPE = 59
    ERROR_CHAR = 60

    channelNames = [ u"DEFAULT_TOKEN_CHANNEL", u"HIDDEN" ]

    modeNames = [ "DEFAULT_MODE" ]

    literalNames = [ "<INVALID>",
            "'+'", "'-'", "'*'", "'/'", "'<>'", "'='", "'<'", "'>'", "'<='", 
            "'>='", "'['", "']'", "'..'", "','", "':'", "';'", "'('", "')'", 
            "':='" ]

    symbolicNames = [ "<INVALID>",
            "TRADICOMMENT", "BLOCKCOMMENT", "LINECOMMENT", "BREAK", "CONTINUE", 
            "FOR", "TO", "DOWNTO", "DO", "IF", "THEN", "ELSE", "RETURN", 
            "WHILE", "BEGIN", "END", "WITH", "FUNCTION", "PROCEDURE", "VAR", 
            "TRUE", "FALSE", "ARRAY", "OF", "REAL", "BOOLEAN", "INTEGER", 
            "STRING", "NOT", "AND", "OR", "DIV", "MOD", "ADD", "SUB", "MUL", 
            "DIVREAL", "NEQ", "EQ", "LT", "GT", "LTE", "GTE", "LSQ", "RSQ", 
            "DD", "CM", "CL", "SM", "LB", "RB", "INTLIT", "REALLIT", "STRINGLIT", 
            "ASSIGN", "IDEN", "RC", "UNCLOSE_STRING", "ILLEGAL_ESCAPE", 
            "ERROR_CHAR" ]

    ruleNames = [ "TRADICOMMENT", "BLOCKCOMMENT", "LINECOMMENT", "A", "B", 
                  "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", 
                  "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", 
                  "Y", "Z", "BREAK", "CONTINUE", "FOR", "TO", "DOWNTO", 
                  "DO", "IF", "THEN", "ELSE", "RETURN", "WHILE", "BEGIN", 
                  "END", "WITH", "FUNCTION", "PROCEDURE", "VAR", "TRUE", 
                  "FALSE", "ARRAY", "OF", "REAL", "BOOLEAN", "INTEGER", 
                  "STRING", "NOT", "AND", "OR", "DIV", "MOD", "ADD", "SUB", 
                  "MUL", "DIVREAL", "NEQ", "EQ", "LT", "GT", "LTE", "GTE", 
                  "LSQ", "RSQ", "DD", "CM", "CL", "SM", "LB", "RB", "INTLIT", 
                  "Expo", "Dec_point", "REALLIT", "ESC", "STRINGLIT", "ASSIGN", 
                  "IDEN", "RC", "UNCLOSE_STRING", "ILLEGAL_ESCAPE", "ERROR_CHAR" ]

    grammarFileName = "MP.g4"

    def __init__(self, input=None, output:TextIO = sys.stdout):
        super().__init__(input, output)
        self.checkVersion("4.7.1")
        self._interp = LexerATNSimulator(self, self.atn, self.decisionsToDFA, PredictionContextCache())
        self._actions = None
        self._predicates = None


    def action(self, localctx:RuleContext, ruleIndex:int, actionIndex:int):
        if self._actions is None:
            actions = dict()
            actions[82] = self.STRINGLIT_action 
            actions[86] = self.UNCLOSE_STRING_action 
            actions[87] = self.ILLEGAL_ESCAPE_action 
            actions[88] = self.ERROR_CHAR_action 
            self._actions = actions
        action = self._actions.get(ruleIndex, None)
        if action is not None:
            action(localctx, actionIndex)
        else:
            raise Exception("No registered action for:" + str(ruleIndex))

    def STRINGLIT_action(self, localctx:RuleContext , actionIndex:int):
        if actionIndex == 0:
             self.text = self.text[1:-1] 
     

    def UNCLOSE_STRING_action(self, localctx:RuleContext , actionIndex:int):
        if actionIndex == 1:
            raise UncloseString(self.text[1:])
     

    def ILLEGAL_ESCAPE_action(self, localctx:RuleContext , actionIndex:int):
        if actionIndex == 2:
            raise IllegalEscape(self.text[1:])
     

    def ERROR_CHAR_action(self, localctx:RuleContext , actionIndex:int):
        if actionIndex == 3:
             raise ErrorToken(self.text) 
     


