package default

// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.atn.ATNState;
// import org.antlr.v4.runtime.atn.RuleTransition;
from std import collection.*
// import org.antlr.v4.runtime.misc.Pair;

open public class DefaultErrorStrategy <: ANTLRErrorStrategy {

    protected var errorRecoveryMode: Bool = true
    
    protected var lastErrorIndex: Int32 = -1
    
    protected var lastErrorStates: IntervalSet = IntervalSet()
    
    protected var nextTokensContext: ParserRuleContext = ParserRuleContext()
    
    protected var nextTokensState: Int32 = 0
    
    public open func reset (recognizer: Parser): Unit {
        
    }

    protected open func beginErrorCondition (recognizer: Parser): Unit {
        
    }

    public open func inErrorRecoveryMode (recognizer: Parser): Bool {
        return true
    }

    protected open func endErrorCondition (recognizer: Parser): Unit {
        
    }

    public open func reportMatch (recognizer: Parser): Unit {
        
    }

    public open func reportError (recognizer: Parser, e: RecognitionException): Unit {
        
    }

    public open func recover (recognizer: Parser, e: RecognitionException): Unit {
        
    }

    public open func sync (recognizer: Parser): Unit {
        
    }

    protected open func reportNoViableAlternative (recognizer: Parser, e: NoViableAltException): Unit {
        
    }

    protected open func reportInputMismatch (recognizer: Parser, e: InputMismatchException): Unit {
        
    }

    protected open func reportFailedPredicate (recognizer: Parser, e: FailedPredicateException): Unit {
        
    }

    protected open func reportUnwantedToken (recognizer: Parser): Unit {
        
    }

    protected open func reportMissingToken (recognizer: Parser): Unit {
        
    }

    public open func recoverInline (recognizer: Parser): Token {
        return Token()
    }

    protected open func singleTokenInsertion (recognizer: Parser): Bool {
        return true
    }

    protected open func singleTokenDeletion (recognizer: Parser): Token {
        return Token()
    }

    protected open func getMissingSymbol (recognizer: Parser): Token {
        return Token()
    }

    protected open func getExpectedTokens (recognizer: Parser): IntervalSet {
        return IntervalSet()
    }

    protected open func getTokenErrorDisplay (t: Token): String {
        return ""
    }

    protected open func getSymbolText (symbol: Token): String {
        return ""
    }

    protected open func getSymbolType (symbol: Token): Int32 {
        return 0
    }

    protected open func escapeWSAndQuote (s: String): String {
        return ""
    }

    protected open func getErrorRecoverySet (recognizer: Parser): IntervalSet {
        return IntervalSet()
    }

    protected open func consumeUntil (recognizer: Parser, set: IntervalSet): Unit {
        
    }

    public init() {}
}


