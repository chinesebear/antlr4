package default


public class PlusBlockStartState <: BlockStartState {

    public var loopBackState: PlusLoopbackState = PlusLoopbackState()
    
    public func getStateType (): Int32 {
  //    return PLUS_BLOCK_START;

        return 0
    }

    public init() {}
}


