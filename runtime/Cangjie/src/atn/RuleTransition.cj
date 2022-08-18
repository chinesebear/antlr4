package default


public class RuleTransition <: Transition {

    public let ruleIndex: Int32 = 0
    
    public let precedence: Int32 = 0
    
    public var followState: Option<ATNState> = Option<ATNState>.None
    
    public init (ruleStart: RuleStartState, ruleIndex: Int32, followState: Option<ATNState>){

    }

    public init (ruleStart: RuleStartState, ruleIndex: Int32, precedence: Int32, followState: Option<ATNState>){

    }

    public func getSerializationType (): Int32 {
  //    return RULE;

        return 0
    }

    public override func isEpsilon (): Bool {
  //    return true;

        return true
    }

    public func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool {
  //    return false;

        return true
    }

    public init() {}
}


