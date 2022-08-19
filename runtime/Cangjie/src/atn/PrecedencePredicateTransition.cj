package default


public class PrecedencePredicateTransition <: AbstractPredicateTransition {

    public let precedence: Int32 = 0
    
    public init (target: Option<ATNState>, precedence: Int32){

    }

    public func getSerializationType (): Int32 {
  //    return PRECEDENCE;

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

    public func getPredicate (): SemanticContextPrecedencePredicate {
  //    return new Option<SemanticContext>.SemanticContextPrecedencePredicate(precedence);

        return SemanticContextPrecedencePredicate()
    }

    public func toString (): String {
  //    return precedence + " >= _p";

        return ""
    }

    public init() {}
}


