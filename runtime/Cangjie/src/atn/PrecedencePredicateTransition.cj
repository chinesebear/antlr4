package atn


public class PrecedencePredicateTransition <: AbstractPredicateTransition {

    public let precedence: Int32 = 0
    
    public init (target: ATNState, precedence: Int32){

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

    public func getPredicate (): SemanticContextPrecedencePredicate {
        return SemanticContextPrecedencePredicate()
    }

    public override func toString (): String {
        return ""
    }

    public init() {}
}


