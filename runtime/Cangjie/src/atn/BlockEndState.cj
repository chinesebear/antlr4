package default


public class BlockEndState <: ATNState {

    public var startState: Option<BlockStartState> = Option<BlockStartState>.None
    
    public func getStateType (): Int32 {
  //    return BLOCK_END;

        return 0
    }

    public init() {}
}


