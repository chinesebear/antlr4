package atn


public class PlusBlockStartState <: BlockStartState {

    public var loopBackState: PlusLoopbackState = PlusLoopbackState()
    
    public override func getStateType (): Int32 {
        return 0
    }

    public init() {}
}


