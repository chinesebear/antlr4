package default


public class LoopEndState <: ATNState {

    public var loopBackState: Option<ATNState> = Option<ATNState>.None
    
    public func getStateType (): Int32 {
  //    return LOOP_END;

        return 0
    }

    public init() {}
}


