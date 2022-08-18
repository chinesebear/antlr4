package atn

// import org.antlr.v4.runtime.TokenStream;

open public class DecisionEventInfo {

    public let decision: Int32 = 0
    
    public let configs: ATNConfigSet = ATNConfigSet()
    
    public let input: TokenStream = TokenStream()
    
    public let startIndex: Int32 = 0
    
    public let stopIndex: Int32 = 0
    
    public let fullCtx: Bool = true
    
    public init (decision: Int32, configs: ATNConfigSet, input: TokenStream, startIndex: Int32, stopIndex: Int32, fullCtx: Bool){

    }

    public init() {}
}


