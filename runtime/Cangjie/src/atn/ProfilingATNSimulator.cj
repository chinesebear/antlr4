package atn

// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.TokenStream;
// import org.antlr.v4.runtime.dfa.DFA;
// import org.antlr.v4.runtime.dfa.DFAState;
from std import collection.*

open public class ProfilingATNSimulator <: ParserATNSimulator {

    protected let decisions: Array<DecisionInfo> = Array<DecisionInfo>()
    
    protected var numDecisions: Int32 = 0
    
    protected var sllStopIndex: Int32 = 0
    
    protected var llStopIndex: Int32 = 0
    
    protected var currentDecision: Int32 = 0
    
    protected var currentState: DFAState = DFAState()
    
    protected var conflictingAltResolvedBySLL: Int32 = 0
    
    public init (parser: Parser){

    }

    public open override func adaptivePredict (input: TokenStream, decision: Int32, outerContext: ParserRuleContext): Int32 {
        return 0
    }

    protected open override func getExistingTargetState (previousD: DFAState, t: Int32): DFAState {
        return DFAState()
    }

    protected open override func computeTargetState (dfa: DFA, previousD: DFAState, t: Int32): DFAState {
        return DFAState()
    }

    protected open override func computeReachSet (closure: ATNConfigSet, t: Int32, fullCtx: Bool): ATNConfigSet {
        return ATNConfigSet()
    }

    protected open override func evalSemanticContext (pred: SemanticContext, parserCallStack: ParserRuleContext, alt: Int32, fullCtx: Bool): Bool {
        return true
    }

    protected open override func reportAttemptingFullContext (dfa: DFA, conflictingAlts: BitSet, configs: ATNConfigSet, startIndex: Int32, stopIndex: Int32): Unit {
        
    }

    protected open override func reportContextSensitivity (dfa: DFA, prediction: Int32, configs: ATNConfigSet, startIndex: Int32, stopIndex: Int32): Unit {
        
    }

    protected open override func reportAmbiguity (dfa: DFA, D: DFAState, startIndex: Int32, stopIndex: Int32, exact: Bool, ambigAlts: BitSet, configs: ATNConfigSet): Unit {
        
    }

    public open func getDecisionInfo (): Array<DecisionInfo> {
        return Array<DecisionInfo>()
    }

    public open func getCurrentState (): DFAState {
        return DFAState()
    }

    public init() {}
}


