package atn

// import org.antlr.v4.runtime.misc.MurmurHash;
// import org.antlr.v4.runtime.misc.ObjectEqualityComparator;

open public class LexerATNConfig <: ATNConfig {

    private let lexerActionExecutor: LexerActionExecutor = LexerActionExecutor()
    
    private let passedThroughNonGreedyDecision: Bool = true
    
    public init (state: ATNState, alt: Int32, context: PredictionContext){

    }

    public init (state: ATNState, alt: Int32, context: PredictionContext, lexerActionExecutor: LexerActionExecutor){

    }

    public init (c: LexerATNConfig, state: ATNState){

    }

    public init (c: LexerATNConfig, state: ATNState, lexerActionExecutor: LexerActionExecutor){

    }

    public init (c: LexerATNConfig, state: ATNState, context: PredictionContext){

    }

    public open func getLexerActionExecutor (): LexerActionExecutor {
        return LexerActionExecutor()
    }

    public open func hasPassedThroughNonGreedyDecision (): Bool {
        return true
    }

    public open override func hashCode (): Int32 {
        return 0
    }

    public open override func equals (other: ATNConfig): Bool {
        return true
    }

    private static func checkNonGreedyDecision (source: LexerATNConfig, target: ATNState): Bool {
        return true
    }

    public init() {}
}


