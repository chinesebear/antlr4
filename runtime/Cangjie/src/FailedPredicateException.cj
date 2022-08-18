package default

// import org.antlr.v4.runtime.atn.ATNState;
// import org.antlr.v4.runtime.atn.AbstractPredicateTransition;
// import org.antlr.v4.runtime.atn.PredicateTransition;
// import java.util.Locale;

open public class FailedPredicateException <: RecognitionException {

    private let ruleIndex: Int32 = 0
    
    private let predicateIndex: Int32 = 0
    
    private let predicate: String = ""
    
    public init (recognizer: Parser){

    }

    public init (recognizer: Parser, predicate: String){

    }

    public init (recognizer: Parser, predicate: String, message: String){

    }

    public open func getRuleIndex (): Int32 {
        return 0
    }

    public open func getPredIndex (): Int32 {
        return 0
    }

    public open func getPredicate (): String {
        return ""
    }

    private static func formatMessage (predicate: String, message: String): String {
        return ""
    }

    public init() {}
}


