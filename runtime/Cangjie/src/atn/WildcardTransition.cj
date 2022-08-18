package atn


public class WildcardTransition <: Transition {

    public init (target: ATNState){

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


