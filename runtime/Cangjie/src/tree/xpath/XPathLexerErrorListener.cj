package tree.xpath

from std import collection.*
import atn.*
// import org.antlr.v4.runtime.RecognitionException;
// import org.antlr.v4.runtime.Recognizer;

open public class XPathLexerErrorListener <: BaseErrorListener {

    public open override func syntaxError (recognizer: Recognizer<T, T>, offendingSymbol: Object, line: Int32, charPositionInLine: Int32, msg: String, e: RecognitionException): Unit {
        
    }

    public init() {}
}


