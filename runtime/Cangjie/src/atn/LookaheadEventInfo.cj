package atn

// import org.antlr.v4.runtime.TokenStream;

open public class LookaheadEventInfo <: DecisionEventInfo {

    public var predictedAlt: Int32 = 0
    
    public init (decision: Int32, configs: ATNConfigSet, predictedAlt: Int32, input: TokenStream, startIndex: Int32, stopIndex: Int32, fullCtx: Bool){

    }

    public init() {}
}


