package default

// import org.antlr.v4.runtime.Token;
from std import collection.*

open public class SetTransition <: Transition {

    public let set: IntervalSet = IntervalSet()
    
    public init (target: Option<ATNState>, set: IntervalSet){

    }

    public open func getSerializationType (): Int32 {
  //    return SET;

        return 0
    }

    public open override func labelFunc (): IntervalSet {
  //    return set;

        return IntervalSet()
    }

    public open func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool {
  //    return set.contains(symbol);

        return true
    }

    public open func toString (): String {
  //    return set.toString();

        return ""
    }

    public init() {}
}


