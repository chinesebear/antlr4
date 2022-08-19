package default

from std import collection.*

public class RangeTransition <: Transition {

    public let `from`: Int32 = 0
    
    public let to: Int32 = 0
    
    public init (target: Option<ATNState>, `from`: Int32, to: Int32){

    }

    public func getSerializationType (): Int32 {
  //    return RANGE;

        return 0
    }

    public override func labelFunc (): IntervalSet {
  //    return IntervalSet.of(from, to);

        return IntervalSet()
    }

    public func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool {
  //    return symbol >= from && symbol <= to;

        return true
    }

    public func toString (): String {
  //    return new StringBuilder("\'").appendCodePoint(from).append("\'..\'").appendCodePoint(to).append("\'").toString();

        return ""
    }

    public init() {}
}


