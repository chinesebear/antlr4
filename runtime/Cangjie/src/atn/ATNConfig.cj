package atn

// import org.antlr.v4.runtime.Recognizer;
// import org.antlr.v4.runtime.misc.MurmurHash;

open public class ATNConfig {

    private static let SUPPRESS_PRECEDENCE_FILTER: Int32 = 1073741824
    
    public let state: ATNState = ATNState()
    
    public let alt: Int32 = 0
    
    public var context: PredictionContext = PredictionContext()
    
    public var reachesIntoOuterContext: Int32 = 0
    
    public let semanticContext: SemanticContext = SemanticContext()
    
    public init (old: ATNConfig){

    }

    public init (state: ATNState, alt: Int32, context: PredictionContext){

    }

    public init (state: ATNState, alt: Int32, context: PredictionContext, semanticContext: SemanticContext){

    }

    public init (c: ATNConfig, state: ATNState){

    }

    public init (c: ATNConfig, state: ATNState, semanticContext: SemanticContext){

    }

    public init (c: ATNConfig, semanticContext: SemanticContext){

    }

    public init (c: ATNConfig, state: ATNState, context: PredictionContext){

    }

    public init (c: ATNConfig, state: ATNState, context: PredictionContext, semanticContext: SemanticContext){

    }

    public open func getOuterContextDepth (): Int32 {
        return 0
    }

    public open func isPrecedenceFilterSuppressed (): Bool {
        return true
    }

    public open func setPrecedenceFilterSuppressed (value: Bool): Unit {
        
    }

    public open func equals (o: Object): Bool {
        return true
    }

    public open func equals (other: ATNConfig): Bool {
        return true
    }

    public open func hashCode (): Int32 {
        return 0
    }

    public open func toString (): String {
        return ""
    }

    public open func toString (recog: Recognizer<T, T>, showAlt: Bool): String {
        return ""
    }

    public init() {}
}


