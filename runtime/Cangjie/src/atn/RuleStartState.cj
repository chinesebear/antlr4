package default


public class RuleStartState <: ATNState {

    public var stopState: RuleStopState = RuleStopState()
    
    public var isLeftRecursiveRule: Bool = true
    
    public func getStateType (): Int32 {
  //    return RULE_START;

        return 0
    }

    public init() {}
}


