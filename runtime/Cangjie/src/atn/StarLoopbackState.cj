package default


public class StarLoopbackState <: ATNState {

    public func getLoopEntryState (): StarLoopEntryState {
  //    return (StarLoopEntryState)transition(0).target;

        return StarLoopEntryState()
    }

    public func getStateType (): Int32 {
  //    return STAR_LOOP_BACK;

        return 0
    }

    public init() {}
}


