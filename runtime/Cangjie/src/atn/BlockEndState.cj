package atn


public class BlockEndState <: ATNState {

    public var startState: BlockStartState = BlockStartState()
    
    public override func getStateType (): Int32 {
        return 0
    }

    public init() {}
}


