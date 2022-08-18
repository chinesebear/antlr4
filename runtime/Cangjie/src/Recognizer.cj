package default

// import org.antlr.v4.runtime.atn.ATN;
// import org.antlr.v4.runtime.atn.ATNSimulator;
// import org.antlr.v4.runtime.atn.ParseInfo;
// import org.antlr.v4.runtime.misc.Utils;
// import java.util.Collections;
from std import collection.*

public abstract class Recognizer<Symbol, ATNInterpreter> where ATNInterpreter<: ATNSimulator {

    public static let EOF: Int32 = -1
    
    private static let tokenTypeMapCache: Map<Vocabulary, Map<String, Integer>> = Map<Vocabulary, Map<String, Integer>>()
    
    private static let ruleIndexMapCache: Map<Array<String>, Map<String, Integer>> = Map<Array<String>, Map<String, Integer>>()
    
    private var listeners: List<ANTLRErrorListener> = List<ANTLRErrorListener>()
    
    protected var interp: ATNInterpreter = ATNInterpreter()
    
    private var stateNumber: Int32 = -1
    
    public func getTokenNames (): Array<String> 

    public func getRuleNames (): Array<String> 

    public func getVocabulary (): Vocabulary {
        return Vocabulary()
    }

    public func getTokenTypeMap (): Map<String, Integer> {
        return Map<String, Integer>()
    }

    public func getRuleIndexMap (): Map<String, Integer> {
        return Map<String, Integer>()
    }

    public func getTokenType (tokenName: String): Int32 {
        return 0
    }

    public func getSerializedATN (): String {
        return ""
    }

    public func getGrammarFileName (): String 

    public func getATN (): ATN 

    public func getInterpreter (): ATNInterpreter {
        return ATNInterpreter()
    }

    public func getParseInfo (): ParseInfo {
        return ParseInfo()
    }

    public func setInterpreter (interpreter: ATNInterpreter): Unit {
        
    }

    public func getErrorHeader (e: RecognitionException): String {
        return ""
    }

    public func getTokenErrorDisplay (t: Token): String {
        return ""
    }

    public func addErrorListener (listener: ANTLRErrorListener): Unit {
        
    }

    public func removeErrorListener (listener: ANTLRErrorListener): Unit {
        
    }

    public func removeErrorListeners (): Unit {
        
    }

    public func getErrorListeners (): List< ANTLRErrorListener> {
        return List< ANTLRErrorListener>()
    }

    public func getErrorListenerDispatch (): ANTLRErrorListener {
        return ANTLRErrorListener()
    }

    public func sempred (localctx: RuleContext, ruleIndex: Int32, actionIndex: Int32): Bool {
        return true
    }

    public func precpred (localctx: RuleContext, precedence: Int32): Bool {
        return true
    }

    public func actionFunc (localctx: RuleContext, ruleIndex: Int32, actionIndex: Int32): Unit {
        
    }

    public func getState (): Int32 {
        return 0
    }

    public func setState (atnState: Int32): Unit {
        
    }

    public func getInputStream (): IntStream 

    public func setInputStream (input: IntStream): Unit 

    public func getTokenFactory (): TokenFactory<T> 

    public func setTokenFactory (input: TokenFactory<T>): Unit 

    public init() {}
}


