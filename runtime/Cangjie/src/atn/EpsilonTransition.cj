package default


public class EpsilonTransition <: Transition {

    private let outermostPrecedenceReturn: Int32 = 0
    
    public init (target: Option<ATNState>){

    }

    public init (target: Option<ATNState>, outermostPrecedenceReturn: Int32){

    }

    public func outermostPrecedenceReturnFunc (): Int32 {
  //    return outermostPrecedenceReturn;

        return 0
    }

    public func getSerializationType (): Int32 {
  //    return EPSILON;

        return 0
    }

    public override func isEpsilon (): Bool {
  //    return true;

        return true
    }

    public func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool {
  //    return false;

        return true
    }

    public func toString (): String {
  //    return "epsilon";

        return ""
    }

    public init() {}
}


