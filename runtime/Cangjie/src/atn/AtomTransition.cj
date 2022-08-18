package atn

from std import collection.*

public class AtomTransition <: Transition {

    public let label: Int32 = 0
    
    public init (target: ATNState, label: Int32){

    }

    public override func getSerializationType (): Int32 {
        return 0
    }

    public override func labelFunc (): IntervalSet {
        return IntervalSet()
    }

    public override func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool {
        return true
    }

    public override func toString (): String {
        return ""
    }

    public init() {}
}


