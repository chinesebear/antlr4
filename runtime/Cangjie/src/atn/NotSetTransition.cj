package atn

from std import collection.*

public class NotSetTransition <: SetTransition {

    public init (target: ATNState, set: IntervalSet){

    }

    public override func getSerializationType (): Int32 {
        return 0
    }

    public override func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool {
        return true
    }

    public override func toString (): String {
        return ""
    }

    public init() {}
}


