package default

// import org.antlr.v4.runtime.misc.ParseCancellationException;

open public class BailErrorStrategy <: DefaultErrorStrategy {

    public open override func recover (recognizer: Option<Parser>, e: RecognitionException): Unit {
  //    for (ParserRuleContext context = recognizer.getContext(); context != null; context = context.getParent()) {
  //        context.exception = e;
  //    throw new ParseCancellationException(e);

        
    }

    public open override func recoverInline (recognizer: Option<Parser>): Option<Token> {
  //    InputMismatchException e = new InputMismatchException(recognizer);
  //    for (ParserRuleContext context = recognizer.getContext(); context != null; context = context.getParent()) {
  //        context.exception = e;
  //    throw new ParseCancellationException(e);

        return Option<Token>.None
    }

    public open override func sync (recognizer: Option<Parser>): Unit {

        
    }

    public init() {}
}


