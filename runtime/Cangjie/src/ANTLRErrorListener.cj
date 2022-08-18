package default

from std import collection.*
// import org.antlr.v4.runtime.atn.DecisionInfo;
// import org.antlr.v4.runtime.atn.ParserATNSimulator;
// import org.antlr.v4.runtime.atn.PredictionMode;
// import org.antlr.v4.runtime.dfa.DFA;

public interface ANTLRErrorListener {

    func syntaxError (recognizer: Recognizer<T, T>, offendingSymbol: Object, line: Int32, charPositionInLine: Int32, msg: String, e: RecognitionException): Unit 

    func reportAmbiguity (recognizer: Option<Parser>, dfa: DFA, startIndex: Int32, stopIndex: Int32, exact: Bool, ambigAlts: BitSet, configs: ATNConfigSet): Unit 

    func reportAttemptingFullContext (recognizer: Option<Parser>, dfa: DFA, startIndex: Int32, stopIndex: Int32, conflictingAlts: BitSet, configs: ATNConfigSet): Unit 

    func reportContextSensitivity (recognizer: Option<Parser>, dfa: DFA, startIndex: Int32, stopIndex: Int32, prediction: Int32, configs: ATNConfigSet): Unit 

}


