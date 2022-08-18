package atn


public class RuleStartState <: ATNState {

    public var stopState: RuleStopState = RuleStopState()
    
    public var isLeftRecursiveRule: Bool = true
    
    public override func getStateType (): Int32 {
        return 0
    }

    public init() {}
}


