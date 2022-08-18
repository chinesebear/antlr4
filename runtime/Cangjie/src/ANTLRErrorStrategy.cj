package default

// import org.antlr.v4.runtime.tree.ErrorNode;

public interface ANTLRErrorStrategy {

    func reset (recognizer: Option<Parser>): Unit 

    func recoverInline (recognizer: Option<Parser>): Option<Token> 

    func recover (recognizer: Option<Parser>, e: RecognitionException): Unit 

    func sync (recognizer: Option<Parser>): Unit 

    func inErrorRecoveryMode (recognizer: Option<Parser>): Bool 

    func reportMatch (recognizer: Option<Parser>): Unit 

    func reportError (recognizer: Option<Parser>, e: RecognitionException): Unit 

}


