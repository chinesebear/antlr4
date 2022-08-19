package default

from std import collection.*
// import org.antlr.v4.runtime.dfa.DFA;
// import java.util.Collection;

open public class ProxyErrorListener <: ANTLRErrorListener {

    private let delegates: Collection<Option<ANTLRErrorListener>> = Collection<Option<ANTLRErrorListener>>()
    
    public init (delegates: Collection<Option<ANTLRErrorListener>>){

    }

    public open func syntaxError (recognizer: Recognizer<T, T>, offendingSymbol: Object, line: Int32, charPositionInLine: Int32, msg: String, e: RecognitionException): Unit {
  //    for (ANTLRErrorListener listener : delegates) {
  //        listener.syntaxError(recognizer, offendingSymbol, line, charPositionInLine, msg, e);

        
    }

    public open func reportAmbiguity (recognizer: Option<Parser>, dfa: DFA, startIndex: Int32, stopIndex: Int32, exact: Bool, ambigAlts: BitSet, configs: ATNConfigSet): Unit {
  //    for (ANTLRErrorListener listener : delegates) {
  //        listener.reportAmbiguity(recognizer, dfa, startIndex, stopIndex, exact, ambigAlts, configs);

        
    }

    public open func reportAttemptingFullContext (recognizer: Option<Parser>, dfa: DFA, startIndex: Int32, stopIndex: Int32, conflictingAlts: BitSet, configs: ATNConfigSet): Unit {
  //    for (ANTLRErrorListener listener : delegates) {
  //        listener.reportAttemptingFullContext(recognizer, dfa, startIndex, stopIndex, conflictingAlts, configs);

        
    }

    public open func reportContextSensitivity (recognizer: Option<Parser>, dfa: DFA, startIndex: Int32, stopIndex: Int32, prediction: Int32, configs: ATNConfigSet): Unit {
  //    for (ANTLRErrorListener listener : delegates) {
  //        listener.reportContextSensitivity(recognizer, dfa, startIndex, stopIndex, prediction, configs);

        
    }

    public init() {}
}


