package default

// import org.antlr.v4.runtime.atn.ATNState;
// import org.antlr.v4.runtime.atn.AbstractPredicateTransition;
// import org.antlr.v4.runtime.atn.PredicateTransition;
// import java.util.Locale;

open public class FailedPredicateException <: RecognitionException {

    private let ruleIndex: Int32 = 0
    
    private let predicateIndex: Int32 = 0
    
    private let predicate: String = ""
    
    public init (recognizer: Option<Parser>){

    }

    public init (recognizer: Option<Parser>, predicate: String){

    }

    public init (recognizer: Option<Parser>, predicate: String, message: String){

    }

    public open func getRuleIndex (): Int32 {
  //    return ruleIndex;

        return 0
    }

    public open func getPredIndex (): Int32 {
  //    return predicateIndex;

        return 0
    }

    public open func getPredicate (): String {
  //    return predicate;

        return ""
    }

    private static func formatMessage (predicate: String, message: String): String {
  //    if (message != null) {
  //        return message;
  //    return String.format(Locale.getDefault(), "failed predicate: {%s}?", predicate);

        return ""
    }

    public init() {}
}


