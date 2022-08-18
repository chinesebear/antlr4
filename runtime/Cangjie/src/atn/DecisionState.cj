package atn


public abstract class DecisionState <: ATNState {

    public var decision: Int32 = -1
    
    public var nonGreedy: Bool = true
    
    public init() {}
}


