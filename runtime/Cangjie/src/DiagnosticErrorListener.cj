package default

// import org.antlr.v4.runtime.atn.ATNConfig;
from std import collection.*
// import org.antlr.v4.runtime.dfa.DFA;
// import org.antlr.v4.runtime.misc.Interval;

open public class DiagnosticErrorListener <: BaseErrorListener {

    protected let exactOnly: Bool = true
    
    public init (){

    }

    public init (exactOnly: Bool){

    }

    public open override func reportAmbiguity (recognizer: Parser, dfa: DFA, startIndex: Int32, stopIndex: Int32, exact: Bool, ambigAlts: BitSet, configs: ATNConfigSet): Unit {
        
    }

    public open override func reportAttemptingFullContext (recognizer: Parser, dfa: DFA, startIndex: Int32, stopIndex: Int32, conflictingAlts: BitSet, configs: ATNConfigSet): Unit {
        
    }

    public open override func reportContextSensitivity (recognizer: Parser, dfa: DFA, startIndex: Int32, stopIndex: Int32, prediction: Int32, configs: ATNConfigSet): Unit {
        
    }

    protected open func getDecisionDescription (recognizer: Parser, dfa: DFA): String {
        return ""
    }

    protected open func getConflictingAlts (reportedAlts: BitSet, configs: ATNConfigSet): BitSet {
        return BitSet()
    }

}


