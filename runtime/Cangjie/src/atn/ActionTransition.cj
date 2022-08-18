package default


public class ActionTransition <: Transition {

    public let ruleIndex: Int32 = 0
    
    public let actionIndex: Int32 = 0
    
    public let isCtxDependent: Bool = true
    
    public init (target: Option<ATNState>, ruleIndex: Int32){

    }

    public init (target: Option<ATNState>, ruleIndex: Int32, actionIndex: Int32, isCtxDependent: Bool){

    }

    public func getSerializationType (): Int32 {
  //    return ACTION;

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

    public func toString (): String {
  //    return "action_" + ruleIndex + ":" + actionIndex;

        return ""
    }

    public init() {}
}


