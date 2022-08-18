package default

// import org.antlr.v4.runtime.atn.DecisionState;
from std import collection.*

open public class RecognitionException <: RuntimeException {

    private let recognizer: Recognizer<T, T> = Recognizer<T, T>()
    
    private let ctx: RuleContext = RuleContext()
    
    private let input: IntStream = IntStream()
    
    private var offendingToken: Token = Token()
    
    private var offendingState: Int32 = -1
    
    public init (recognizer: Recognizer<T, T>, input: IntStream, ctx: ParserRuleContext){

    }

    public init (message: String, recognizer: Recognizer<T, T>, input: IntStream, ctx: ParserRuleContext){

    }

    public open func getOffendingState (): Int32 {
        return 0
    }

    protected open func setOffendingState (offendingState: Int32): Unit {
        
    }

    public open func getExpectedTokens (): IntervalSet {
        return IntervalSet()
    }

    public open func getCtx (): RuleContext {
        return RuleContext()
    }

    public open func getInputStream (): IntStream {
        return IntStream()
    }

    public open func getOffendingToken (): Token {
        return Token()
    }

    protected open func setOffendingToken (offendingToken: Token): Unit {
        
    }

    public open func getRecognizer (): Recognizer<T, T> {
        return Recognizer<T, T>()
    }

    public init() {}
}


