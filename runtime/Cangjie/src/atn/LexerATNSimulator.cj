package atn

// import org.antlr.v4.runtime.CharStream;
// import org.antlr.v4.runtime.IntStream;
// import org.antlr.v4.runtime.Lexer;
// import org.antlr.v4.runtime.LexerNoViableAltException;
// import org.antlr.v4.runtime.Token;
// import org.antlr.v4.runtime.dfa.DFA;
// import org.antlr.v4.runtime.dfa.DFAState;
// import org.antlr.v4.runtime.misc.Interval;
// import java.util.Locale;

open public class LexerATNSimulator <: ATNSimulator {

    public static let debug: Bool = true
    
    public static let dfa_debug: Bool = true
    
    public static let MIN_DFA_EDGE: Int32 = 0
    
    public static let MAX_DFA_EDGE: Int32 = 127
    
    protected let recog: Lexer = Lexer()
    
    protected var startIndex: Int32 = -1
    
    protected var line: Int32 = 1
    
    protected var charPositionInLine: Int32 = 0
    
    public let decisionToDFA: Array<DFA> = Array<DFA>()
    
    protected var mode: Int32 = 0
    
    protected let prevAccept: SimState = SimState()
    
    public open func copyState (simulator: LexerATNSimulator): Unit {
        
    }

    public open func `match` (input: CharStream, mode: Int32): Int32 {
        return 0
    }

    public open func reset (): Unit {
        
    }

    public open func clearDFA (): Unit {
        
    }

    protected open func matchATN (input: CharStream): Int32 {
        return 0
    }

    protected open func execATN (input: CharStream, ds0: DFAState): Int32 {
        return 0
    }

    protected open func getExistingTargetState (s: DFAState, t: Int32): DFAState {
        return DFAState()
    }

    protected open func computeTargetState (input: CharStream, s: DFAState, t: Int32): DFAState {
        return DFAState()
    }

    protected open func failOrAccept (prevAccept: SimState, input: CharStream, reach: ATNConfigSet, t: Int32): Int32 {
        return 0
    }

    protected open func getReachableConfigSet (input: CharStream, closure: ATNConfigSet, reach: ATNConfigSet, t: Int32): Unit {
        
    }

    protected open func accept (input: CharStream, lexerActionExecutor: LexerActionExecutor, startIndex: Int32, index: Int32, line: Int32, charPos: Int32): Unit {
        
    }

    protected open func getReachableTarget (trans: Transition, t: Int32): ATNState {
        return ATNState()
    }

    protected open func computeStartState (input: CharStream, p: ATNState): ATNConfigSet {
        return ATNConfigSet()
    }

    protected open func closure (input: CharStream, config: LexerATNConfig, configs: ATNConfigSet, currentAltReachedAcceptState: Bool, speculative: Bool, treatEofAsEpsilon: Bool): Bool {
        return true
    }

    protected open func getEpsilonTarget (input: CharStream, config: LexerATNConfig, t: Transition, configs: ATNConfigSet, speculative: Bool, treatEofAsEpsilon: Bool): LexerATNConfig {
        return LexerATNConfig()
    }

    protected open func evaluatePredicate (input: CharStream, ruleIndex: Int32, predIndex: Int32, speculative: Bool): Bool {
        return true
    }

    protected open func captureSimState (settings: SimState, input: CharStream, dfaState: DFAState): Unit {
        
    }

    protected open func addDFAEdge (`from`: DFAState, t: Int32, q: ATNConfigSet): DFAState {
        return DFAState()
    }

    protected open func addDFAEdge (p: DFAState, t: Int32, q: DFAState): Unit {
        
    }

    protected open func addDFAState (configs: ATNConfigSet): DFAState {
        return DFAState()
    }

    public open func getDFA (mode: Int32): DFA {
        return DFA()
    }

    public open func getText (input: CharStream): String {
        return ""
    }

    public open func getLine (): Int32 {
        return 0
    }

    public open func setLine (line: Int32): Unit {
        
    }

    public open func getCharPositionInLine (): Int32 {
        return 0
    }

    public open func setCharPositionInLine (charPositionInLine: Int32): Unit {
        
    }

    public open func consume (input: CharStream): Unit {
        
    }

    public open func getTokenName (t: Int32): String {
        return ""
    }

    public init() {}
}

class LexerATNSimulatorSimState {
    var class_out: LexerATNSimulator
    public init(out: LexerATNSimulator) {
        class_out = out
    }
    public init() {
        class_out = LexerATNSimulator()
    }
    protected var index: Int32 = -1
    
    protected var line: Int32 = 0
    
    protected var charPos: Int32 = -1
    
    protected var dfaState: DFAState = DFAState()
    
    protected func reset (): Unit {
        
    }

}



