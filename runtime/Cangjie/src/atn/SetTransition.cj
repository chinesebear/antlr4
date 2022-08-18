package atn

// import org.antlr.v4.runtime.Token;
from std import collection.*

open public class SetTransition <: Transition {

    public let set: IntervalSet = IntervalSet()
    
    public init (target: ATNState, set: IntervalSet){

    }

    public open override func getSerializationType (): Int32 {
        return 0
    }

    public open override func labelFunc (): IntervalSet {
        return IntervalSet()
    }

    public open override func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool {
        return true
    }

    public open override func toString (): String {
        return ""
    }

    public init() {}
}


