package atn


public class EpsilonTransition <: Transition {

    private let outermostPrecedenceReturn: Int32 = 0
    
    public init (target: ATNState){

    }

    public init (target: ATNState, outermostPrecedenceReturn: Int32){

    }

    public func outermostPrecedenceReturnFunc (): Int32 {
        return 0
    }

    public override func getSerializationType (): Int32 {
        return 0
    }

    public override func isEpsilon (): Bool {
        return true
    }

    public override func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool {
        return true
    }

    public override func toString (): String {
        return ""
    }

    public init() {}
}


