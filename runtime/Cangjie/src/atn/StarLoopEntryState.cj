package default

// import org.antlr.v4.runtime.ParserInterpreter;
// import org.antlr.v4.runtime.dfa.DFA;

public class StarLoopEntryState <: DecisionState {

    public var loopBackState: StarLoopbackState = StarLoopbackState()
    
    public var isPrecedenceDecision: Bool = true
    
    public func getStateType (): Int32 {
  //    return STAR_LOOP_ENTRY;

        return 0
    }

    public init() {}
}


