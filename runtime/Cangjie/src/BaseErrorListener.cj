package default

from std import collection.*
// import org.antlr.v4.runtime.dfa.DFA;

open public class BaseErrorListener <: ANTLRErrorListener {

    public open func syntaxError (recognizer: Recognizer<T, T>, offendingSymbol: Object, line: Int32, charPositionInLine: Int32, msg: String, e: RecognitionException): Unit {

        
    }

    public open func reportAmbiguity (recognizer: Option<Parser>, dfa: DFA, startIndex: Int32, stopIndex: Int32, exact: Bool, ambigAlts: BitSet, configs: ATNConfigSet): Unit {

        
    }

    public open func reportAttemptingFullContext (recognizer: Option<Parser>, dfa: DFA, startIndex: Int32, stopIndex: Int32, conflictingAlts: BitSet, configs: ATNConfigSet): Unit {

        
    }

    public open func reportContextSensitivity (recognizer: Option<Parser>, dfa: DFA, startIndex: Int32, stopIndex: Int32, prediction: Int32, configs: ATNConfigSet): Unit {

        
    }

    public init() {}
}


