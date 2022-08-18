package default

// import org.antlr.v4.runtime.misc.ParseCancellationException;

open public class BailErrorStrategy <: DefaultErrorStrategy {

    public open override func recover (recognizer: Parser, e: RecognitionException): Unit {
        
    }

    public open override func recoverInline (recognizer: Parser): Token {
        return Token()
    }

    public open override func sync (recognizer: Parser): Unit {
        
    }

    public init() {}
}


