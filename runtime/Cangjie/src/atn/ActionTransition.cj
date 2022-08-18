package atn


public class ActionTransition <: Transition {

    public let ruleIndex: Int32 = 0
    
    public let actionIndex: Int32 = 0
    
    public let isCtxDependent: Bool = true
    
    public init (target: ATNState, ruleIndex: Int32){

    }

    public init (target: ATNState, ruleIndex: Int32, actionIndex: Int32, isCtxDependent: Bool){

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


