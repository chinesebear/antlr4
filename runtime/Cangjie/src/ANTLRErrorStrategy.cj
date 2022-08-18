package default

// import org.antlr.v4.runtime.tree.ErrorNode;

public interface ANTLRErrorStrategy {

    func reset (recognizer: Parser): Unit 

    func recoverInline (recognizer: Parser): Token 

    func recover (recognizer: Parser, e: RecognitionException): Unit 

    func sync (recognizer: Parser): Unit 

    func inErrorRecoveryMode (recognizer: Parser): Bool 

    func reportMatch (recognizer: Parser): Unit 

    func reportError (recognizer: Parser, e: RecognitionException): Unit 

}


