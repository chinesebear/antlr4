package dfa

// import org.antlr.v4.runtime.Parser;
// import org.antlr.v4.runtime.Vocabulary;
// import org.antlr.v4.runtime.VocabularyImpl;
from std import collection.*
import atn.*
// import org.antlr.v4.runtime.atn.DecisionState;
// import org.antlr.v4.runtime.atn.StarLoopEntryState;
// import java.util.Collections;
// import java.util.Comparator;

open public class DFA {

    public let states: Map<DFAState, DFAState> = Map<DFAState, DFAState>()
    
    public var s0: DFAState = DFAState()
    
    public let decision: Int32 = 0
    
    public let atnStartState: DecisionState = DecisionState()
    
    private let precedenceDfa: Bool = true
    
    public init (atnStartState: DecisionState){

    }

    public init (atnStartState: DecisionState, decision: Int32){

    }

    public open func isPrecedenceDfa (): Bool {
        return true
    }

    public open func getPrecedenceStartState (precedence: Int32): DFAState {
        return DFAState()
    }

    public open func setPrecedenceStartState (precedence: Int32, startState: DFAState): Unit {
        
    }

    public open func setPrecedenceDfa (precedenceDfa: Bool): Unit {
        
    }

    public open func getStates (): List<DFAState> {
        return List<DFAState>()
    }

    public open func toString (): String {
        return ""
    }

    public open func toString (tokenNames: Array<String>): String {
        return ""
    }

    public open func toString (vocabulary: Vocabulary): String {
        return ""
    }

    public open func toLexerString (): String {
        return ""
    }

    public init() {}
}


