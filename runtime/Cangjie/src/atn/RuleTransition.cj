package atn


public class RuleTransition <: Transition {

    public let ruleIndex: Int32 = 0
    
    public let precedence: Int32 = 0
    
    public var followState: ATNState = ATNState()
    
    public init (ruleStart: RuleStartState, ruleIndex: Int32, followState: ATNState){

    }

    public init (ruleStart: RuleStartState, ruleIndex: Int32, precedence: Int32, followState: ATNState){

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

    public init() {}
}


