package atn


public class LoopEndState <: ATNState {

    public var loopBackState: ATNState = ATNState()
    
    public override func getStateType (): Int32 {
        return 0
    }

    public init() {}
}


