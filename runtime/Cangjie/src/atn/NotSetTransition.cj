package default

from std import collection.*

public class NotSetTransition <: SetTransition {

    public init (target: Option<ATNState>, set: IntervalSet){

    }

    public override func getSerializationType (): Int32 {
  //    return NOT_SET;

        return 0
    }

    public override func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool {
  //    return symbol >= minVocabSymbol && symbol <= maxVocabSymbol && !super.matches(symbol, minVocabSymbol, maxVocabSymbol);

        return true
    }

    public override func toString (): String {
  //    return '~' + super.toString();

        return ""
    }

    public init() {}
}


