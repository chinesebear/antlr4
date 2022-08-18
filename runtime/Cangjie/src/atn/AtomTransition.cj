package default

from std import collection.*

public class AtomTransition <: Transition {

    public let label: Int32 = 0
    
    public init (target: Option<ATNState>, label: Int32){

    }

    public func getSerializationType (): Int32 {
  //    return ATOM;

        return 0
    }

    public override func labelFunc (): IntervalSet {
  //    return IntervalSet.of(label);

        return IntervalSet()
    }

    public func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool {
  //    return label == symbol;

        return true
    }

    public func toString (): String {
  //    return String.valueOf(label);

        return ""
    }

    public init() {}
}


