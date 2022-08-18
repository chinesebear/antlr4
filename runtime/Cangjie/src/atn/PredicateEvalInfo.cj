package atn

// import org.antlr.v4.runtime.ParserRuleContext;
// import org.antlr.v4.runtime.Recognizer;
// import org.antlr.v4.runtime.RuleContext;
// import org.antlr.v4.runtime.TokenStream;

open public class PredicateEvalInfo <: DecisionEventInfo {

    public let semctx: SemanticContext = SemanticContext()
    
    public let predictedAlt: Int32 = 0
    
    public let evalResult: Bool = true
    
    public init (decision: Int32, input: TokenStream, startIndex: Int32, stopIndex: Int32, semctx: SemanticContext, evalResult: Bool, predictedAlt: Int32, fullCtx: Bool){

    }

    public init() {}
}


