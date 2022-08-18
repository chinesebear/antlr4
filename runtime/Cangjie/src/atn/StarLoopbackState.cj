package atn


public class StarLoopbackState <: ATNState {

    public func getLoopEntryState (): StarLoopEntryState {
        return StarLoopEntryState()
    }

    public override func getStateType (): Int32 {
        return 0
    }

    public init() {}
}


