package default


public class PredicateTransition <: AbstractPredicateTransition {

    public let ruleIndex: Int32 = 0
    
    public let predIndex: Int32 = 0
    
    public let isCtxDependent: Bool = true
    
    public init (target: Option<ATNState>, ruleIndex: Int32, predIndex: Int32, isCtxDependent: Bool){

    }

    public func getSerializationType (): Int32 {
  //    return PREDICATE;

        return 0
    }

    public func isEpsilon (): Bool {
  //    return true;

        return true
    }

    public func matches (symbol: Int32, minVocabSymbol: Int32, maxVocabSymbol: Int32): Bool {
  //    return false;

        return true
    }

    public func getPredicate (): SemanticContextPredicate {
  //    return new Option<SemanticContext>.SemanticContextPredicate(ruleIndex, predIndex, isCtxDependent);

        return SemanticContextPredicate()
    }

    public func toString (): String {
  //    return "pred_" + ruleIndex + ":" + predIndex;

        return ""
    }

    public init() {}
}


