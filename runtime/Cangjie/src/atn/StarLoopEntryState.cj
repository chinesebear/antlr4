package atn

// import org.antlr.v4.runtime.ParserInterpreter;
// import org.antlr.v4.runtime.dfa.DFA;

public class StarLoopEntryState <: DecisionState {

    public var loopBackState: StarLoopbackState = StarLoopbackState()
    
    public var isPrecedenceDecision: Bool = true
    
    public override func getStateType (): Int32 {
        return 0
    }

    public init() {}
}


