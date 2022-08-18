package atn


public abstract class BlockStartState <: DecisionState {

    public var endState: BlockEndState = BlockEndState()
    
    public init() {}
}


