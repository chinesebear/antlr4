package default

// import org.antlr.v4.runtime.atn.DecisionState;
from std import collection.*

open public class RecognitionException <: RuntimeException {

    private let recognizer: Recognizer<T, T> = Recognizer<T, T>()
    
    private let ctx: RuleContext = RuleContext()
    
    private let input: Option<IntStream> = Option<IntStream>.None
    
    private var offendingToken: Option<Token> = Option<Token>.None
    
    private var offendingState: Int32 = -1
    
    public init (recognizer: Recognizer<T, T>, input: Option<IntStream>, ctx: ParserRuleContext){

    }

    public init (message: String, recognizer: Recognizer<T, T>, input: Option<IntStream>, ctx: ParserRuleContext){

    }

    public open func getOffendingState (): Int32 {
  //    return offendingState;

        return 0
    }

    protected open func setOffendingState (offendingState: Int32): Unit {
  //    this.offendingState = offendingState;

        
    }

    public open func getExpectedTokens (): IntervalSet {
  //    if (recognizer != null) {
  //        return recognizer.getATN().getExpectedTokens(offendingState, ctx);
  //    return null;

        return IntervalSet()
    }

    public open func getCtx (): RuleContext {
  //    return ctx;

        return RuleContext()
    }

    public open func getInputStream (): Option<IntStream> {
  //    return input;

        return Option<IntStream>.None
    }

    public open func getOffendingToken (): Option<Token> {
  //    return offendingToken;

        return Option<Token>.None
    }

    protected open func setOffendingToken (offendingToken: Option<Token>): Unit {
  //    this.offendingToken = offendingToken;

        
    }

    public open func getRecognizer (): Recognizer<T, T> {
  //    return recognizer;

        return Recognizer<T, T>()
    }

    public init() {}
}


